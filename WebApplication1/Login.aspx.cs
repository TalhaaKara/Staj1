using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication1
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblhata.Visible = false;
            }
        }



       

        protected void giris_Click(object sender, EventArgs e)
        {
            try
            {
                string constr = ConfigurationManager.ConnectionStrings["Talha"].ConnectionString;
                SqlConnection baglanti = new SqlConnection(constr);
                SqlCommand sorgu = new SqlCommand("SELECT * FROM kayitlar WHERE mail='" + txtkuladi.Text + "' AND parola='" + txtpas.Text + "'", baglanti);

                baglanti.Open();

                SqlDataReader oku = sorgu.ExecuteReader();
                // Eğer bir kayıt varsa
                if (oku.Read())
                {
                    Session["Deger"] = txtkuladi.Text;
                    Response.Redirect("hesapmakinesi.aspx");                   
                }
                else // Kayıt yoksa
                {
                    lblhata.Visible = true;
                    lblhata.Text = "Kullanıcı Adı veya Şifre Hatalı!";

                }

            }
            catch (Exception ex)
            {
                lblhata.Visible = true;
                lblhata.Text = ex.Message.ToString();
            }
        }

        protected void kaydol_Click(object sender, EventArgs e)
        {
            Response.Redirect("KayıtOl.aspx");
        }
    }
}

       
        
    
