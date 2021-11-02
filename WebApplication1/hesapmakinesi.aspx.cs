using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace WebApplication1
{
    public partial class hesapmakinesi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblisim.Visible = false;
            lblisim.Text = Session["Deger"].ToString();
            if (!IsPostBack)
            {
                lblhata.Visible = false;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            double sayi1, sayi2, sonuc = 0;
            sayi1 = Convert.ToDouble(TextBox1.Text);
            sayi2 = Convert.ToDouble(TextBox2.Text);

            if (RadioButton1.Checked)
            {
                sonuc = sayi1 + sayi2;
            }
            else if (RadioButton2.Checked)
            {
                sonuc = sayi1 - sayi2;
            }
            else if (RadioButton3.Checked)
            {
                sonuc = sayi1 * sayi2;
            }
            else if (RadioButton4.Checked)
            {
                sonuc = sayi1 / sayi2;
            }
            else
            {
               
                sonuc = Math.Sin((Math.PI * sayi1) / 180);
            }


            Label4.Text = sonuc.ToString();

            try
            {
                string constr = ConfigurationManager.ConnectionStrings["Talha"].ConnectionString;
                SqlConnection sql = new SqlConnection(constr);

                sql.Open();
                string kontrol = " Insert into İşlemler(KullanıcıAdi, İşlemYapılanSayi1,islem, İşlemYapılanSayi2, Sonuc) values (@kullanici,@sayi1,@işlem,@sayi2,@sonuç)";
                SqlCommand hesap = new SqlCommand(kontrol, sql);
                hesap.Parameters.AddWithValue("kullanici", lblisim.Text);
                hesap.Parameters.AddWithValue("@sayi1", TextBox1.Text);
                string işlem = "";
                if (RadioButton1.Checked)
                    işlem = RadioButton1.Text;
                else if (RadioButton2.Checked)
                    işlem = RadioButton2.Text;
                else if (RadioButton3.Checked)
                    işlem = RadioButton3.Text;
                else if (RadioButton4.Checked)
                    işlem = RadioButton4.Text;
                else if (RadioButton5.Checked)
                    işlem = RadioButton5.Text;
                hesap.Parameters.AddWithValue("@işlem", işlem);
                hesap.Parameters.AddWithValue("@sayi2", TextBox2.Text);
                hesap.Parameters.AddWithValue("@sonuç", Label4.Text);

                SqlDataReader dr = hesap.ExecuteReader();
               
                
                  
                
            }
            catch(Exception )
            {
               

            }
        }
    }
}
