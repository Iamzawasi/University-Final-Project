Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports System.Drawing.Image
Imports System.Net.NetworkInformation

Partial Class AccountOpen
    Inherits System.Web.UI.Page
    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Dim phot As String
    Dim signatur As Byte() = Nothing
    Function getMacAddress()
        Dim nics() As NetworkInterface = NetworkInterface.GetAllNetworkInterfaces()
        Return nics(0).GetPhysicalAddress.ToString
    End Function
    Protected Sub Dropdnday_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles Dropdnday.SelectedIndexChanged
        dropdnyear.Items.Clear()
        Dim emptty As String
        dropdnyear.Items.Add(emptty)
        For yer As Integer = 0 To 99
            dropdnyear.Items.Add(DateTime.Now.Year - yer)
        Next
    End Sub
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        idlabel.Text = Request.QueryString("custid")

        '==========================================================================================
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
        '============================================================================
        If txtname.Text = "" Then
            Dim custidd As Integer
            custidd = Request.QueryString("custid")
            da = New SqlDataAdapter("select * from address,customer,occupation where address.add_id=customer.add_id and customer.occup_id=occupation.occup_id and cust_id=" & custidd, ccn)
            dt = New DataTable
            da.Fill(dt)
            If dt.Rows.Count > 0 Then

                txtplrdesign.Text = dt.Rows(0).Item("designation")

                txtincoms.Text = dt.Rows(0).Item("income_source").ToString
                txtannl.Text = dt.Rows(0).Item("annual_income").ToString
                txteplrname.Text = dt.Rows(0).Item("employer_name").ToString
                txtplradd.Text = dt.Rows(0).Item("employer_add").ToString
                txteplrtel.Text = dt.Rows(0).Item("employer_contact").ToString
                If dt.Rows(0).Item("cust_photo") Is DBNull.Value = True Then
                Else

                    Dim empimage() As Byte = CType(dt.Rows(0).Item("cust_photo"), Byte())
                    ' Dim ms As New MemoryStream(empimage)
                    'Imagesign.ImageUrl = Image.FromStream(ms)
                    Imagephoto.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(empimage)

                End If
                If dt.Rows(0).Item("cust_sign") Is DBNull.Value = True Then
                Else

                    Dim empimage() As Byte = CType(dt.Rows(0).Item("cust_sign"), Byte())
                    ' Dim ms As New MemoryStream(empimage)
                    'Imagesign.ImageUrl = Image.FromStream(ms)
                    Imagesign.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(empimage)

                End If
                addidlbl.Text = dt.Rows(0).Item("add_id").ToString
                txtpadd.Text = dt.Rows(0).Item("perm_add").ToString
                txtcadd.Text = dt.Rows(0).Item("current_add").ToString
                txtbemail.Text = dt.Rows(0).Item("e_mail").ToString
                Teletxtbox.Text = dt.Rows(0).Item("telephone").ToString
                Mobiletxtb.Text = dt.Rows(0).Item("mobile").ToString

                txtname.Text = dt.Rows(0).Item("cust_name").ToString
                txtfname.Text = dt.Rows(0).Item("cust_fname").ToString
                Dim gender As String = dt.Rows(0).Item("cust_gender").ToString

                drplistgender.SelectedItem.Text = gender

                txtnid.Text = dt.Rows(0).Item("nid").ToString

                Dim dob As Date = dt.Rows(0).Item("cust_dob").ToString
                '==================================================
                dropdnmonth.SelectedItem.Value = dob.Month.ToString
                Dropdnday.SelectedItem.Value = dob.Day.ToString
                dropdnyear.SelectedItem.Value = dob.Year.ToString
                '==================================================
                occupidd.Text = dt.Rows(0).Item("occup_id").ToString

                addidlbl.Text = dt.Rows(0).Item("add_id").ToString
                oprid.Text = dt.Rows(0).Item("opr_id").ToString
                SAVE.Enabled = False
                updtbtn.Visible = True

            End If
        End If


        '=============================================================================
    End Sub

    Protected Sub dropdnyear_SelectedIndexChanged(ByVal sender As Object, ByVal e As System.EventArgs) Handles dropdnyear.SelectedIndexChanged
        Label4.Text = dropdnyear.SelectedItem.Value & "/" & dropdnmonth.SelectedItem.Value & "/" & Dropdnday.SelectedItem.Value

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

    Protected Sub Button2_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles SAVE.Click
        Try
            '''''''-------for photo--------------------------------
            Dim img As FileUpload = CType(filephoto, FileUpload)
            Dim imgByte As Byte() = Nothing
            If img.HasFile AndAlso Not img.PostedFile Is Nothing Then
                'To create a PostedFile
                Dim File As HttpPostedFile = filephoto.PostedFile
                'Create byte Array with file len
                imgByte = New Byte(File.ContentLength - 1) {}
                'force the control to load data in array
                File.InputStream.Read(imgByte, 0, File.ContentLength)
            End If
            ''----------------for signature----------------------------------
            Dim imgg As FileUpload = CType(filesign, FileUpload)
            Dim imggByte As Byte() = Nothing
            If imgg.HasFile AndAlso Not imgg.PostedFile Is Nothing Then
                'To create a PostedFile
                Dim File As HttpPostedFile = filesign.PostedFile
                'Create byte Array with file len
                imggByte = New Byte(File.ContentLength - 1) {}
                'force the control to load data in array
                File.InputStream.Read(imggByte, 0, File.ContentLength)
            End If

            '''''''''--------------------------------------
            If filephoto.HasFile And filesign.HasFile Then
                Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
                Dim ccn As New SqlConnection(cn)
                If ccn.State = Data.ConnectionState.Closed Then
                    ccn.Open()
                End If
                '''' for occupation we will have the following details
                cmd = New SqlCommand("Select MAX(occup_id) as occup_id from occupation", ccn)
                Dim occupid As Object
                occupid = cmd.ExecuteScalar()
                If occupid Is DBNull.Value = True Then
                    occupid = 1
                Else
                    occupid += 1
                End If
                occupidd.Text = Val(occupid)
                With cmd.Parameters
                    cmd = New SqlCommand("insert into occupation(occup_id, employer_name, employer_add, employer_contact,  designation ,annual_income, income_source) Values(@occup_id, @employer_name, @employer_add, @employer_contact, @designation, @annual_income, @income_source)", ccn)
                    cmd.Parameters.AddWithValue("@occup_id", occupidd.Text)

                    cmd.Parameters.AddWithValue("@designation", txtplrdesign.Text)
                    cmd.Parameters.AddWithValue("@income_source", txtincoms.Text)
                    cmd.Parameters.AddWithValue("@annual_income", txtannl.Text)
                    cmd.Parameters.AddWithValue("@employer_name", txteplrname.Text)
                    cmd.Parameters.AddWithValue("@employer_add", txtplradd.Text)
                    cmd.Parameters.AddWithValue("@employer_contact", txteplrtel.Text)
                End With
                cmd.ExecuteNonQuery()
                ''For customer address we are going to Code here.
                cmd = New SqlCommand("Select MAX(add_id) as add_id from address", ccn)
                Dim caddress As Object
                caddress = cmd.ExecuteScalar()
                If caddress Is DBNull.Value = True Then
                    caddress = 1
                Else
                    caddress += 1
                End If
                addidlbl.Text = Val(caddress)
                With cmd.Parameters
                    cmd = New SqlCommand("insert into address(add_id, perm_add, current_add, e_mail, telephone, mobile) Values(@add_id, @perm_add, @current_add, @e_mail, @telephone, @mobile)", ccn)
                    cmd.Parameters.AddWithValue("@add_id", addidlbl.Text)
                    cmd.Parameters.AddWithValue("@perm_add", txtpadd.Text)
                    cmd.Parameters.AddWithValue("@current_add", txtcadd.Text)
                    cmd.Parameters.AddWithValue("@e_mail", txtbemail.Text)
                    cmd.Parameters.AddWithValue("@telephone", Teletxtbox.Text)
                    cmd.Parameters.AddWithValue("@mobile", Mobiletxtb.Text)
                End With
                cmd.ExecuteNonQuery()
                '''''''''--------------------------------------------------------------------------------

                cmd = New SqlCommand("Select MAX(cust_id) as cust_id from customer", ccn)
                Dim obj As Object
                obj = cmd.ExecuteScalar()
                If obj Is DBNull.Value = True Then
                    obj = 1
                Else
                    obj += 1
                End If
                idlabel.Text = Val(obj)

                Dim datte As String
                datte = dropdnyear.SelectedItem.Value & "/" & dropdnmonth.SelectedItem.Value & "/" & Dropdnday.SelectedItem.Value
                'cmd = New SqlCommand("insert into customer(cust_id, cust_name, cust_fname, cust_gender, nid, cust_dob, cust_sign, cust_photo, occup_id, add_id, opr_id) Values(@cust_id, @cust_name, @cust_fname, @cust_gender, @nid, @cust_dob, @cust_sign, @cust_photo, @occup_id, @add_id, @opr_id)", ccn)
                With cmd.Parameters
                    cmd = New SqlCommand("insert into customer(cust_id, cust_name, cust_fname, cust_gender, nid, cust_dob, cust_sign, cust_photo,  add_id, occup_id, opr_id) VALUES (@cust_id, @cust_name, @cust_fname, @cust_gender, @nid, @cust_dob, @cust_sign,  @cust_photo, @add_id, @occup_id, @opr_id)", ccn)
                    cmd.Parameters.AddWithValue("@cust_id", obj)
                    cmd.Parameters.AddWithValue("@cust_name", txtname.Text)
                    cmd.Parameters.AddWithValue("@cust_fname", txtfname.Text)
                    cmd.Parameters.AddWithValue("@cust_gender", drplistgender.SelectedItem.Text)
                    cmd.Parameters.AddWithValue("@nid", txtnid.Text)
                    cmd.Parameters.AddWithValue("@cust_dob", datte)
                    cmd.Parameters.AddWithValue("@occup_id", occupidd.Text)
                    cmd.Parameters.AddWithValue("@cust_photo", imgByte)
                    cmd.Parameters.AddWithValue("@cust_sign", imggByte)
                    cmd.Parameters.AddWithValue("@add_id", addidlbl.Text)
                    cmd.Parameters.AddWithValue("@opr_id", oprid.Text)
                End With

                cmd.ExecuteNonQuery()


                Response.Redirect("NewAccount.aspx?cust_id=" + idlabel.Text, False)
            ElseIf txtname.Text = "" Or Label4.Text = "" Then

            Else
                Label3.Text = "Choose photo and signature again and do not press preview"
            End If
        Catch ex As Exception
            MsgBox(ex.Message)

        End Try
    End Sub
    Protected Sub Button3_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles Button3.Click
        If filephoto.HasFile Then
            Dim filename As String = System.IO.Path.GetFileName(filephoto.PostedFile.FileName)

            filephoto.PostedFile.SaveAs(Server.MapPath(("~/Uploads/" + filename)))
            Imagephoto.ImageUrl = "~/Uploads/" + filename


        End If
        ' files previewed files will be saved into upload folders


       



        '//'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''now for signature code goes here
        If filesign.HasFile Then
            Dim binReader As New BinaryReader(filesign.PostedFile.InputStream)
            Dim length As Integer = filesign.PostedFile.ContentLength
            signatur = binReader.ReadBytes(length)
            Dim signature As String = System.IO.Path.GetFileName(filesign.PostedFile.FileName)
            filesign.PostedFile.SaveAs(Server.MapPath(("~/Uploads/" + signature)))
            Imagesign.ImageUrl = "~/Uploads/" + signature
            phot = "~/Uploads/" + signature.ToString
        End If
    End Sub

    Protected Sub updtbtn_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles updtbtn.Click
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        da = New SqlDataAdapter("select add_id, occup_id  from customer where cust_id=" & idlabel.Text, ccn)
        dt = New DataTable
        da.Fill(dt)
        If dt.Rows.Count > 0 Then
            Dim addid As String = dt.Rows(0).Item("add_id")
            Dim occpid As String = dt.Rows(0).Item("occup_id")


            Dim datte As String
            datte = dropdnyear.SelectedItem.Value & "/" & dropdnmonth.SelectedItem.Value & "/" & Dropdnday.SelectedItem.Value
            cmd = New SqlCommand("update customer set cust_name=" & "'" & txtname.Text & "'" & ", cust_fname=" & "'" & txtfname.Text & "'" & _
                                 ", cust_gender=" & "'" & drplistgender.SelectedItem.Text & "'" & ",nid=" & "'" & txtnid.Text & "'" & ", cust_dob=" & "'" & datte & "'" & _
                                  ", customer.opr_id=" & "'" & oprid.Text & "'" & "where cust_id=" & idlabel.Text, ccn)
            cmd.ExecuteNonQuery()
            cmd = New SqlCommand("update address set perm_add=" & "'" & txtpadd.Text & "'" & ",current_add=" & "'" & txtcadd.Text & "'" & _
                                  ", e_mail=" & "'" & txtbemail.Text & "'" & ", telephone=" & "'" & Teletxtbox.Text & "'" & ", mobile=" & "'" & Mobiletxtb.Text & "'" & "where  add_id=" & addid, ccn)
            cmd.ExecuteNonQuery()

            cmd = New SqlCommand("update occupation set employer_name=" & "'" & txteplrname.Text & "'" & ",employer_add=" & "'" & txtplradd.Text & "'" & _
                              ", employer_contact=" & "'" & txteplrtel.Text & "'" & ", designation=" & "'" & txtplrdesign.Text & "'" & ", income_source=" & "'" & txtincoms.Text & "'" & _
                              ", annual_income=" & "'" & txtannl.Text & "'" & " where occup_id=" & occpid, ccn)
            cmd.ExecuteNonQuery()
            MsgBox("CUSTOMER UPDATED")
            Response.Redirect("welcome.aspx")
        End If
    End Sub
End Class
