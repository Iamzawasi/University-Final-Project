Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Partial Class vouchereprint
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Protected Sub pre_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles pre.Click
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        If TextBox1.Text = "" Then
            Label1.Text = "Enter Transaction or Batch ID"

        ElseIf vdrplist.SelectedValue = "12" Then
            da = New SqlDataAdapter("select cust_name, account.ac_id as ac_id, transactions.opr_id, trans_amount, curr_name, trans_desc, trans_date, exc_rate from withdrawal, customer, account, transactions, transfer, currency where transfer.with_id=Withdrawal.with_id and Withdrawal.trans_id=transactions.trans_id and transactions.ac_id=account.ac_id and account.curr_id=currency.curr_id and account.cust_id=customer.cust_id and trfd_id=" & TextBox1.Text.ToString, ccn)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Else
            da = New SqlDataAdapter("select cust_name, trans_desc, trans_date, trans_amount, fthousand, othousand, fhundred, ohundred, fifty, twenty, ten, five, two, one, cent, transactions.opr_id, denomination.curr_id, transactions.ac_id from customer, Account, transactions, denomination where customer.cust_id=account.cust_id and transactions.ac_id=account.ac_id and denomination.trans_id=transactions.trans_id and transactions.trans_id=" & TextBox1.Text, ccn)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        End If
    End Sub

    Protected Sub Print_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Print.Click

        If vdrplist.SelectedValue = 12 Then

            Response.Redirect("Tvoucher.aspx?transaction=" + TextBox1.Text, False)
        Else
            Response.Redirect("Voucher.aspx?transaction=" + TextBox1.Text, False)
        End If
    End Sub
End Class
