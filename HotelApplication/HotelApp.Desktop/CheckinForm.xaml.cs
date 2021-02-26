using HotelAppLibray.Data;
using HotelAppLibray.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace HotelApp.Desktop
{
    public partial class CheckinForm : Window
    {
        private readonly IDatabaseData db;
        private BookingFullModel _data = null;

        public CheckinForm(IDatabaseData db)
        {
            InitializeComponent();
            this.db = db;
        }

        public void PopulateCheckInInfo(BookingFullModel data)
        {
            _data = data;
            firstNameText.Text = _data.FirstName;
            lastNameText.Text = _data.LastName;
            titleText.Text = _data.Title;
            roomNumber.Text = _data.RoomNumber;
            totalCoastText.Text = String.Format("{0:C}", _data.TotalCost);
        }

        private void CheckInUser_Click(object sender, RoutedEventArgs e)
        {
            db.CheckinGuest(_data.Id);
            this.Close();
        }
    }
}
