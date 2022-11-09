Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Data
Imports System.IO
Imports CrystalDecisions.CrystalReports.Engine

Partial Class transferreportform
    Inherits System.Web.UI.Page

    Dim da As SqlDataAdapter
    Dim cmd As SqlCommand
    Dim dt As DataTable
    Protected Sub CrystalReportViewer3_Init(ByVal sender As Object, ByVal e As System.EventArgs) Handles CrystalReportViewer3.Init

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim cn As String = ConfigurationManager.ConnectionStrings("Dbconnection").ConnectionString
        Dim ccn As New SqlConnection(cn)
        If ccn.State = Data.ConnectionState.Closed Then
            ccn.Open()
        End If
        'Dim fromdate As String
        'fromdate = dropdnyear0.SelectedItem.Value & "/" & dropdnmonth0.SelectedItem.Value & "/" & Dropdnday0.SelectedItem.Value
        'Dim todate As String
        'todate = dropdnyear.SelectedItem.Value & "/" & dropdnmonth.SelectedItem.Value & "/" & Dropdnday.SelectedItem.Value

        da = New SqlDataAdapter("Select trfd_id, trans_date, trans_amount, opr_id from transfer, transactions where transactions.trans_id=transfer.with_id", ccn)

        dt = New DataTable
        da.Fill(dt)
        Dim Report As New ReportDocument
        'If Not Session("dt") Is Nothing Then
        ' ds = Session("dt")
        'Report.SetDataSource(dt)
        ' CrystalReportSource2.Report = dt

        CrystalReportViewer3.ReportSource = CrystalReportSource1
        CrystalReportViewer3.ReportSource = dt
        CrystalReportViewer3.RefreshReport()
        CrystalReportViewer3.DataBind()
        GridView1.DataSource = dt
        GridView1.DataBind()
        ' Else
        'End If
    End Sub
End Class
