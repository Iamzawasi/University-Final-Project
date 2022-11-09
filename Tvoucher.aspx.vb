Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO

Partial Class Tvoucher
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            Dim batchid As Integer
            batchid = Request.QueryString("transaction")
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select cust_name, account.ac_id as ac_id, transactions.opr_id, trans_amount, curr_name, trans_desc, trans_date, exc_rate from withdrawal, customer, account, transactions, transfer, currency where transfer.with_id=Withdrawal.with_id and Withdrawal.trans_id=transactions.trans_id and transactions.ac_id=account.ac_id and account.curr_id=currency.curr_id and account.cust_id=customer.cust_id and trfd_id=" & batchid.ToString, ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then

                acnamelbl.Text = dt.Rows(0).Item("cust_name")
                acnolbl.Text = dt.Rows(0).Item("ac_id")
                transidlbl.Text = batchid
                particularlbl.Text = dt.Rows(0).Item("trans_desc")
                transdatelbl.Text = dt.Rows(0).Item("trans_date")
                exclbl.Text = dt.Rows(0).Item("exc_rate")
                If exclbl.Text = "0.0000" Then
                    exclbl.Text = "1.00"
                End If
                currlbl.Text = dt.Rows(0).Item("curr_name")
                debam.Text = dt.Rows(0).Item("trans_amount")
                opridlbl.Text = dt.Rows(0).Item("opr_id")

            End If
            da = New SqlDataAdapter("select cust_name, account.ac_id as ac_id,  curr_name, trans_desc, trans_amount from deposit, customer, account, transactions, transfer, currency where transfer.dep_id=deposit.dep_id and deposit.trans_id=transactions.trans_id and transactions.ac_id=account.ac_id and account.curr_id=currency.curr_id and account.cust_id=customer.cust_id and trfd_id=" & batchid.ToString, ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then

                acnamelbl0.Text = dt.Rows(0).Item("cust_name")
                acnolbl0.Text = dt.Rows(0).Item("ac_id")

                particularlbl0.Text = dt.Rows(0).Item("trans_desc")
                cream.Text = dt.Rows(0).Item("trans_amount")

                
                currlbl0.Text = dt.Rows(0).Item("curr_name")


            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
