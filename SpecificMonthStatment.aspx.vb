Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Partial Class SpecificMonthStatment
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable

    Protected Sub acntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles acntxtb.TextChanged
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


            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub dropdnmonth_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dropdnmonth.SelectedIndexChanged
        Try
            If dropdnmonth.SelectedItem.Value = 1 Then 'Or 3 Then 'Or 5 Or 7 Or 8 Or 10 Or 12 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 3 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 5 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 7 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 8 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 10 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 12 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 4 Then 'Or 6 Or 9 Or 11
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 6 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 9 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday.Items.Add(days)
                Next
            ElseIf dropdnmonth.SelectedItem.Value = 11 Then
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday.Items.Add(days)
                Next
            Else
                Dropdnday.Items.Clear()
                For days As Integer = 1 To 28
                    Dropdnday.Items.Add(days)
                Next
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Dropdnday_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Dropdnday.SelectedIndexChanged
        dropdnyear.Items.Clear()
        Dim emptty As String
        dropdnyear.Items.Add(emptty)
        For yer As Integer = 0 To 15
            dropdnyear.Items.Add(DateTime.Now.Year - yer)
        Next
    End Sub

    Protected Sub dropdnmonth0_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dropdnmonth0.SelectedIndexChanged
        Try
            If dropdnmonth0.SelectedItem.Value = 1 Then 'Or 3 Then 'Or 5 Or 7 Or 8 Or 10 Or 12 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 3 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 5 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 7 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 8 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 10 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 12 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 31
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 4 Then 'Or 6 Or 9 Or 11
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 6 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 9 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday0.Items.Add(days)
                Next
            ElseIf dropdnmonth0.SelectedItem.Value = 11 Then
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 30
                    Dropdnday0.Items.Add(days)
                Next
            Else
                Dropdnday0.Items.Clear()
                For days As Integer = 1 To 28
                    Dropdnday0.Items.Add(days)
                Next
            End If


        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Dropdnday0_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Dropdnday0.SelectedIndexChanged
        dropdnyear0.Items.Clear()
        Dim emptty As String
        dropdnyear0.Items.Add(emptty)
        For yer As Integer = 0 To 15
            dropdnyear0.Items.Add(DateTime.Now.Year - yer)
        Next
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If

            da = New SqlDataAdapter("Select trans_id as Trans_ID, trans_date as Transaction_Date_Time, trans_desc as Particular, trans_type as Crdt_Debt, trans_amount as Amount, bal_af_trans As Total from transactions where  trans_date between" & "'" & fromdate.Text & "'" & " and " & "'" & todate.Text & "'" & "and ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            GridView1.DataSource = dt
            GridView1.DataBind()
        Catch EX As Exception
            MsgBox(EX.Message)
        End Try
    End Sub

    Protected Sub GridView1_PageIndexChanging(ByVal sender As Object, ByVal e As System.Web.UI.WebControls.GridViewPageEventArgs) Handles GridView1.PageIndexChanging
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If





        da = New SqlDataAdapter("Select trans_id as Trans_ID, trans_date as Transaction_Date_Time, trans_desc as Particular, trans_type as Crdt_Debt, trans_amount as Amount, bal_af_trans As Total from transactions where  trans_date between" & "'" & fromdate.Text & "'" & " and " & "'" & todate.Text & "'" & "and ac_id=" & acntxtb.Text.ToString(), ccn)

        dt = New DataTable
        da.Fill(dt)
        GridView1.PageIndex = e.NewPageIndex
        GridView1.DataSource = dt
        GridView1.DataBind()
    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged


    End Sub

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button2.Click
        Response.Redirect("StatementPrint.aspx?from=" + fromdate.Text & "&to=" + todate.Text & "&acno=" + acntxtb.Text, False)
    End Sub

    Protected Sub dropdnyear0_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dropdnyear0.SelectedIndexChanged

    End Sub

    Protected Sub dropdnyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dropdnyear.SelectedIndexChanged
        fromdate.Text = dropdnyear0.SelectedItem.Value & "/" & dropdnmonth0.SelectedItem.Value & "/" & Dropdnday0.SelectedItem.Value
        todate.Text = dropdnyear.SelectedItem.Value & "/" & dropdnmonth.SelectedItem.Value & "/" & Dropdnday.SelectedItem.Value
    End Sub
End Class
