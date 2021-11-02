using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class KayıtOl : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text != TextBox3.Text)
            {
                Lblbasarili.Text = "Lütfen parolaları kontrol ediniz.";
            }
            else
            {
                try
                {
                    string con = ConfigurationManager.ConnectionStrings["Talha"].ConnectionString;
                    SqlConnection sql = new SqlConnection(con);

                    sql.Open();
                    string kontrol = " Insert into kayitlar (isimsoyisim, parola, sehir, cinsiyet, mail) values (@isim,@parola,@sehirimiz,@cins,@mail)";
                    SqlCommand kayit = new SqlCommand(kontrol, sql);
                    kayit.Parameters.AddWithValue("isim", TextBox1.Text);
                    kayit.Parameters.AddWithValue("parola", TextBox2.Text);
                    kayit.Parameters.AddWithValue("sehirimiz", DropDownList1.SelectedValue);
                    kayit.Parameters.AddWithValue("cins", RadioButtonList1.SelectedValue);
                    kayit.Parameters.AddWithValue("mail", TextBox4.Text);

                    SqlDataReader dr = kayit.ExecuteReader();
                    Lblbasarili.Visible = true;
                    Lblbasarili.Text = "Kullanıcı başarıyla kayıt edildi.";
                    Response.Redirect("Login.aspx");
                }

                catch (Exception ex)
                {
                    lblhata.Visible = true;
                    lblhata.Text = ex.Message.ToString();

                }
            }
        }
    }
}
