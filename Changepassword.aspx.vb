Imports System.Net.NetworkInformation
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Partial Class Changepassword
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
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
                    USERNAME.Text = dt.Rows(0).Item("opr_name")
                    usridtxt.Text = dt.Rows(0).Item("opr_id")

                End If
            ElseIf lout Is DBNull.Value = False Then
                Response.Redirect("Default.aspx", False)
            End If
        End If
    End Sub

    Protected Sub btnchngpas_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnchngpas.Click
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        If nwpwdtxtb.Text <> rnwpwdtxtb.Text Then

            notmatchlbl.Text = "Password Does Not Match"
        Else

            notmatchlbl.Text = ""


            da = New SqlDataAdapter("select opr_password from operator where opr_id=" & usridtxt.Text, ccn)
            dt = New DataTable
            da.Fill(dt)
            Dim compoldpwd, oldpss As String
            oldpss = oldpswdtxtb.Text '' first old password will be saved in a string variable then later it will compare with
            ' retrived password, if i compare old passwod textbox direct with compoldpwd then the result we alway wrong
            'becouase as soon as i press the change password button the textboxes will get empty
            If dt.Rows.Count > 0 Then
                compoldpwd = dt.Rows(0).Item("opr_password")
                '=====let check weather old passowrd is typed correct or not then we will change the password======
                If oldpss = compoldpwd Then
                    cmd = New SqlCommand("update operator set opr_password=" & "'" & rnwpwdtxtb.Text & "'" & "where opr_id=" & usridtxt.Text, ccn)
                    wronglblold.Text = "Password Changed Successful"
                    cmd.ExecuteNonQuery()
                Else
                    wronglblold.Text = "Old Password is Wrong "
                End If
            End If
        End If

    End Sub

    Protected Sub oldpswdtxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles oldpswdtxtb.TextChanged
        If oldpswdtxtb.Text <> "" Then
            wronglblold.Text = ""
        End If
    End Sub

    Protected Sub nwpwdtxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles nwpwdtxtb.TextChanged
        If nwpwdtxtb.Text = "" Then
            btnchngpas.Enabled = False
        Else
            btnchngpas.Enabled = True
        End If
    End Sub

    Protected Sub rnwpwdtxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles rnwpwdtxtb.TextChanged
       
    End Sub
End Class
