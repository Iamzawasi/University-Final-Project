Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Net.NetworkInformation

Partial Class _Default
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function

    Protected Sub Passtxtbx_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Passtxtbx.TextChanged

    End Sub

    Protected Sub Loginbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Loginbtn.Click
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select opr_id, opr_password from operator where opr_id=" & Usrtxtbx.Text.ToString() & " and opr_password=" & "'" & Passtxtbx.Text.ToString() & "'", ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                Dim userr, passwordd, mac As String

                userr = dt.Rows(0).Item("opr_id")
                passwordd = dt.Rows(0).Item("opr_password")
                mac = getMacAddress()
                '  ============================'
                Dim now As Date = DateTime.Now
                Dim logintimee = New DateTime(now.Year, now.Month, now.Day, now.Hour, now.Minute, now.Second, 0)
                cmd = New SqlCommand("Select MAX(l_id) as l_id from logindetails", ccn)
                Dim l_idd As Object
                l_idd = cmd.ExecuteScalar()
                If l_idd Is DBNull.Value = True Then
                    l_idd = 1
                Else
                    l_idd += 1
                End If
                With cmd.Parameters
                    cmd = New SqlCommand("insert into logindetails(l_id, opr_id, pc_mac, logintime) Values(@l_id, @opr_id, @pc_mac, @logintime)", ccn)
                    cmd.Parameters.AddWithValue("@l_id", l_idd)
                    cmd.Parameters.AddWithValue("@opr_id", userr)
                    cmd.Parameters.AddWithValue("@pc_mac", mac)
                    cmd.Parameters.AddWithValue("@logintime", logintimee)
                End With
                cmd.ExecuteNonQuery()
                Response.Redirect("welcome.aspx?user=" + userr, False)

            Else
                incrolbl.Text = "Incorrect User Name or Password"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub
End Class
