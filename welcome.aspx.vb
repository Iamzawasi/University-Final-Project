Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Imports System.Net.NetworkInformation

Partial Class welcome
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        da = New SqlDataAdapter("select sum(ac_balance) as ac_balance from account where account.curr_id=10 and  ac_balance<0", ccn)
        dt = New DataTable
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            ballbl.Text = dt.Rows(0).Item("ac_balance")

        End If
        '=====================================================================
        da = New SqlDataAdapter("select sum(ac_balance) as ac_balance from account where account.curr_id=10 and  ac_balance>0", ccn)
        dt = New DataTable
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            availlbl.Text = dt.Rows(0).Item("ac_balance")
        End If
    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        If CheckBox1.Checked Then
            acntxtb.Visible = True
        Else
            acntxtb.Visible = False
            namelbl.Visible = False
            fnamelbl.Visible = False
            acballbl.Visible = False
            acopenlbl.Visible = False
            contactn0.Visible = False
            contactn.Visible = False
           
            cacbala.Visible = False
            ccontnblb.Visible = False
            cmcontnblb.Visible = False
            cacopenlbl.Visible = False
            cfnamelbl.Visible = False
            cnamelbl.Visible = False
            ccurrencylbl.Visible = False
        End If
    End Sub

    Protected Sub TextBox1_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles acntxtb.TextChanged

        Try

            namelbl.Visible = True
            fnamelbl.Visible = True
            acballbl.Visible = True
            acopenlbl.Visible = True
            contactn0.Visible = True
            contactn.Visible = True
       
            cacbala.Visible = True
            ccontnblb.Visible = True
            cmcontnblb.Visible = True
            cacopenlbl.Visible = True
            cfnamelbl.Visible = True
            cnamelbl.Visible = True
            ccurrencylbl.Visible = True



            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select ac_balance, curr_id, open_date, cust_name, cust_fname,  telephone, mobile from account, address, customer where account.cust_id=customer.cust_id and customer.add_id=address.add_id and ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                cnamelbl.Text = dt.Rows(0).Item("cust_name")
                cfnamelbl.Text = dt.Rows(0).Item("cust_fname")
                cacopenlbl.Text = dt.Rows(0).Item("open_date")
                cmcontnblb.Text = dt.Rows(0).Item("mobile")
                ccontnblb.Text = dt.Rows(0).Item("telephone")
                cacbala.Text = dt.Rows(0).Item("ac_balance")
                ccurrencylbl.Text = dt.Rows(0).Item("curr_id")


                If ccurrencylbl.Text = 20 Then
                    ccurrencylbl.Text = "AFN"

                ElseIf ccurrencylbl.Text = 10 Then
                    ccurrencylbl.Text = "USD"
                ElseIf ccurrencylbl.Text = 30 Then
                    ccurrencylbl.Text = "PKR"
                ElseIf ccurrencylbl.Text = 40 Then
                    ccurrencylbl.Text = "EURO"

                End If
            Else

                ccurrencylbl.Text = "Wrong Account # !!!"

                namelbl.Visible = False
                fnamelbl.Visible = False
                acballbl.Visible = False
                acopenlbl.Visible = False
                contactn0.Visible = False
                contactn.Visible = False
                
                cacbala.Visible = False
                ccontnblb.Visible = False
                cmcontnblb.Visible = False
                cacopenlbl.Visible = False
                cfnamelbl.Visible = False
                cnamelbl.Visible = False


            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
