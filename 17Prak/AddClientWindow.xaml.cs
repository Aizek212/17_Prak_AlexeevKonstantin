using MySql.Data.MySqlClient;
using System.Windows;
using System;

namespace ClientApp
{
    public partial class AddClientWindow : Window
    {
        private string connectionString = "server=localhost;user=root;database=ClientDB;port=3306;password=;";

        public AddClientWindow()
        {
            InitializeComponent();
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {
            using (MySqlConnection connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = "INSERT INTO Clients (firstName, lastName, gender, address, city, phone, email, status, createdDate) VALUES (@firstName, @lastName, @gender, @address, @city, @phone, @email, @status, @createdDate)";
                MySqlCommand command = new MySqlCommand(query, connection);
                command.Parameters.AddWithValue("@firstName", FirstNameTextBox.Text);
                command.Parameters.AddWithValue("@lastName", LastNameTextBox.Text);
                command.Parameters.AddWithValue("@gender", GenderTextBox.Text);
                command.Parameters.AddWithValue("@address", AddressTextBox.Text);
                command.Parameters.AddWithValue("@city", CityTextBox.Text);
                command.Parameters.AddWithValue("@phone", PhoneTextBox.Text);
                command.Parameters.AddWithValue("@email", EmailTextBox.Text);
                command.Parameters.AddWithValue("@status", StatusTextBox.Text);
                command.Parameters.AddWithValue("@createdDate", DateTime.Now);
                command.ExecuteNonQuery();
            }

            MessageBox.Show("Client added successfully!");
            this.Close();
        }
    }
}