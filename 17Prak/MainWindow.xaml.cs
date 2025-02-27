using System;
using System.Collections.Generic;
using System.Data;
using System.Windows;
using MySql.Data.MySqlClient;

namespace ClientApp
{
    public partial class MainWindow : Window
    {
        private string connectionString = "server=localhost;user=root;database=ClientDB;port=3306;password=;";

        public MainWindow()
        {
            InitializeComponent();
            LoadClients();
        }

        private void LoadClients()
        {
            List<Client> clients = new List<Client>();

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "SELECT * FROM Clients";
                MySqlCommand command = new MySqlCommand(query, connection);
                MySqlDataReader reader = command.ExecuteReader();

                while (reader.Read())
                {
                    clients.Add(new Client
                    {
                        Id = reader.GetInt32("id"),
                        FirstName = reader.GetString("firstName"),
                        LastName = reader.GetString("lastName"),
                        Gender = reader.GetString("gender"),
                        Address = reader.GetString("address"),
                        City = reader.GetString("city"),
                        Phone = reader.GetString("phone"),
                        Email = reader.GetString("email"),
                        Status = reader.GetString("status"),
                        CreatedDate = reader.GetDateTime("createdDate")
                    });
                }
            }

            ClientListView.ItemsSource = clients;
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            AddClientWindow addClientWindow = new AddClientWindow();
            addClientWindow.ShowDialog();
            LoadClients();
        }
    }

    public class Client
    {
        public int Id { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Gender { get; set; }
        public string Address { get; set; }
        public string City { get; set; }
        public string Phone { get; set; }
        public string Email { get; set; }
        public string Status { get; set; }
        public DateTime CreatedDate { get; set; }
    }
}