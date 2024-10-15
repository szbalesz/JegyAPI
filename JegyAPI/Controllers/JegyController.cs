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
        [HttpPost]
        public Jegy Post(int ertekeles, string leiras)
        {
            conn.Connection.Open();
            Guid Id = Guid.NewGuid();
            DateTime CreatedTime = DateTime.Now;
            string sql = $"INSERT INTO jegyek (Azon, Jegy, Leiras, LetrehozasiIdo) VALUES ('{Id}','{ertekeles}',{leiras},'{CreatedTime.ToString("yyyy-MM-dd HH:mm:ss")}')";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            var result = new Jegy
            {
                Azon = Id,
                Ertekeles = ertekeles,
                Leiras = leiras,
                CreatedTime = DateTime.Now
            };
            return result;
        }
        [HttpPut]
        public Jegy Put(Guid Id, int UjErtekeles, string UjLeiras)
        {
            conn.Connection.Open();
            DateTime CreatedTime = DateTime.Now;
            //(`Id`, `Name`, `Price`, `CreatedTime`) VALUES ('{Id}','{Name}',{Price},'{CreatedTime.ToString("yyyy-MM-dd HH:mm:ss")}')";
            string sql = $"UPDATE `jegyek` SET `Jegy`={UjErtekeles}, `Leiras` = '{UjLeiras}' WHERE `Azon` = '{Id}'";
            MySqlCommand cmd = new MySqlCommand(sql, conn.Connection);
            cmd.ExecuteNonQuery();
            conn.Connection.Close();
            var result = new Jegy
            {
                Azon = Id,
                Ertekeles = UjErtekeles,
                Leiras = UjLeiras,
                CreatedTime = DateTime.Now
            };
            return result;
        }
    }
}
