Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Partial Class Currentmonthstatment
    Inherits System.Web.UI.Page

    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable




    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles acntxtb.TextChanged
        Try
            
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If

            da = New SqlDataAdapter("select curr_id, cust_name,  telephone from account, address, customer where account.cust_id=customer.cust_id and customer.add_id=address.add_id and ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then
                Button1.Enabled = True
                achname.Text = dt.Rows(0).Item("cust_name")
                teleplbl.Text = dt.Rows(0).Item("telephone")

                currlbl.Text = dt.Rows(0).Item("curr_id")

                If currlbl.Text = 20 Then
                    currlbl.Text = "AFN"

                ElseIf currlbl.Text = 10 Then
                    currlbl.Text = "USD"
                ElseIf currlbl.Text = 30 Then
                    currlbl.Text = "PKR"
                ElseIf currlbl.Text = 40 Then
                    currlbl.Text = "EURO"

                End If

            Else

                acntxtb.Text = "Wrong Account # !!!"
                Button1.Enabled = False
                GridView1.Visible = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If

        da = New SqlDataAdapter("Select trans_id as Trans_ID, trans_date as Transaction_Date_Time, trans_desc as Particular, trans_type as Crdt_Debt, trans_amount as Amount, bal_af_trans As Total from transactions where  trans_date < DATEADD(month, +1, GETDATE()) and ac_id=" & acntxtb.Text.ToString(), ccn)
        dt = New DataTable
        da.Fill(dt)
        GridView1.DataSource = dt
        GridView1.DataBind()
        GridView1.Visible = True
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If

        da = New SqlDataAdapter("Select trans_id as Trans_ID, trans_date as Transaction_Date_Time, trans_desc as Particular, trans_type as Crdt_Debt, trans_amount as Amount, bal_af_trans As Total from transactions where  trans_date < DATEADD(month, +1, GETDATE()) and ac_id=" & acntxtb.Text.ToString(), ccn)
        dt = New DataTable
        da.Fill(dt)
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataSource = dt
        GridView1.DataBind()

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Print.Click
        Response.Redirect("StatementPrint.aspx?acno=" + acntxtb.Text, False)
    End Sub
End Class
