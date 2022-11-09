Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Partial Class StatementPrint
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim fromdate As String = Request.QueryString("from")
        Dim todate As String = Request.QueryString("to")
        Dim acno As String = Request.QueryString("acno")
        fromd.Text = fromdate
        todat.Text = todate
        sysdate.Text = DateTime.Now
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If

            da = New SqlDataAdapter("Select cust_name, ac_id, ac_balance, curr_name, e_mail, telephone, mobile, current_add from account, currency, customer, address where account.curr_id=currency.curr_id and account.cust_id=customer.cust_id and address.add_id=customer.add_id and ac_id=" & acno, ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                achname.Text = dt.Rows(0).Item("cust_name")
                ac.Text = dt.Rows(0).Item("ac_id")
                amount.Text = dt.Rows(0).Item("ac_balance")
                currency.Text = dt.Rows(0).Item("curr_name")
                add.Text = dt.Rows(0).Item("current_add")
                email.Text = dt.Rows(0).Item("e_mail")
                tele.Text = dt.Rows(0).Item("telephone")
                mobile.Text = dt.Rows(0).Item("mobile")

            End If

            '===================================================================''''''''''''''''''''''''''''''''''''
            If fromd.Text = "" And todat.Text = "" Then
                txtlbl1.Text = "Current Month Statment"
                fromd.Text = ""
                todat.Text = ""
                tolbl.Text = ""
                da = New SqlDataAdapter("Select trans_id as Trans_ID, trans_date as Transaction_Date_Time, trans_desc as Particular, trans_type as Crdt_Debt, trans_amount as Amount, bal_af_trans As Total from transactions where  trans_date < DATEADD(month, +1, GETDATE()) and ac_id=" & acno, ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            Else
                da = New SqlDataAdapter("Select trans_date as Transaction_Date_Time, trans_desc as Particular, trans_type as Crdt_Debt, trans_amount as Amount, bal_af_trans As Total from transactions where  trans_date between" & "'" & fromdate & "'" & " and " & "'" & todate & "'" & "and ac_id=" & acno, ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            End If
        Catch EX As Exception
            MsgBox(EX.Message)
        End Try
    End Sub
End Class
