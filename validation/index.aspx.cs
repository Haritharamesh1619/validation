﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace validation
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            if (args.Value.Length>3)
            {
                args.IsValid= true;
            }
            else
            {
                args.IsValid = false;
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Write("Saved Successfully");
        }
    }
}