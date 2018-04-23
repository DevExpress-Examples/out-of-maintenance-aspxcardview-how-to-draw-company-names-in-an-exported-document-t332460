using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ASPxCardViewExporter1_RenderBrick(object sender, DevExpress.Web.ASPxCardViewExportRenderingEventArgs e)
    {
        CardViewColumn dataColumn = e.Column as CardViewColumn;

        if (dataColumn != null && dataColumn.FieldName == "ProductName")
        {
            e.BrickStyle.ForeColor = (decimal)e.GetValue("UnitPrice") > 10 ? Color.Green : Color.Red;
            e.BrickStyle.BackColor = Color.LightYellow;

        }
    }
    protected void ASPxButton1_Click(object sender, EventArgs e)
    {
        ASPxCardViewExporter1.WritePdfToResponse();
    }
}