Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Imports System.Net.NetworkInformation
Imports System.Drawing


Partial Class DepositAFN
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Public validatecurr As Integer
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function
    Protected Sub otntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles otntxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double
            If otntxtb.Text.Contains(",") Or otntxtb.Text.Contains("'") Or otntxtb.Text.Contains("--") Then
                otntxtb.Text = ""
                otttxtb.Text = ""
                otbtxtb.Text = ""
            ElseIf otntxtb.Text > 99 Then
                otttxtb.Text = "0"
                otbtxtb.Text = "0"
                bundle = Int(otntxtb.Text / 100) '' it is type is change to int coz it will create problem as we substract number -bundle
                '' if the value is greater then 149 then it will change  it to 200 exp 150/100= 1.5 then it will be change to 2
                otbtxtb.Text = bundle '' it is NUMBER TEXTBOX VALUE
                number = (otntxtb.Text / 100)
                otntxtb.Text = Math.Round(100 * (number - Int(bundle))) ''IT IS number TEXTBOX
                otttxtb.Text = (otbtxtb.Text * 100 * 1000) + (otntxtb.Text * 1000) ''IT IS TOTAL TEXTBOX OF THE ROW 5 THOUSAND

            ElseIf otntxtb.Text < 0 Then '' if values is negative then 
                otttxtb.Text = "0"
                otbtxtb.Text = "0"    '' bellow otntxtb have negative value multiplied by -1 it will become positive
                otntxtb.Text = otntxtb.Text * (-1) ' so it its value is negative it will changed to postive and after calculaton backed it will chanage to negaative
                bundle = Int(otntxtb.Text / 100) '' IN Same case define above we will first chanage the value into positive then 
                '' we wil back transfer the value into negative while assigning to textbox.text,  in the same case int(-1.5) will change to -2
                otbtxtb.Text = (bundle) * (-1) '' here postive value are multiplied with negative and change to negative
                number = (otntxtb.Text / 100)
                otntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1)) '' here postive value are multiplied with negative and change to negative
                otttxtb.Text = (otbtxtb.Text * 100 * 1000) + (otntxtb.Text * 1000)

            Else
                otttxtb.Text = "0"
                otbtxtb.Text = "0"
                otttxtb.Text = (otntxtb.Text * 1000)
            End If
            '--------------------------------------------------------------------------------
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.otntxtb.Text <> "0" Or otbtxtb.Text <> "0" Then
                Me.otntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub fhntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles fhntxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If fhntxtb.Text > 99 Then 'five hundred number textbox
                fhttxtb.Text = "0" 'five hundred total textbox
                fhbtxtb.Text = "0" ' five hundred bundle textbox
                bundle = Int(fhntxtb.Text / 100)
                fhbtxtb.Text = bundle
                number = (fhntxtb.Text / 100)
                fhntxtb.Text = Math.Round(100 * (number - Int(bundle)))
                fhttxtb.Text = (fhbtxtb.Text * 100 * 500) + (fhntxtb.Text * 500)

            ElseIf fhntxtb.Text < 0 Then
                fhttxtb.Text = "0"
                fhbtxtb.Text = "0"
                fhntxtb.Text = fhntxtb.Text * (-1)
                bundle = Int(fhntxtb.Text / 100)
                fhbtxtb.Text = (bundle) * (-1)
                number = (fhntxtb.Text / 100)
                fhntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1)) ''            
                fhttxtb.Text = (fhbtxtb.Text * 100 * 500) + (fhntxtb.Text * 500)

            Else
                fhttxtb.Text = "0"
                fhbtxtb.Text = "0"
                fhttxtb.Text = (fhntxtb.Text * 500)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall

            If Me.fhntxtb.Text <> "0" Or fhbtxtb.Text <> "0" Then
                Me.fhntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub hntxtbo_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles hntxtbo.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If hntxtbo.Text > 99 Then ' hundred number textbox
                httxtb.Text = "0" ' hundred total textbox
                hbtxtb.Text = "0" '  hundred bundle textbox
                bundle = Int(hntxtbo.Text / 100)
                hbtxtb.Text = bundle
                number = (hntxtbo.Text / 100)
                hntxtbo.Text = Math.Round(100 * (number - Int(bundle)))
                httxtb.Text = (hbtxtb.Text * 100 * 100) + (hntxtbo.Text * 100)

            ElseIf hntxtbo.Text < 0 Then
                httxtb.Text = "0"
                hbtxtb.Text = "0"
                hntxtbo.Text = hntxtbo.Text * (-1)
                bundle = Int(hntxtbo.Text / 100)
                hbtxtb.Text = (bundle) * (-1)
                number = (hntxtbo.Text / 100)
                hntxtbo.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                httxtb.Text = (hbtxtb.Text * 100 * 100) + (hntxtbo.Text * 100)

            Else
                httxtb.Text = "0"
                hbtxtb.Text = "0"
                httxtb.Text = (hntxtbo.Text * 100)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.hntxtbo.Text <> "0" Or hbtxtb.Text <> "0" Then
                Me.hntxtbo.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub fyntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles fyntxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If fyntxtb.Text > 99 Then ' number textbox
                fyttxtb.Text = "0" ' total textbox
                fybtxtb.Text = "0" '   bundle textbox
                bundle = Int(fyntxtb.Text / 100)
                fybtxtb.Text = bundle
                number = (fyntxtb.Text / 100)
                fyntxtb.Text = Math.Round(100 * (number - Int(bundle)))
                fyttxtb.Text = (fybtxtb.Text * 100 * 50) + (fyntxtb.Text * 50)

            ElseIf fyntxtb.Text < 0 Then
                fyttxtb.Text = "0"
                fybtxtb.Text = "0"
                fyntxtb.Text = fyntxtb.Text * (-1)
                bundle = Int(fyntxtb.Text / 100)
                fybtxtb.Text = (bundle) * (-1)
                number = (fyntxtb.Text / 100)
                fyntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                fyttxtb.Text = (fybtxtb.Text * 100 * 50) + (fyntxtb.Text * 50)

            Else
                fyttxtb.Text = "0"
                fybtxtb.Text = "0"
                fyttxtb.Text = (fyntxtb.Text * 50)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.fyntxtb.Text <> "0" Or fybtxtb.Text <> "0" Then
                Me.fyntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub twntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles twntxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If twntxtb.Text > 99 Then ' number textbox
                twttxtb.Text = "0"  ' total textbox
                twbtxtb.Text = "0" '   bundle textbox
                bundle = Int(twntxtb.Text / 100)
                twbtxtb.Text = bundle
                number = (twntxtb.Text / 100)
                twntxtb.Text = Math.Round(100 * (number - Int(bundle)))
                twttxtb.Text = (twbtxtb.Text * 100 * 20) + (twntxtb.Text * 20)

            ElseIf twntxtb.Text < 0 Then
                twttxtb.Text = "0"
                twbtxtb.Text = "0"
                twntxtb.Text = twntxtb.Text * (-1)
                bundle = Int(twntxtb.Text / 100)
                twbtxtb.Text = (bundle) * (-1)
                number = (twntxtb.Text / 100)
                twntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                twttxtb.Text = (twbtxtb.Text * 100 * 20) + (twntxtb.Text * 20)

            Else
                twttxtb.Text = "0"
                twbtxtb.Text = "0"
                twttxtb.Text = (twntxtb.Text * 20)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.twntxtb.Text <> "0" Or twbtxtb.Text <> "0" Then
                Me.twntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub tnntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles tnntxtb.TextChanged
        Try
            If Me.tnntxtb.Text <> "0" Or tnbtxtb.Text <> "0" Then
                Me.tnntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
            Dim bundle As Integer
            Dim number As Double

            If tnntxtb.Text > 99 Then ' number textbox
                tnttxtb.Text = "0" ' total textbox
                tnbtxtb.Text = "0" '   bundle textbox
                bundle = Int(tnntxtb.Text / 100)
                tnbtxtb.Text = bundle
                number = (tnntxtb.Text / 100)
                tnntxtb.Text = Math.Round(100 * (number - Int(bundle)))
                tnttxtb.Text = (tnbtxtb.Text * 100 * 10) + (tnntxtb.Text * 10)

            ElseIf tnntxtb.Text < 0 Then
                tnttxtb.Text = "0"
                tnbtxtb.Text = "0"
                tnntxtb.Text = tnntxtb.Text * (-1)
                bundle = Int(tnntxtb.Text / 100)
                tnbtxtb.Text = (bundle) * (-1)
                number = (tnntxtb.Text / 100)
                tnntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                tnttxtb.Text = (tnbtxtb.Text * 100 * 10) + (tnntxtb.Text * 10)

            Else
                tnttxtb.Text = "0"
                tnbtxtb.Text = "0"
                tnttxtb.Text = (tnntxtb.Text * 10)

            End If

            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.tnntxtb.Text <> "0" Or tnbtxtb.Text <> "0" Then
                Me.tnntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub fvntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles fvntxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If fvntxtb.Text > 99 Then ' number textbox
                fvttxtb.Text = "0" ' total textbox
                fvbtxtb.Text = "0" '   bundle textbox
                bundle = Int(fvntxtb.Text / 100)
                fvbtxtb.Text = bundle
                number = (fvntxtb.Text / 100)
                fvntxtb.Text = Math.Round(100 * (number - Int(bundle)))
                fvttxtb.Text = (fvbtxtb.Text * 100 * 5) + (fvntxtb.Text * 5)

            ElseIf fvntxtb.Text < 0 Then
                fvttxtb.Text = "0"
                fvbtxtb.Text = "0"
                fvntxtb.Text = fvntxtb.Text * (-1)
                bundle = Int(fvntxtb.Text / 100)
                fvbtxtb.Text = (bundle) * (-1)
                number = (fvntxtb.Text / 100)
                fvntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                fvttxtb.Text = (fvbtxtb.Text * 100 * 5) + (fvntxtb.Text * 5)

            Else
                fvttxtb.Text = "0"
                fvbtxtb.Text = "0"
                fvttxtb.Text = (fvntxtb.Text * 5)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.fvntxtb.Text <> "0" Or fvbtxtb.Text <> "0" Then
                Me.fvntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub twontxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles twontxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If twontxtb.Text > 99 Then ' number textbox
                twottxtb.Text = "0" ' total textbox
                twobtxtb.Text = "0" '   bundle textbox
                bundle = Int(twontxtb.Text / 100)
                twobtxtb.Text = bundle
                number = (twontxtb.Text / 100)
                twontxtb.Text = Math.Round(100 * (number - Int(bundle)))
                twottxtb.Text = (twobtxtb.Text * 100 * 2) + (twontxtb.Text * 2)

            ElseIf twontxtb.Text < 0 Then
                twottxtb.Text = "0"
                twobtxtb.Text = "0"
                twontxtb.Text = twontxtb.Text * (-1)
                bundle = Int(twontxtb.Text / 100)
                twobtxtb.Text = (bundle) * (-1)
                number = (twontxtb.Text / 100)
                twontxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                twottxtb.Text = (twobtxtb.Text * 100 * 2) + (twontxtb.Text * 2)

            Else
                twottxtb.Text = "0"
                twobtxtb.Text = "0"
                twottxtb.Text = (twontxtb.Text * 2)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.twontxtb.Text <> "0" Or twobtxtb.Text <> "0" Then
                Me.twontxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub onentxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles onentxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If onentxtb.Text > 99 Then ' number textbox
                onettxtb.Text = "0" ' total textbox
                onebtxtb.Text = "0" '   bundle textbox
                bundle = Int(onentxtb.Text / 100)
                onebtxtb.Text = bundle
                number = (onentxtb.Text / 100)
                onentxtb.Text = Math.Round(100 * (number - Int(bundle)))
                onettxtb.Text = (onebtxtb.Text * 100 * 1) + (onentxtb.Text * 1)

            ElseIf onentxtb.Text < 0 Then
                onettxtb.Text = "0"
                onebtxtb.Text = "0"
                onentxtb.Text = onentxtb.Text * (-1)
                bundle = Int(onentxtb.Text / 100)
                onebtxtb.Text = (bundle) * (-1)
                number = (onentxtb.Text / 100)
                onentxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                onettxtb.Text = (onebtxtb.Text * 100 * 1) + (onentxtb.Text * 1)

            Else
                onettxtb.Text = "0"
                onebtxtb.Text = "0"
                onettxtb.Text = (onentxtb.Text * 1)

            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.onentxtb.Text <> "0" Or onebtxtb.Text <> "0" Then
                Me.onentxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub cntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles cntxtb.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double

            If cntxtb.Text > 99 Then ' number textbox
                cttxtb.Text = "0"  ' total textbox
                cbtxtb.Text = "0" '   bundle textbox
                bundle = Int(cntxtb.Text / 100)
                cbtxtb.Text = bundle
                number = (cntxtb.Text / 100)
                cntxtb.Text = Math.Round(100 * (number - Int(bundle)))
                cttxtb.Text = (cbtxtb.Text * 100 * 0.01) + (cntxtb.Text * 0.01)

            ElseIf cntxtb.Text < 0 Then
                cttxtb.Text = "0"
                cbtxtb.Text = "0"
                cntxtb.Text = cntxtb.Text * (-1)
                bundle = Int(cntxtb.Text / 100)
                cbtxtb.Text = (bundle) * (-1)
                number = (cntxtb.Text / 100)
                cntxtb.Text = Math.Round((100 * (number - Int(bundle))) * (-1))
                cttxtb.Text = (cbtxtb.Text * 100 * 0.01) + (cntxtb.Text * 0.01)

            Else
                cttxtb.Text = "0"
                cbtxtb.Text = "0"
                cttxtb.Text = (cntxtb.Text * 0.01)
            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
            If Me.cntxtb.Text <> "0" Or cbtxtb.Text <> "0" Then
                Me.cntxtb.TabIndex = False
            End If
            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub withamnttxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles withamnttxtb.TextChanged
        Try
            Dim val As Double
            amntlbl.Text = withamnttxtb.Text
            val = amntlbl.Text

            If val > 999 Then
                amntlbl.Text = val.ToString("###,###.##")
            End If ' the above function will change the textbox numberic and will add camma to amntlbl

            If withamnttxtb.Text = transtotal.Text Then
                savdepbtn.Enabled = True
            Else
                savdepbtn.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub acntxtb_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles acntxtb.TextChanged
        Try
            ' first of all picture boxes should get empty
            imgphot.ImageUrl = "~/Uploads/"
            Image2.ImageUrl = "~/Uploads/"

            '=================================
            Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If


            ''''------------------------------------------------------------------------------------------------
            '   Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
            '  Dim ccn As New SqlConnection(cn)
            If ccn.State = Data.ConnectionState.Closed Then
                ccn.Open()
            End If

            da = New SqlDataAdapter("select Account.cust_id as custid, curr_id, cust_name, cust_sign, cust_photo,  telephone, mobile from account, address, customer where account.cust_id=customer.cust_id and customer.add_id=address.add_id and ac_id=" & acntxtb.Text.ToString(), ccn)
            dt = New DataTable
            da.Fill(dt)

            If dt.Rows.Count > 0 Then
                achname.Text = dt.Rows(0).Item("cust_name")
                teleplbl.Text = dt.Rows(0).Item("telephone")
                contactlbl.Text = dt.Rows(0).Item("mobile")
                currlbl.Text = dt.Rows(0).Item("curr_id")
                CUSTID.Text = dt.Rows(0).Item("custid")

                If dt.Rows(0).Item("cust_photo") Is DBNull.Value = True Then
                Else

                    Dim empimage() As Byte = CType(dt.Rows(0).Item("cust_photo"), Byte())
                    ' Dim ms As New MemoryStream(empimage)
                    'Imagesign.ImageUrl = Image.FromStream(ms)
                    imgphot.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(empimage)

                End If
                If dt.Rows(0).Item("cust_sign") Is DBNull.Value = True Then
                Else

                    Dim empimage() As Byte = CType(dt.Rows(0).Item("cust_sign"), Byte())
                    ' Dim ms As New MemoryStream(empimage)
                    'Imagesign.ImageUrl = Image.FromStream(ms)
                    Image2.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(empimage)

                End If




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
                withamnttxtb.Enabled = False
                achname.Text = "Wrong Account # !!!"


            End If

            ''-------------------------------------------------
            ftntxt.Enabled = True
            otntxtb.Enabled = True
            hntxtbo.Enabled = True
            fhntxtb.Enabled = True
            cntxtb.Enabled = True
            onentxtb.Enabled = True
            fvntxtb.Enabled = True
            tnntxtb.Enabled = True
            twntxtb.Enabled = True
            fyntxtb.Enabled = True
            twontxtb.Enabled = True
            'for calculation if the txt box are empty it will create un handable exception 
            ftttxt.Text = "0"
            otttxtb.Text = "0"
            httxtb.Text = "0" ' so for this reason we will asign zero to total colum textboxes of the all rows
            fhttxtb.Text = "0"
            cttxtb.Text = "0"
            onettxtb.Text = "0"
            fvttxtb.Text = "0"
            tnttxtb.Text = "0"
            twttxtb.Text = "0"
            fyttxtb.Text = "0"
            twottxtb.Text = "0"
            ''''''''''''''''''''''''''' we will also asign zero to all number colum textboxes 
            otntxtb.Text = "0"
            ftntxt.Text = "0"
            hntxtbo.Text = "0"
            fhntxtb.Text = "0"
            cntxtb.Text = "0"
            onentxtb.Text = "0"
            fvntxtb.Text = "0"
            tnntxtb.Text = "0"
            twntxtb.Text = "0"
            fyntxtb.Text = "0"
            twontxtb.Text = "0"
            ''.........................we will also assing zero to all bundle colum textboxes
            otbtxtb.Text = "0"
            ftbtxt.Text = "0"
            fhbtxtb.Text = "0"
            hbtxtb.Text = "0"
            fybtxtb.Text = "0"
            twbtxtb.Text = "0"
            tnbtxtb.Text = "0"
            fvbtxtb.Text = "0"
            twobtxtb.Text = "0"
            onebtxtb.Text = "0"
            cbtxtb.Text = "0"
            '--validation of currency selection and selected account currency
            transtotal.Text = 0 'the overall total of the textbox will erase the defoult amount and will assing zero as we type the new A/C
            amntlbl.Text = "" 'The label which convert the amount will be erased when we type the A/C number 
            If savcuid.Text <> currlbl.Text Then
                Remark.Visible = True
                withamnttxtb.Enabled = False
                Remark.Text = "A/C Currency Does not match with Selected Currency "
            ElseIf savcuid.Text = currlbl.Text Then
                Remark.Visible = False
                Remark.Text = currencyselectordrplist.SelectedValue
                withamnttxtb.Enabled = True
                ' ACCOUNT DENOMINATION HISTORY CODING STARTS HERE......... 'Retrival of denomination details from database 
                b1000.Text = ""
                n1000.Text = ""
                t1000.Text = "" ' first remove the string or number from all texboxes
                da = New SqlDataAdapter("select sum(fthousand) as fthousand, sum(othousand) as othousand, sum(fhundred) as fhundred,  sum(ohundred) as ohundred, sum(fifty) as fifty,  sum(twenty) as twenty,  sum(ten) as ten,  sum(five) as five,  sum(two) as two,  sum(one) as one,  sum(cent) as cent from denomination, transactions where  transactions.trans_id=denomination.trans_id and trans_type=1 and ac_id=" & acntxtb.Text.ToString(), ccn)
                dt = New DataTable
                da.Fill(dt)
                Dim SUM As String = dt.Rows(0).Item("fthousand").ToString + dt.Rows(0).Item("othousand").ToString + dt.Rows(0).Item("fhundred").ToString + dt.Rows(0).Item("ohundred").ToString + dt.Rows(0).Item("fifty").ToString + dt.Rows(0).Item("twenty").ToString + dt.Rows(0).Item("ten").ToString + dt.Rows(0).Item("five").ToString + dt.Rows(0).Item("two").ToString + dt.Rows(0).Item("one").ToString + dt.Rows(0).Item("cent").ToString
                ' If dt.Rows.Count > 0 Then
                If SUM = "" Then
                    SUM = "0"
                End If
                If SUM > 0 Then
                    Dim bb5000 As Integer = dt.Rows(0).Item("fthousand")
                    If bb5000 > 99 Then                                    'for five thousand calculation
                        B5000.Text = Int(bb5000 / 100)
                        N5000.Text = (bb5000 / 100 - B5000.Text) * 100
                        T5000.Text = bb5000 * 5000
                    ElseIf bb5000 < 0 Then
                        B5000.Text = Int(bb5000 / 100) * (-1)
                        N5000.Text = ((bb5000 / 100 - B5000.Text) * 100) * (-1)
                        T5000.Text = (bb5000 * 5000) * (-1)
                    Else
                        N5000.Text = bb5000
                        T5000.Text = bb5000 * 5000
                    End If


                    Dim bb1000 As Integer = dt.Rows(0).Item("othousand") ' for one thousand calculation
                    If bb1000 > 99 Then
                        b1000.Text = Int(bb1000 / 100)
                        n1000.Text = (bb1000 / 100 - b1000.Text) * 100
                        t1000.Text = bb1000 * 1000
                    ElseIf bb1000 < 0 Then
                        b1000.Text = Int(bb1000 / 100) * (-1)
                        n1000.Text = ((bb1000 / 100 - b1000.Text) * 100) * (-1)
                        t1000.Text = (bb1000 * 1000) * (-1)
                    Else
                        n1000.Text = bb1000
                        t1000.Text = bb1000 * 1000
                    End If

                    Dim bb500 As Integer = dt.Rows(0).Item("fhundred")
                    If bb500 > 99 Then                                    'for five hundred calculation
                        b500.Text = Int(bb500 / 100)
                        n500.Text = (bb500 / 100 - b500.Text) * 100
                        t500.Text = bb500 * 500
                    ElseIf bb500 < 0 Then
                        bb500 = bb500 * (-1)
                        b500.Text = Int(bb500 / 100) * (-1)
                        n500.Text = ((bb500 / 100 - b500.Text) * 100) * (-1)
                        t500.Text = (bb500 * 500) * (-1)
                    Else
                        n500.Text = bb500
                        t500.Text = bb500 * 500
                    End If
                    Dim bb100 As Integer = dt.Rows(0).Item("ohundred")
                    If bb100 > 99 Then                                    'for one hundred calculation
                        b100.Text = Int(bb100 / 100)
                        n100.Text = (bb100 / 100 - b100.Text) * 100
                        t100.Text = bb100 * 100
                    ElseIf bb100 < 0 Then
                        b100.Text = Int(bb100 / 100) * (-1)
                        n100.Text = ((bb100 / 100 - b100.Text) * 100) * (-1)
                        t100.Text = (bb100 * 100) * (-1)
                    Else
                        n100.Text = bb100
                        t100.Text = bb100 * 100
                    End If
                    Dim bb50 As Integer = dt.Rows(0).Item("fifty")
                    If bb50 > 99 Then                                    'for fifty calculation
                        b50.Text = Int(bb50 / 100)
                        n50.Text = (bb50 / 100 - b50.Text) * 100
                        t50.Text = bb50 * 50
                    ElseIf bb50 < 0 Then
                        b50.Text = Int(bb50 / 100) * (-1)
                        n50.Text = ((bb50 / 100 - b50.Text) * 100) * (-1)
                        t50.Text = (bb50 * 50) * (-1)
                    Else
                        n50.Text = bb50
                        t50.Text = bb50 * 50
                    End If
                    Dim bb20 As Integer = dt.Rows(0).Item("twenty")
                    If bb20 > 99 Then                                    'for twent calculation
                        b20.Text = Int(bb20 / 100)
                        n20.Text = (bb20 / 100 - b20.Text) * 100
                        t20.Text = bb20 * 20
                    ElseIf bb20 < 0 Then
                        b20.Text = Int(bb20 / 100) * (-1)
                        n20.Text = ((bb20 / 100 - b20.Text) * 100) * (-1)
                        t20.Text = (bb20 * 20) * (-1)
                    Else
                        n20.Text = bb20
                        t20.Text = bb20 * 20
                    End If
                    Dim bb10 As Integer = dt.Rows(0).Item("ten")
                    If bb10 > 99 Then                                    'for ten calculation
                        b10.Text = Int(bb10 / 100)
                        n10.Text = (bb10 / 100 - b10.Text) * 100
                        t10.Text = bb10 * 10
                    ElseIf bb10 < 0 Then
                        b10.Text = Int(bb10 / 100) * (-1)
                        n10.Text = ((bb10 / 100 - b10.Text) * 100) * (-1)
                        t10.Text = (bb10 * 10) * (-1)
                    Else
                        n10.Text = bb10
                        t10.Text = bb10 * 10
                    End If
                    Dim bb5 As Integer = dt.Rows(0).Item("five")
                    If bb5 > 99 Then                                    'for five calculation
                        b5.Text = Int(bb5 / 100)
                        n5.Text = (bb5 / 100 - b5.Text) * 100
                        t5.Text = bb5 * 5
                    ElseIf bb5 < 0 Then
                        b5.Text = Int(bb5 / 100) * (-1)
                        n5.Text = ((bb5 / 100 - b5.Text) * 100) * (-1)
                        t5.Text = (bb5 * 5) * (-1)
                    Else
                        n5.Text = bb5
                        t5.Text = bb5 * 5
                    End If
                    Dim bb2 As Integer = dt.Rows(0).Item("two")
                    If bb2 > 99 Then                                    'for two calculation
                        b2.Text = Int(bb2 / 100)
                        n2.Text = (bb2 / 100 - b2.Text) * 100
                        t2.Text = bb2 * 2
                    ElseIf bb2 < 0 Then
                        b2.Text = Int(bb2 / 100) * (-1)
                        n2.Text = ((bb2 / 100 - b2.Text) * 100) * (-1)
                        t2.Text = (bb2 * 2) * (-1)
                    Else
                        n2.Text = bb2
                        t2.Text = bb2 * 2
                    End If
                    Dim bb1 As Integer = dt.Rows(0).Item("one")
                    If bb1 > 99 Then                                    'for one calculation
                        b1.Text = Int(bb1 / 100)
                        n1.Text = (bb1 / 100 - b1.Text) * 100
                        t1.Text = bb1 * 1
                    ElseIf bb1 < 0 Then
                        b1.Text = Int(bb1 / 100) * (-1)
                        n1.Text = ((bb1 / 100 - b1.Text) * 100) * (-1)
                        t1.Text = (bb1 * 1) * (-1)
                    Else
                        n1.Text = bb1
                        t1.Text = bb1 * 1
                    End If
                    Dim cb1 As Integer = dt.Rows(0).Item("cent")
                    If cb1 > 99 Then                                    'for one calculation
                        bc.Text = Int(cb1 / 100)
                        nc.Text = (cb1 / 100 - b1.Text) * 100
                        tc.Text = cb1 * 0.01
                    ElseIf bb1 < 0 Then
                        bc.Text = Int(cb1 / 100) * (-1)
                        nc.Text = ((cb1 / 100 - b1.Text) * 100) * (-1)
                        tc.Text = (cb1 * 0.01) * (-1)
                    Else
                        nc.Text = cb1
                        tc.Text = cb1 * 0.01
                    End If
                    ' ACCOUNT DENOMINATION HISTORY CODING FINISHES HERE........................

                End If

            End If

            '======================================
            Dim Photo, Signaure As String

            'Photo = CUSTID.Text + "p.jpg"
            'Signaure = CUSTID.Text + "s.jpg"

            '  imgphot.ImageUrl = "~/Uploads/" + Photo
            ' Image2.ImageUrl = "~/Uploads/" + Signaure

            '======================================

            '  cmd = New SqlCommand("Select cust_photo from customer, account where customer.cust_id=account.cust_id and ac_id=" & acntxtb.Text, ccn)
            'Dim img As SqlDataReader = cmd.ExecuteReader()
            'ccn.Open()
            'While img.Read()
            'Dim imageName As String = img(0).ToString()
            ' Dim imageBytes As Byte() = DirectCast(img(0), Byte())
            '  Dim imageStream As New MemoryStream()
            '   imageStream.Write(imageBytes, 0, imageBytes.Length)
            '    Dim imageBitmap As New Bitmap(imageStream)
            '     Response.ContentType = "image/jpeg"
            '      imageBitmap.Save("D:\Images\" + imageName)
            '       imgphot.ImageUrl = "D:\Images\" + imageName
            '    End While
            '     If ccn.State = Data.ConnectionState.Open Then

            'ccn.Close()

            ' End If

        Catch ex As Exception
            MsgBox(ex.Message)
        Finally
        End Try
    End Sub

    Protected Sub withbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles savdepbtn.Click
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
            With cmd.Parameters
                ' here the current balance will be retrived and then it will be modified later
                cmd = New SqlCommand("Select ac_balance from account where ac_id=" & acntxtb.Text.ToString, ccn)
                Dim acbalance As Integer
                acbalance = cmd.ExecuteScalar()
                acbalance = acbalance + amntlbl.Text
                cmd = New SqlCommand("update account set ac_balance=" & acbalance.ToString & "where ac_id=" & acntxtb.Text.ToString, ccn)
                cmd.ExecuteNonQuery()
                cmd = New SqlCommand("insert into transactions(trans_id, trans_type, trans_desc, trans_date, trans_amount, bal_af_trans, ac_id, opr_id) Values(@trans_id, @trans_type, @trans_desc, @trans_date, @trans_amount, @bal_af_trans, @ac_id, @opr_id)", ccn)
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel.Text)
                cmd.Parameters.AddWithValue("@trans_type", "1")
                cmd.Parameters.AddWithValue("@trans_desc", parttxtb.Text)

                cmd.Parameters.AddWithValue("@trans_date", depdate)
                cmd.Parameters.AddWithValue("@trans_amount", withamnttxtb.Text)
                cmd.Parameters.AddWithValue("@bal_af_trans", acbalance)
                cmd.Parameters.AddWithValue("@ac_id", acntxtb.Text)
                cmd.Parameters.AddWithValue("@opr_id", oprid.Text)
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
                End If
                cmd = New SqlCommand("insert into deposit(dep_id, trans_id) Values(@dep_id, @trans_id)", ccn)
                cmd.Parameters.AddWithValue("@dep_id", dep)
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel.Text)
            End With
            cmd.ExecuteNonQuery()
            ' for transaction denomiantion we will code here +++++++++++++++++++++++++++++++++++++
            cmd = New SqlCommand("Select MAX(deno_id) as deno_id from denomination", ccn)
            Dim denoid As Object
            denoid = cmd.ExecuteScalar()
            If denoid Is DBNull.Value = True Then
                denoid = 1
            Else
                denoid += 1
            End If
            Dim currenyid As Integer
            If currlbl.Text = "USD" Then
                currenyid = 10
            ElseIf currlbl.Text = "AFN" Then
                currenyid = 20
            ElseIf currlbl.Text = "PKR" Then
                currenyid = 30
            ElseIf currlbl.Text = "EURO" Then
                currenyid = 40
            End If
            With cmd.Parameters
                cmd = New SqlCommand("insert into denomination(deno_id, fthousand, othousand, fhundred, ohundred, fifty, twenty, ten, five, two, one, cent, curr_id, trans_id) Values(@deno_id, @fthousand, @othousand, @fhundred, @ohundred, @fifty, @twenty, @ten, @five, @two, @one, @cent, @curr_id, @trans_id)", ccn)
                cmd.Parameters.AddWithValue("@deno_id", denoid)
                cmd.Parameters.AddWithValue("@fthousand", ftttxt.Text / 5000)
                cmd.Parameters.AddWithValue("@othousand", otttxtb.Text / 1000)
                cmd.Parameters.AddWithValue("@fhundred", fhttxtb.Text / 500)
                cmd.Parameters.AddWithValue("@ohundred", httxtb.Text / 100)
                cmd.Parameters.AddWithValue("@fifty", fyttxtb.Text / 50)
                cmd.Parameters.AddWithValue("@twenty", twttxtb.Text / 20)
                cmd.Parameters.AddWithValue("@ten", tnttxtb.Text / 10)
                cmd.Parameters.AddWithValue("@five", fvttxtb.Text / 5)
                cmd.Parameters.AddWithValue("@two", twottxtb.Text / 2)
                cmd.Parameters.AddWithValue("@one", onettxtb.Text / 1)
                cmd.Parameters.AddWithValue("@cent", cttxtb.Text / 0.01)
                cmd.Parameters.AddWithValue("@curr_id", currenyid)
                cmd.Parameters.AddWithValue("@trans_id", tranidlabel.Text) ' its transaction lbl
            End With
            cmd.ExecuteNonQuery()
            If tranidlabel.Text = "" Then
                tranidlabel.Text = "NotSaved"
            Else
                currencyselectordrplist.Enabled = False
                otntxtb.AutoPostBack = False
                otntxtb.Enabled = False
                hntxtbo.Enabled = False
                fhntxtb.Enabled = False
                cntxtb.Enabled = False
                onentxtb.Enabled = False
                fvntxtb.Enabled = False
                tnntxtb.Enabled = False
                twntxtb.Enabled = False
                fyntxtb.Enabled = False
                twontxtb.Enabled = False
                acntxtb.Enabled = False
                withamnttxtb.Enabled = False
                parttxtb.Enabled = False
                savdepbtn.Enabled = False
                CheckBox1.Enabled = False
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try





    End Sub

    Protected Sub CheckBox1_CheckedChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles CheckBox1.CheckedChanged
        Try
            If CheckBox1.Checked And achname.Text <> "" Then
                Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
                Dim ccn As New SqlConnection(cn)
                If ccn.State = Data.ConnectionState.Closed Then
                    ccn.Open()
                End If
                da = New SqlDataAdapter("select cust_name from account, customer where account.cust_id=customer.cust_id and ac_id=" & acntxtb.Text.ToString(), ccn)
                dt = New DataTable
                da.Fill(dt)
                parttxtb.Text = "Cash Deposit By " + dt.Rows(0).Item("cust_name") + parttxtb.Text
            Else
                parttxtb.Text = ""
            End If
        Catch ex As Exception
            MsgBox(ex.Message)
        End Try
    End Sub

    Protected Sub DropDownList1_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles currencyselectordrplist.SelectedIndexChanged

        Try
            If currencyselectordrplist.SelectedValue = 40 Then ' EURO
                savcuid.Text = "EUR" ' value of drplist1 will be assing to savuid lbl variable and remarlbl wont be visable coz its enable propery is false
                acntxtb.Text = "" 'Account number textbox will be get empty when we select the Currency
                achname.Text = "" ''Account name textbox will be get empty when we select the Currency
                withamnttxtb.Text = "" ' wth amount txtbox will get empty aswell
                withamnttxtb.Enabled = False ' wth amount txtbox will get disable and as we type a correct ac number it will get enable
                Remark.Visible = False
                B5000.Visible = False
                N5000.Visible = False
                T5000.Visible = False
                b1000.Visible = False
                n1000.Visible = False
                t1000.Visible = False


                ftbtxt.Visible = False ' disable 5000, 1000, texboxes
                ftntxt.Visible = False
                ftttxt.Visible = False
                otbtxtb.Visible = False
                otntxtb.Visible = False
                otttxtb.Visible = False
                b500.Visible = True
                n500.Visible = True
                t500.Visible = True
                fhbtxtb.Visible = True
                fhntxtb.Visible = True
                fhttxtb.Visible = True
                acntxtb.Enabled = True 'if currency is selected then account txtbox will get active other wise
            ElseIf currencyselectordrplist.SelectedValue = 30 Then 'PKR
                ' active all the five thousand, one thousand and five hundred textboxes
                savcuid.Text = "PKR" 'value of drplist1 will be assing to savuid lbl variable and remarlbl wont be visable coz its enable propery is false
                acntxtb.Text = ""
                achname.Text = ""
                withamnttxtb.Text = ""
                withamnttxtb.Enabled = False
                Remark.Visible = False
                B5000.Visible = True
                N5000.Visible = True
                T5000.Visible = True
                b1000.Visible = True
                n1000.Visible = True
                t1000.Visible = True
                b500.Visible = True
                n500.Visible = True
                t500.Visible = True
                ftbtxt.Visible = True
                ftntxt.Visible = True
                ftttxt.Visible = True
                otbtxtb.Visible = True
                otntxtb.Visible = True
                otttxtb.Visible = True
                fhbtxtb.Visible = True
                fhntxtb.Visible = True
                fhttxtb.Visible = True
                acntxtb.Enabled = True 'if currency is selected then account txtbox will get active other wise
            ElseIf currencyselectordrplist.SelectedValue = 20 Then
                savcuid.Text = "AFN" 'value of drplist1 will be assing to savuid lbl variable and remarlbl wont be visable coz its enable propery is false"
                acntxtb.Text = ""
                achname.Text = ""
                withamnttxtb.Text = ""
                withamnttxtb.Enabled = False
                Remark.Visible = False
                B5000.Visible = False
                N5000.Visible = False
                T5000.Visible = False
                ftbtxt.Visible = False
                ftntxt.Visible = False
                ftttxt.Visible = False
                b1000.Visible = True
                n1000.Visible = True
                t1000.Visible = True
                b500.Visible = True
                n500.Visible = True
                t500.Visible = True
                otbtxtb.Visible = True
                otntxtb.Visible = True
                otttxtb.Visible = True
                fhbtxtb.Visible = True
                fhntxtb.Visible = True
                fhttxtb.Visible = True
                acntxtb.Enabled = True 'if currency is selected then account txtbox will get active other wise
            ElseIf currencyselectordrplist.SelectedValue = 10 Then
                savcuid.Text = "USD" 'value of drplist1 will be assing to savuid lbl variable and remarlbl wont be visable coz its enable propery is false
                acntxtb.Text = ""
                achname.Text = ""
                withamnttxtb.Text = ""
                withamnttxtb.Enabled = False
                Remark.Visible = False
                B5000.Visible = False
                N5000.Visible = False
                T5000.Visible = False
                b1000.Visible = False
                n1000.Visible = False
                t1000.Visible = False
                b500.Visible = False
                n500.Visible = False
                t500.Visible = False
                ftbtxt.Visible = False
                ftntxt.Visible = False
                ftttxt.Visible = False
                otbtxtb.Visible = False
                otntxtb.Visible = False
                otttxtb.Visible = False
                fhbtxtb.Visible = False
                fhntxtb.Visible = False
                fhttxtb.Visible = False
                acntxtb.Enabled = True 'if currency is selected then account txtbox will get active other wise
            ElseIf currencyselectordrplist.SelectedValue = 1 Then
                acntxtb.Enabled = False 'if currency is selected then account txtbox will get active other wise
            End If
        Catch EX As Exception
            MsgBox(EX.Message)
        End Try
    End Sub

    Protected Sub ftntxt_TextChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles ftntxt.TextChanged
        Try
            Dim bundle As Integer
            Dim number As Double
            If ftntxt.Text.Contains(",") Or ftntxt.Text.Contains("'") Or ftntxt.Text.Contains("--") Then
                ftntxt.Text = ""
                ftttxt.Text = ""
                ftbtxt.Text = ""
            ElseIf ftntxt.Text > 99 Then
                ftttxt.Text = "0"
                ftbtxt.Text = "0"
                bundle = Int(ftntxt.Text / 100) '' it is type is change to int coz it will create problem as we substract number -bundle
                '' if the value is greater then 149 then it will change  it to 200 exp 150/100= 1.5 then it will be change to 2
                ftbtxt.Text = bundle '' it is NUMBER TEXTBOX VALUE
                number = (ftntxt.Text / 100)
                ftntxt.Text = Math.Round(100 * (number - Int(bundle))) ''IT IS number TEXTBOX
                ftttxt.Text = (ftbtxt.Text * 100 * 5000) + (ftntxt.Text * 5000) ''IT IS TOTAL TEXTBOX OF THE ROW 5 THOUSAND

            ElseIf ftntxt.Text < 0 Then '' if values is negative then 
                ftttxt.Text = "0"
                ftbtxt.Text = "0"    '' bellow ftntxt have negative value multiplied by -1 it will become positive
                ftntxt.Text = ftntxt.Text * (-1) ' so it its value is negative it will changed to postive and after calculaton backed it will chanage to negaative
                bundle = Int(ftntxt.Text / 100) '' IN Same case define above we will first chanage the value into positive then 
                '' we wil back transfer the value into negative while assigning to textbox.text,  in the same case int(-1.5) will change to -2
                ftbtxt.Text = (bundle) * (-1) '' here postive value are multiplied with negative and change to negative
                number = (ftntxt.Text / 100)
                ftntxt.Text = Math.Round((100 * (number - Int(bundle))) * (-1)) '' here postive value are multiplied with negative and change to negative
                ftttxt.Text = (ftbtxt.Text * 100 * 5000) + (ftntxt.Text * 5000)

            Else
                ftttxt.Text = "0"
                ftbtxt.Text = "0"
                ftttxt.Text = (ftntxt.Text * 5000)
            End If
            Dim transtotall As Double
            transtotall = (Int(ftttxt.Text) + Int(otttxtb.Text) + Int(fhttxtb.Text) + Int(httxtb.Text) + Int(fyttxtb.Text) + Int(twttxtb.Text) + Int(tnttxtb.Text) + Int(fvttxtb.Text) + Int(twottxtb.Text) + Int(onettxtb.Text) + (cttxtb.Text))
            transtotal.Text = transtotall
        Catch EX As Exception
            MsgBox(EX.Message)
        End Try
    End Sub


    Protected Sub Print_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Print.Click
        Response.Redirect("Voucher.aspx?transaction=" + tranidlabel.Text, False)

    End Sub

    Protected Sub Button1_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button1.Click

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
        '=============================

    End Sub
End Class
