Public Class DailyTotals
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ds As New DataSet
        Dim ws As New aftacService

        ws.FC_DailyTotals(ds)

        gvTotals.DataSource = ds.Tables(0)
        gvTotals.DataBind()

    End Sub

    Protected Sub btnReturn_Click(sender As Object, e As EventArgs)
        Response.Redirect("Default.aspx")
    End Sub
End Class