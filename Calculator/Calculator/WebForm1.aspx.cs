using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Calculator
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            var n1 = Int32.Parse(number1.Text);
            var n2 = Int32.Parse(number2.Text);
            var result = 0;
            var operation = operatorsList.DataValueField;
            if (operation == "1")
            {
                result = n1 + n2;
            }
            if (operation == "2")
            {
                result = n1 - n2;
            }
            if (operation == "3")
            {
                result = n1 * n2;
            }
            if (operation == "4")
            {
                result = n1 / n2;
            }

            Output.Text = result.ToString();
        }

    }
}