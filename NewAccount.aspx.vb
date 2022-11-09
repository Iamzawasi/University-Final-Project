Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Imports System.Net.NetworkInformation

Partial Class NewAccount
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function
    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cust_idtxtb.TextChanged
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If

            da = New SqlDataAdapter("select cust_name from customer where cust_id=" & cust_idtxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                accountnumberlbl.Text = ""
                acsavebtn.Enabled = True
                Custname.Text = dt.Rows(0).Item("cust_name")
            ElseIf cust_idtxtb.Text = "" Then
                accountnumberlbl.Text = ""
                Custname.Text = "Enter Customer ID"
                acsavebtn.Enabled = False
            Else
                accountnumberlbl.Text = ""
                Custname.Text = "Wrong Customer ID"
                acsavebtn.Enabled = False
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles acsavebtn.Click
        ''----------FOR CREATION OF ACCOUNT I WILL CODE HERE BELLOW------------------------------------------------------
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select ac_id from account where ac_id=" & drdlcurrencyselector.SelectedItem.Value + cust_idtxtb.Text, ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                Custname.Text = "Account Already Available"
            ElseIf dt.Rows.Count = 0 Then

                cmd = New SqlCommand
                accountnumberlbl.Text = drdlcurrencyselector.SelectedItem.Value + cust_idtxtb.Text
                Dim opendate As Date = Now
                With cmd.Parameters
                    cmd = New SqlCommand("insert into account(ac_id, open_date, ac_balance, ac_type, cust_id, curr_id, opr_id) Values(@ac_id, @open_date, @ac_balance, @ac_type, @cust_id, @curr_id, @opr_id)", ccn)
                    cmd.Parameters.AddWithValue("@ac_id", accountnumberlbl.Text)
                    cmd.Parameters.AddWithValue("@open_date", opendate)
                    cmd.Parameters.AddWithValue("@ac_balance", 0)
                    cmd.Parameters.AddWithValue("@ac_type", "Current_Account")
                    cmd.Parameters.AddWithValue("@cust_id", cust_idtxtb.Text)
                    cmd.Parameters.AddWithValue("@curr_id", drdlcurrencyselector.SelectedItem.Value)
                    cmd.Parameters.AddWithValue("@opr_id", oprid.Text)


                End With
                cmd.ExecuteNonQuery()
                Custname.Text = "Account Created "
            End If

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        If Request.QueryString("cust_id") > 0 Then
            cust_idtxtb.Text = Request.QueryString("cust_id")

            da = New SqlDataAdapter("select cust_name from customer where cust_id=" & cust_idtxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                accountnumberlbl.Text = ""
                acsavebtn.Enabled = True
                Custname.Text = dt.Rows(0).Item("cust_name")
            End If

        End If
        '==========================USER VALIDATION====================================

        Dim comparemac As String = getMacAddress()
        cmd = New SqlCommand("select max(logintime) as logintime from logindetails, operator where operator.opr_id=logindetails.opr_id and pc_mac =" & "'" & comparemac & "'", ccn)
        Dim mlgin As Object
        mlgin = cmd.ExecuteScalar()
        If mlgin Is DBNull.Value = True Then
            Response.Redirect("Default.aspx", False)
        ElseIf mlgin Is DBNull.Value = False Then
            Dim login As Date = mlgin
            cmd = New SqlCommand("select logouttime from logindetails, operator where operator.opr_id=logindetails.opr_id and logintime =" & "'" & mlgin & "'", ccn)
            Dim lout As Object
            lout = cmd.ExecuteScalar()
            If lout Is DBNull.Value = True Then

                da = New SqlDataAdapter("select opr_name, operator.opr_id  from logindetails, operator where operator.opr_id=logindetails.opr_id and logintime =" & "'" & mlgin & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    Operatorlbl.Text = dt.Rows(0).Item("opr_name")
                    oprid.Text = dt.Rows(0).Item("opr_id")

                End If
            ElseIf lout Is DBNull.Value = False Then
                Response.Redirect("Default.aspx", False)
            End If
        End If
    End Sub
End Class
