Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Partial Class Voucher
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim transactionid As Integer
            transactionid = Request.QueryString("transaction")
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select cust_name, trans_desc, trans_date, trans_amount, fthousand, othousand, fhundred, ohundred, fifty, twenty, ten, five, two, one, cent, transactions.opr_id, curr_name, transactions.ac_id from customer, Account, currency, transactions, denomination where denomination.curr_id=currency.curr_id and customer.cust_id=account.cust_id and transactions.ac_id=account.ac_id and denomination.trans_id=transactions.trans_id and transactions.trans_id=" & transactionid, ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then

                acnamelbl.Text = dt.Rows(0).Item("cust_name")
                acnolbl.Text = dt.Rows(0).Item("ac_id")
                transidlbl.Text = transactionid
                particularlbl.Text = dt.Rows(0).Item("trans_desc")
                transdatelbl.Text = dt.Rows(0).Item("trans_date")
                totalbl.Text = dt.Rows(0).Item("trans_amount")
                ftlbl.Text = dt.Rows(0).Item("fthousand")
                ontlbl.Text = dt.Rows(0).Item("othousand")
                fhlbl.Text = dt.Rows(0).Item("fhundred")
                ohlbl.Text = dt.Rows(0).Item("ohundred")
                flbl.Text = dt.Rows(0).Item("fifty")
                twlbl.Text = dt.Rows(0).Item("twenty")
                tlbl.Text = dt.Rows(0).Item("ten")
                fvlbl.Text = dt.Rows(0).Item("five")
                twolbl.Text = dt.Rows(0).Item("two")
                onlbl.Text = dt.Rows(0).Item("one")
                centlbl.Text = dt.Rows(0).Item("cent")
                currlbl.Text = dt.Rows(0).Item("curr_name")
                opridlbl.Text = dt.Rows(0).Item("opr_id")

            End If



            '  If UserNamelbl.Text = "" Then
            'Response.Redirect("Default.aspx", False)
            'End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub
End Class
