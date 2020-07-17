using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Security.Cryptography;
using System.Text;
using System.Net.Mail;

namespace lottery
{
    public static class DBCon
    {
       static SqlConnection con;
        public static bool CheckCon()
        {
           con = new SqlConnection(ConfigurationManager.ConnectionStrings["LotteryDBCon"].ConnectionString);
           if(con.State==System.Data.ConnectionState.Closed)
            {
                con.Open();
                return true;
            }
           else
            {                
                return true;
            }
        }
       
        public static bool ExecuteQry(string Qry)
        {
            SqlCommand cmd = new SqlCommand(Qry, con);
            cmd.ExecuteNonQuery();
            return true;
        }
        public static SqlDataReader DataRead(string Qry)
        {
            SqlCommand cmd = new SqlCommand(Qry, con);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                return sdr;

            }
            return sdr;
        }
        public static bool VerifyMail(string To)
        {
            try
            {
                MailMessage mail = new MailMessage();
                mail.From = new MailAddress("");
                mail.Subject = "";
                mail.Body = "";
                SmtpClient smtp = new SmtpClient("");
                smtp.Port =587;
                smtp.Credentials = new System.Net.NetworkCredential("UserName", "Password");
                smtp.EnableSsl = true;
                smtp.Send(mail);
                return true;
            }
            catch(Exception ex)
            {
                return false;
            }
            


        }

        public static string GenerateRandomOTP(int iOTPLength)
        {
            string [] Digits = { "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" };
            string OTP = String.Empty;            
            Random rand = new Random();
            for (int i = 0; i < iOTPLength; i++)
            {
                OTP += rand.Next(0, Digits.Length).ToString();                
            }
            return OTP;

        }
        public static string Encrypt(string input)
        {
            byte[] inputArray = UTF8Encoding.UTF8.GetBytes(input);
            TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
            tripleDES.Key = UTF8Encoding.UTF8.GetBytes("Lottery@123");
            tripleDES.Mode = CipherMode.ECB;
            tripleDES.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tripleDES.CreateEncryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
            tripleDES.Clear();
            return Convert.ToBase64String(resultArray, 0, resultArray.Length);
        }
        public static string Decrypt(string input)
        {
            byte[] inputArray = Convert.FromBase64String(input);
            TripleDESCryptoServiceProvider tripleDES = new TripleDESCryptoServiceProvider();
            tripleDES.Key = UTF8Encoding.UTF8.GetBytes("Lottery@123");
            tripleDES.Mode = CipherMode.ECB;
            tripleDES.Padding = PaddingMode.PKCS7;
            ICryptoTransform cTransform = tripleDES.CreateDecryptor();
            byte[] resultArray = cTransform.TransformFinalBlock(inputArray, 0, inputArray.Length);
            tripleDES.Clear();
            return UTF8Encoding.UTF8.GetString(resultArray);
        }

    }
}