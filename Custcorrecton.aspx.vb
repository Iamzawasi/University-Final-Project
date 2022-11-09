Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO

Partial Class Custcorrecton
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable

    Protected Sub searchchckbox_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles searchchckbox.CheckedChanged
        If searchchckbox.Checked Then
            namelbl.Visible = True ' if search checkbox is checked then these lbl and texboxes will be visalble
            fnamelbl.Visible = True

            pastazklbl.Visible = True
            nametxtb.Visible = True
            fnametxtb.Visible = True

            pastazktxtb.Visible = True
            searchbtn.Visible = True
        Else
            namelbl.Visible = False ' if search checkbox is not checked then these lbl and texboxes will be disable
            fnamelbl.Visible = False

            pastazklbl.Visible = False
            nametxtb.Visible = False
            fnametxtb.Visible = False

            pastazktxtb.Visible = False
            searchbtn.Visible = False
        End If
    End Sub

    Protected Sub searchbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles searchbtn.Click
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            If nametxtb.Text <> "" And fnametxtb.Text <> "" And pastazktxtb.Text <> "" Then
                da = New SqlDataAdapter("select cust_id as CUST_ID, cust_name as NAME, cust_fname as FATHER_NAME from customer where cust_name=" & "'" & nametxtb.Text.ToString & "'" & "and cust_fname=" & "'" & fnametxtb.Text.ToString & "'" & " and nid=" & "'" & pastazktxtb.Text.ToString & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            ElseIf nametxtb.Text <> "" And fnametxtb.Text <> "" Then
                da = New SqlDataAdapter("select cust_id as CUST_ID, cust_name as NAME, cust_fname as FATHER_NAME from customer where cust_name=" & "'" & nametxtb.Text.ToString & "'" & "and cust_fname=" & "'" & fnametxtb.Text.ToString & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            ElseIf nametxtb.Text <> "" Then
                da = New SqlDataAdapter("select cust_id as CUST_ID, cust_name as NAME, cust_fname as FATHER_NAME from customer where cust_name=" & "'" & nametxtb.Text.ToString & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt

                GridView1.DataBind()
            ElseIf nametxtb.Text <> "" And pastazktxtb.Text <> "" Then
                da = New SqlDataAdapter("select cust_id as CUST_ID, cust_name as NAME, cust_fname as FATHER_NAME from customer where cust_name=" & "'" & nametxtb.Text.ToString & "'" & " and nid=" & "'" & pastazktxtb.Text.ToString & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()

            ElseIf fnametxtb.Text <> "" Then
                da = New SqlDataAdapter("select cust_id as CUST_ID, cust_name as NAME, cust_fname as FATHER_NAME from customer where cust_fname=" & "'" & fnametxtb.Text.ToString & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            ElseIf pastazktxtb.Text <> "" Then
                da = New SqlDataAdapter("select cust_id as CUST_ID, cust_name as NAME, cust_fname as FATHER_NAME from customer where nid=" & "'" & pastazktxtb.Text.ToString & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                GridView1.DataSource = dt
                GridView1.DataBind()
            End If
        Catch EX As Exception
            MsgBox(EX.Message)
        End Try
    End Sub

    Protected Sub GridView1_PageIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.PageIndexChanged

    End Sub

    Protected Sub GridView1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles GridView1.SelectedIndexChanged

    End Sub

    Protected Sub curbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles curbtn.Click
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select cust_id, cust_name from customer where cust_id=" & "'" & custidtxtb.Text.ToString & "'", ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                Response.Redirect("Customer.aspx?custid=" + custidtxtb.Text, False)
            Else

                Remark.Text = "Please Enter a correct customer ID"



            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
