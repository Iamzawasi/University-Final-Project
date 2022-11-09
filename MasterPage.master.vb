Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Net.NetworkInformation

Partial Class MasterPage
    Inherits System.Web.UI.MasterPage
    Public oprid As String
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load


        Dim comparemac As String ' current mac 
        Dim comparelogintimee As Date ' log in date of the system
        comparelogintimee = Date.Now
        comparemac = getMacAddress()


        oprid = Request.QueryString("user")
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        
        cmd = New SqlCommand("select max(logintime) as logintime from logindetails, operator where operator.opr_id=logindetails.opr_id and pc_mac =" & "'" & comparemac & "'", ccn)
        Dim mlgin As Object
        mlgin = cmd.ExecuteScalar()
        If mlgin Is DBNull.Value = True Then
            Response.Redirect("Default.aspx", False)
        ElseIf mlgin Is DBNull.Value = False Then
            lstlginlbl.Text = mlgin
            cmd = New SqlCommand("select logouttime from logindetails, operator where operator.opr_id=logindetails.opr_id and logintime =" & "'" & mlgin & "'", ccn)
            Dim lout As Object
            lout = cmd.ExecuteScalar()
            If lout Is DBNull.Value = True Then

                cmd = New SqlCommand("select opr_name  from logindetails, operator where operator.opr_id=logindetails.opr_id and logintime =" & "'" & mlgin & "'", ccn)
                Dim oprname As Object
                oprname = cmd.ExecuteScalar()
                If oprname Is DBNull.Value = False Then
                    UserNamelbl.Text = oprname
                End If
            ElseIf lout Is DBNull.Value = False Then
                Response.Redirect("Default.aspx", False)
            End If
            End If


        ' da = New SqlDataAdapter("select opr_name, logindetails.opr_id, pc_mac  from logindetails, operator where operator.opr_id=logindetails.opr_id and pc_mac=" & comparemac, ccn)
        'dt = New DataTable
        'da.Fill(dt)

        '        If dt.Rows.Count > 0 Then
        'UserNamelbl.Text = dt.Rows(0).Item("opr_name")
        'mac = dt.Rows(0).Item("pc_mac")
        'datbaselgintime = lstlginlbl.Text

        'If comparemac = mac Then
        'MsgBox("mac matches")
        'Else
        'Response.Redirect("Default.aspx", False)
        'End If
        ' End If



        'Catch ex As Exception
        ' MsgBox(ex.Message)
        'End Try


    End Sub

    Protected Sub LinkButton1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Logut.Click
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        Dim logouttimee = New DateTime(Now.Year, Now.Month, Now.Day, Now.Hour, Now.Minute, Now.Second, 0)
        cmd = New SqlCommand("update logindetails set logouttime=" & "'" & logouttimee & "'" & " where logintime=" & "'" & lstlginlbl.Text & "'", ccn)
        cmd.ExecuteNonQuery()
        Response.Redirect("default.aspx", False)
    End Sub
End Class

