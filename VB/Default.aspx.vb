Imports System
Imports System.Collections.Generic
Imports System.Drawing
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)

    End Sub
    Protected Sub ASPxCardViewExporter1_RenderBrick(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxCardViewExportRenderingEventArgs)
        Dim dataColumn As CardViewColumn = TryCast(e.Column, CardViewColumn)

        If dataColumn IsNot Nothing AndAlso dataColumn.FieldName = "ProductName" Then
            e.BrickStyle.ForeColor = If(CDec(e.GetValue("UnitPrice")) > 10, Color.Green, Color.Red)
            e.BrickStyle.BackColor = Color.LightYellow

        End If
    End Sub
    Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        ASPxCardViewExporter1.WritePdfToResponse()
    End Sub
End Class