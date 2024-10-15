using JegyAPI;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using MySql.Data.MySqlClient;
using JegyAPI.Models;

namespace JegyAPI.Controllers
{
    [Route("jegy")]
    [ApiController]
    public class ProductController : ControllerBase
    {
        Connect conn = new Connect();
        [HttpGet]
        public List<Jegy> Get()
        {
            List<Jegy> jegyek= new List<Jegy>();
            conn.Connection.Open();
            string sql = "SELECT * FROM jegyek";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            MySqlDataReader reader = cmd.ExecuteReader();

            reader.Read();

            do
            {
                var result = new Jegy
                {
                    Azon = reader.GetGuid(0),
                    Ertekeles = reader.GetInt32(1),
                    Leiras = reader.GetString(2),
                    CreatedTime = reader.GetDateTime(3)
                };

                jegyek.Add(result);
            } while (reader.Read());
            conn.Connection.Close();
            return jegyek;
        }
    }
}
