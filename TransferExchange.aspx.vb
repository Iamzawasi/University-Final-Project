Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Imports System.Net.NetworkInformation

Partial Class TransferExchange
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function
    Protected Sub chkbxexchange_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles chkbxexchange.CheckedChanged
        If chkbxexchange.Checked Then
            exchangtxtb.Visible = True
            lblexchange.Visible = True

        Else
            exchangtxtb.Visible = False
            lblexchange.Visible = False
        End If
    End Sub

    Protected Sub TextBox7_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles creamttxtb.TextChanged
        Dim val As Double
        amntlbl0.Text = creamttxtb.Text
        val = amntlbl0.Text
        If currlbl.Text = currlbl0.Text And creamttxtb.Text <> drtxtbamount.Text Then
            trfdsavebtn.Enabled = False
        Else
            trfdsavebtn.Enabled = True
        End If
        If val > 999 Then
            amntlbl0.Text = val.ToString("###,###.##")
        End If ' the above function will change the textbox numberic and will add camma to amntlbl
    End Sub

    Protected Sub crtxtbamount_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles drtxtbamount.TextChanged
        Dim val As Double
        amntlbl.Text = drtxtbamount.Text
        val = amntlbl.Text
        
        If val > 999 Then
            amntlbl.Text = val.ToString("###,###.##")
        End If ' the above function will change the textbox numberic and will add camma to amntlbl

    End Sub

    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles debupbtn.Click
        If acntxtb.Text = "" Then
            achname.Text = "Please Enter Account Number"
        ElseIf drtxtbamount.Text = "" Then
            amntlbl.Text = "Please Enter Amount"
        Else
            acntxtb.Enabled = False
            savparttxtb.Enabled = False
            drtxtbamount.Enabled = False
            acntxtb0.Enabled = True
            parttxtb0.Enabled = True
            creamttxtb.Enabled = True



        End If
    End Sub

    Protected Sub debitactxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles acntxtb.TextChanged
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select account.cust_id as custid, curr_id, cust_name, cust_photo, cust_sign,  telephone, mobile from account, address, customer where account.cust_id=customer.cust_id and customer.add_id=address.add_id and ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                achname.Text = dt.Rows(0).Item("cust_name")
                teleplbl.Text = dt.Rows(0).Item("telephone")
                contactlbl.Text = dt.Rows(0).Item("mobile")
                currlbl.Text = dt.Rows(0).Item("curr_id")
                custid.Text = dt.Rows(0).Item("custid")

                If currlbl.Text = 20 Then
                    currlbl.Text = "AFN"

                ElseIf currlbl.Text = 10 Then
                    currlbl.Text = "USD"
                ElseIf currlbl.Text = 30 Then
                    currlbl.Text = "PKR"
                ElseIf currlbl.Text = 40 Then
                    currlbl.Text = "EURO"
                   
                End If

                ''''''''''''''''''''''''''''''remove pic from imageboxes first
                Image1.ImageUrl = "~/Uploads/"
                Image2.ImageUrl = "~/Uploads/"
                '========================================
                If dt.Rows(0).Item("cust_photo") Is DBNull.Value = True Then
                Else
                    Dim empimage() As Byte = CType(dt.Rows(0).Item("cust_photo"), Byte())
                    ' Dim ms As New MemoryStream(empimage)
                    'Imagesign.ImageUrl = Image.FromStream(ms)
                    Image1.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(empimage)

                End If
                If dt.Rows(0).Item("cust_sign") Is DBNull.Value = True Then
                Else

                    Dim empimage() As Byte = CType(dt.Rows(0).Item("cust_sign"), Byte())
                    ' Dim ms As New MemoryStream(empimage)
                    'Imagesign.ImageUrl = Image.FromStream(ms)
                    Image2.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(empimage)

                End If




                '=========================================
                

            Else

                achname.Text = "Wrong Account # !!!"


            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub creactxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles acntxtb0.TextChanged
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If
            da = New SqlDataAdapter("select curr_id, cust_name,  telephone, mobile from account, address, customer where account.cust_id=customer.cust_id and customer.add_id=address.add_id and ac_id=" & acntxtb0.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then
                achname0.Text = dt.Rows(0).Item("cust_name")
                teleplbl0.Text = dt.Rows(0).Item("telephone")
                contactlbl0.Text = dt.Rows(0).Item("mobile")
                currlbl0.Text = dt.Rows(0).Item("curr_id")

                If currlbl0.Text = 20 Then
                    currlbl0.Text = "AFN"

                ElseIf currlbl0.Text = 10 Then
                    currlbl0.Text = "USD"
                ElseIf currlbl0.Text = 30 Then
                    currlbl0.Text = "PKR"
                ElseIf currlbl0.Text = 40 Then
                    currlbl0.Text = "EURO"

                End If

            Else

                achname0.Text = "Wrong Account # !!!"


            End If
            If currlbl.Text <> currlbl0.Text Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True

            Else
                chkbxexchange.Checked = False
                creamttxtb.Enabled = True
                exchangtxtb.Visible = False
                lblexchange.Visible = False

            End If
            creamttxtb.Text = ""
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub Button4_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles crsavupbtn.Click
        If acntxtb0.Text = "" Then
            achname0.Text = "Please Enter Account Number"
        ElseIf creamttxtb.Text = "" Then
            amntlbl0.Text = "Please Enter Amount"
        Else
            acntxtb.Enabled = True
            savparttxtb.Enabled = True
            drtxtbamount.Enabled = True
            acntxtb0.Enabled = False
            parttxtb0.Enabled = False
            creamttxtb.Enabled = False



        End If
    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles trfdsavebtn.Click
        Try
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
                ' For transaction table we will fill these details
                cmd = New SqlCommand("Select MAX(trans_id) as trans_id from transactions", ccn)
                Dim trandid As Object
                trandid = cmd.ExecuteScalar()
                If trandid Is DBNull.Value = True Then
                    trandid = 1
                Else
                    trandid += 1
                End If
                tranidlabel.Text = Val(trandid)
            End If
            Dim depdate As Date
            depdate = DateTime.Now
            datelbl.Text = DateTime.Now
            ' here the current balance will be retrived and then it will be modified later
            cmd = New SqlCommand("Select ac_balance from account where ac_id=" & acntxtb.Text.ToString, ccn)
            Dim acbalance As Integer
            acbalance = cmd.ExecuteScalar()
            acbalance = acbalance - drtxtbamount.Text
            cmd = New SqlCommand("update account set ac_balance=" & acbalance.ToString & "where ac_id=" & acntxtb.Text.ToString, ccn)
            cmd.ExecuteNonQuery()
            With cmd.Parameters
                savparttxtb.Text = savparttxtb.Text + " (T_E)"
                cmd = New SqlCommand("insert into transactions(trans_id, trans_type, trans_desc, trans_date, trans_amount, bal_af_trans, ac_id, opr_id) Values(@trans_id, @trans_type, @trans_desc, @trans_date, @trans_amount, @bal_af_trans, @ac_id, @opr_id)", ccn)
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel.Text)
                cmd.Parameters.AddWithValue("@trans_type", "0")
                cmd.Parameters.AddWithValue("@trans_desc", savparttxtb.Text)

                cmd.Parameters.AddWithValue("@trans_date", depdate)
                cmd.Parameters.AddWithValue("@trans_amount", drtxtbamount.Text)
                cmd.Parameters.AddWithValue("@bal_af_trans", acbalance)
                cmd.Parameters.AddWithValue("@ac_id", acntxtb.Text)
                cmd.Parameters.AddWithValue("@opr_id", oprid.Text)
            End With
            cmd.ExecuteNonQuery()
            '-------------------------------------------
            With cmd.Parameters
                cmd = New SqlCommand("Select MAX(with_id) as with_id from withdrawal", ccn)
                Dim withh As Object
                withh = cmd.ExecuteScalar()
                If withh Is DBNull.Value = True Then
                    withh = 1
                Else
                    withh += 1
                    withlbl.Text = withh
                End If
                cmd = New SqlCommand("insert into Withdrawal(with_id, trans_id) Values(@with_id, @trans_id)", ccn)
                cmd.Parameters.AddWithValue("@with_id", withh)
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel.Text)
            End With
            cmd.ExecuteNonQuery()
            '------------------------------------------------------------------------------------------
            ' For transaction table we will fill these details
            cmd = New SqlCommand("Select MAX(trans_id) as trans_id from transactions", ccn)
            Dim trandid0 As Object
            trandid0 = cmd.ExecuteScalar()
            If trandid0 Is DBNull.Value = True Then
                trandid0 = 1
            Else
                trandid0 += 1
            End If
            tranidlabel0.Text = Val(trandid0)

            With cmd.Parameters
                ' here the current balance will be retrived and then it will be modified later
                cmd = New SqlCommand("Select ac_balance from account where ac_id=" & acntxtb0.Text.ToString, ccn)
                Dim acbalance0 As Integer
                acbalance0 = cmd.ExecuteScalar()
                acbalance0 = acbalance0 + drtxtbamount.Text
                cmd = New SqlCommand("update account set ac_balance=" & acbalance0.ToString & "where ac_id=" & acntxtb0.Text.ToString, ccn)
                cmd.ExecuteNonQuery()
                cmd = New SqlCommand("insert into transactions(trans_id, trans_type, trans_desc, trans_date, trans_amount, bal_af_trans, ac_id, opr_id) Values(@trans_id, @trans_type, @trans_desc, @trans_date, @trans_amount, @bal_af_trans, @ac_id, @opr_id)", ccn)
                parttxtb0.Text = parttxtb0.Text + " (T_E)"
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel0.Text)
                cmd.Parameters.AddWithValue("@trans_type", "1")
                cmd.Parameters.AddWithValue("@trans_desc", parttxtb0.Text)

                cmd.Parameters.AddWithValue("@trans_date", depdate)
                cmd.Parameters.AddWithValue("@trans_amount", creamttxtb.Text)
                cmd.Parameters.AddWithValue("@bal_af_trans", acbalance0)
                cmd.Parameters.AddWithValue("@ac_id", acntxtb0.Text)
                cmd.Parameters.AddWithValue("@opr_id", "1001")
            End With
            cmd.ExecuteNonQuery()
            '---------------------------------------------------------------------------------
            With cmd.Parameters
                cmd = New SqlCommand("Select MAX(dep_id) as dep_id from deposit", ccn)
                Dim dep As Object
                dep = cmd.ExecuteScalar()
                If dep Is DBNull.Value = True Then
                    dep = 1
                Else
                    dep += 1
                    deplbl.Text = dep
                End If
                cmd = New SqlCommand("insert into deposit(dep_id, trans_id) Values(@dep_id, @trans_id)", ccn)
                cmd.Parameters.AddWithValue("@dep_id", dep)
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel0.Text)
            End With
            cmd.ExecuteNonQuery()


            '================================TRANSFER TABLE INFO TO BE SAVED HERE===================
            With cmd.Parameters
                cmd = New SqlCommand("Select MAX(trfd_id) as trfd_id from transfer", ccn)
                Dim trfdid As Object
                trfdid = cmd.ExecuteScalar()
                If trfdid Is DBNull.Value = True Then
                    trfdid = 1
                Else
                    trfdid += 1
                    Batchlbl.Text = trfdid
                End If
                cmd = New SqlCommand("insert into transfer(trfd_id, exc_rate, with_id, dep_id) Values(@trfd_id, @exc_rate, @with_id, @dep_id)", ccn)
                cmd.Parameters.AddWithValue("@trfd_id", trfdid)
                cmd.Parameters.AddWithValue("@exc_rate", exchangtxtb.Text)
                cmd.Parameters.AddWithValue("@with_id", withlbl.Text)
                cmd.Parameters.AddWithValue("@dep_id", deplbl.Text)
            End With
            cmd.ExecuteNonQuery()


            '===============================-------------------------------------====================
            acntxtb0.Enabled = False
            parttxtb0.Enabled = False
            creamttxtb.Enabled = False
            chkbxexchange.Checked = False
            exchangtxtb.Visible = False
            lblexchange.Visible = False
            crsavupbtn.Enabled = False
            debupbtn.Enabled = False
            exchangtxtb.Visible = False
            chkbxexchange.Enabled = False
            trfdsavebtn.Enabled = False
        Catch EX As Exception
        End Try
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        Dim comparemac As String = getMacAddress()
        cmd = New SqlCommand("select max(logintime) as logintime from logindetails, operator where operator.opr_id=logindetails.opr_id and pc_mac =" & "'" & comparemac & "'", ccn)
        Dim mlgin As Object
        mlgin = cmd.ExecuteScalar()
        If mlgin Is DBNull.Value = True Then
            Response.Redirect("Default.aspx", False)
        ElseIf mlgin Is DBNull.Value = False Then
            Dim login As Date = mlgin
            cmd = New SqlCommand("select logouttime from logindetails, operator where operator.opr_id=logindetails.opr_id and logintime =" & "'" & mlgin & "'", ccn)
            Dim lout As Object
            lout = cmd.ExecuteScalar()
            If lout Is DBNull.Value = True Then

                da = New SqlDataAdapter("select opr_name, operator.opr_id  from logindetails, operator where operator.opr_id=logindetails.opr_id and logintime =" & "'" & mlgin & "'", ccn)
                dt = New DataTable
                da.Fill(dt)
                If dt.Rows.Count > 0 Then
                    Operatorlbl.Text = dt.Rows(0).Item("opr_name")
                    oprid.Text = dt.Rows(0).Item("opr_id")

                End If
            ElseIf lout Is DBNull.Value = False Then
                Response.Redirect("Default.aspx", False)
            End If
        End If
    End Sub

    Protected Sub exchangtxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles exchangtxtb.TextChanged

        Try
            If currlbl.Text <> currlbl0.Text And currlbl.Text = "USD" And currlbl0.Text = "AFN" Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True
                creamttxtb.Text = drtxtbamount.Text * exchangtxtb.Text
                trfdsavebtn.Enabled = True
            ElseIf currlbl.Text <> currlbl0.Text And currlbl.Text = "USD" And currlbl0.Text = "PKR" Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True
                creamttxtb.Text = drtxtbamount.Text * exchangtxtb.Text
                trfdsavebtn.Enabled = True
            ElseIf currlbl.Text <> currlbl0.Text And currlbl.Text = "USD" And currlbl0.Text = "EURO" Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True
                creamttxtb.Text = drtxtbamount.Text / exchangtxtb.Text
                trfdsavebtn.Enabled = True
                '========================================================================
            ElseIf currlbl.Text <> currlbl0.Text And currlbl.Text = "AFN" And currlbl0.Text = "USD" Or currlbl0.Text = "EURO" Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True
                creamttxtb.Text = drtxtbamount.Text / exchangtxtb.Text
                trfdsavebtn.Enabled = True
            ElseIf currlbl.Text <> currlbl0.Text And currlbl.Text = "AFN" And currlbl0.Text = "PKR" Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True
                creamttxtb.Text = drtxtbamount.Text * exchangtxtb.Text
                trfdsavebtn.Enabled = True
            ElseIf currlbl.Text <> currlbl0.Text And currlbl.Text = "PKR" And currlbl0.Text = "USD" Or currlbl0.Text = "EURO" Or currlbl0.Text = "AFN" Then
                chkbxexchange.Checked = True
                creamttxtb.Enabled = False
                exchangtxtb.Visible = True
                lblexchange.Visible = True
                creamttxtb.Text = drtxtbamount.Text / exchangtxtb.Text
                trfdsavebtn.Enabled = True

            Else
                chkbxexchange.Checked = False
                exchangtxtb.Visible = False
                lblexchange.Visible = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try

    End Sub

    Protected Sub prntbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles prntbtn.Click
        Response.Redirect("Tvoucher.aspx?transaction=" + Batchlbl.Text, False)

    End Sub
End Class
