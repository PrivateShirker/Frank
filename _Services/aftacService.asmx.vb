Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.ComponentModel
Imports System.Data.SqlClient

' To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line.
' <System.Web.Script.Services.ScriptService()> _
<System.Web.Services.WebService(Namespace:="http://Seagullusa.net/")> _
<System.Web.Services.WebServiceBinding(ConformsTo:=WsiProfiles.BasicProfile1_1)> _
<ToolboxItem(False)> _
Public Class aftacService
    Inherits System.Web.Services.WebService
    Private cs As String = My.Settings.ComString

    <WebMethod()> Sub FC_RemoveHit(id As Int32)
        Dim sql As String = "Exec FC_RemoveHit " & id.ToString

        Run_Sql(sql)
    End Sub

    <WebMethod()> Function FC_GetLastHit() As Int32
        Dim ds As New DataSet
        Dim sql As String = "Exec FC_GetLastHit"

        Get_Dataset(sql, ds)

        Return ds.Tables(0).Rows(0).Item(0)

    End Function

    <WebMethod()> Function FC_IDRemoved(id As Int32) As Boolean
        Dim Sql As String = "Exec FC_IDRemoved " & id.ToString
        Dim ds As New DataSet

        Get_Dataset(Sql, ds)

        If ds.Tables(0).Rows.Count > 0 Then
            Return True
        Else
            Return False
        End If

    End Function

    <WebMethod()> Sub FC_IPsByDay(ByVal ds As DataSet)
        Dim sql As String = "Exec FC_IPsByDay"

        Get_Dataset(sql, ds)
    End Sub

    <WebMethod()> Sub FC_DailyTotals(ByVal ds As DataSet)
        Dim sql As String = "Exec FC_HitsbyDay"

        Get_Dataset(sql, ds)
    End Sub

    <WebMethod()> Function FC_GetTopHit() As Int32
        Dim Sql As String = "Exec FC_GetTopHit"
        Dim ds As New DataSet

        Get_Dataset(Sql, ds)

        Return ds.Tables(0).Rows(0).Item(0)

    End Function

    <WebMethod()> Sub FC_AddHit(ip As String)
        Dim Sql As String = "Exec FC_InsertHit '" & ip & "'"
        Dim ds As New DataSet

        Get_Dataset(Sql, ds)

    End Sub

    <WebMethod()> Function FC_HitCount() As Int32
        Dim Sql As String = "Exec FC_HitCount"
        Dim ds As New DataSet

        Try
            Get_Dataset(Sql, ds, "Hits")
            Return ds.Tables("hits").Rows(0).Item("Cnt")
        Catch
            Return 0
        End Try

    End Function

    <WebMethod()> Function FC_Good_Hits() As Int32
        Dim Sql As String = "Exec FC_Good_Hits"
        Dim ds As New DataSet

        Try
            Get_Dataset(Sql, ds, "Hits")
            Return ds.Tables("hits").Rows(0).Item("Cnt")
        Catch
            Return 0
        End Try

    End Function


    Private Sub Get_Dataset(ByVal sql As String, ByRef ds As DataSet, Optional ByVal SN As String = "Data")
        'Will return a dataset in accordance with the sql statement

        Dim cn As New SqlConnection
        Dim da As SqlDataAdapter

        cn.ConnectionString = cs
        cn.Open()
        da = New SqlDataAdapter(sql, cn)
        da.Fill(ds, SN)
        cn.Close()

    End Sub

    Private Sub Run_Sql(ByVal S As String)
        'Will run a sql statement with no return value
        Dim cmd As New SqlCommand
        Dim cn As New SqlConnection

        cn.ConnectionString = cs
        cn.Open()
        cmd.Connection = cn
        cmd.CommandType = CommandType.Text
        cmd.CommandText = S
        cmd.ExecuteNonQuery()
        cn.Close()

    End Sub

End Class