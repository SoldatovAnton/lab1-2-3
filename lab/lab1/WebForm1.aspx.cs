using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace lab1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitPasswordLogin_Click(object sender, EventArgs e)
        {

            var loginPassword = new Dictionary<string, string>()
            {
                { "Anton", "12345"},
                { "Sophya", "12345"},
                { "bob", "bobo"}
            };

            if (loginPassword.ContainsKey(textLogin.Text))
            {
                if (loginPassword[textLogin.Text] == textPassword.Text)
                {
                    Response.Redirect("welcome.aspx");
                }
                else wrongLoginOrPassword.Visible = true;

            }
            else wrongLoginOrPassword.Visible = true;

            textLogin.Text = "";
            textPassword.Text = "";
        }

        protected void SubmitData_Click(object sender, EventArgs e)
        {
            labelData.Visible = true;

            if (text.Text.Length == 0 || list.Enabled || dropDownList.Enabled || radioButtonList.Enabled)
            {
                labeDataClear.Text = "Вы не ввели все данные";
                labeDataClear.Visible = true;
                return;
            }

            labelData.Text = text.Text
                + list.SelectedItem.ToString()
                + dropDownList.SelectedItem.ToString()
                + radioButtonList.SelectedItem.ToString()
            ;

        }

    }
}