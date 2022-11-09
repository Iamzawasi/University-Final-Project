Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Partial Class AccountDetails2
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

            da = New SqlDataAdapter("select curr_id, cust_name from account, address, customer where account.cust_id=customer.cust_id and ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then
                achname.Text = dt.Rows(0).Item("cust_name")
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
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("Select cust_name as Name, cust_fname as Father_Name,  cust_gender as Gender,  ac_id as Account_No,  ac_type as Account_Type, ac_balance as Amount_Available, curr_name as Currency, telephone as Telephone_No, Mobile as Mobile_No from account, customer, currency, address where currency.curr_id=account.curr_id and customer.cust_id=account.cust_id and address.add_id=customer.add_id and  ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            DetailsView2.DataSource = dt
            DetailsView2.DataBind()
            '=============================================================================================================
            da = New SqlDataAdapter("Select perm_add as Permanent_Address,  Current_add as Current_Address,  e_mail as Email_Address, nid  as National_ID, cust_dob as Date_of_Birth, account.opr_id as Open_By, open_date as Account_Open_Date, employer_name as Occupation_Place, Designation as Designation  from account, customer, address, occupation where  customer.cust_id=account.cust_id and address.add_id=customer.add_id and occupation.occup_id=customer.occup_id and  ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            
            DetailsView1.DataSource = dt
            DetailsView1.DataBind()

        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
