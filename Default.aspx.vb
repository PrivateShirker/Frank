Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim ws As New aftacService
        Dim ip As String = ""

        If Not IsPostBack Then
            ip = Server.HtmlEncode(Request.UserHostAddress)
        End If

        If Session("LoggedOn") <> 1 Then
            Session("LoggedOn") = 0
            Session("myID") = 0
        End If

        'If Session("LoggedOn") = 0 Then
        '    'ws.FC_AddHit(ip)
        '    Session("myID") = ws.FC_GetTopHit()
        '    Session("LoggedOn") = 1
        '    btnRemoveHit.Visible = True
        'Else
        '    btnRemoveHit.Visible = ws.FC_IDRemoved(Session("myID"))
        'End If

        lblGoodHits.Text = "Good Hits: " & ws.FC_Good_Hits().ToString

    End Sub

    Protected Sub btnRemoveHit_Click(sender As Object, e As EventArgs)
        Dim ws As New aftacService

        ws.FC_RemoveHit(Session("myID"))
        lblGoodHits.Text = "Good Hits: " & ws.FC_Good_Hits().ToString
        btnRemoveHit.Visible = False

    End Sub
End Class