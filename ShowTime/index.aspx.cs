using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DateTime d = DateTime.Now;
            Page.ClientScript.RegisterClientScriptBlock(Page.GetType(), "Date", "var date=new Date(\""+d.ToString()+"\")", true);            
        }
    }
}