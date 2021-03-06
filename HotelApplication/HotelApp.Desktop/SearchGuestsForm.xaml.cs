using HotelAppLibray.Data;
using HotelAppLibray.Models;
using System.Collections.Generic;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Extensions.DependencyInjection;

namespace HotelApp.Desktop
{
    /// <summary>
    /// Interaction logic for SearchGuestsForm.xaml
    /// </summary>
    public partial class SearchGuestsForm : Window
    {
        private readonly IDatabaseData db;

        public SearchGuestsForm(IDatabaseData db)
        {
            InitializeComponent();
            this.db = db;
        }

        private void SearchForGuests_Click(object sender, RoutedEventArgs e)
        {
            List<BookingFullModel> bookings = db.SearchBookings(lastNameText.Text);
            resultsList.ItemsSource = bookings; // The issue seems to be here - 
        }

        private void CheckInButton_Click(object sender, RoutedEventArgs e)
        {
            var checkInForm = App.serviceProvider.GetService<CheckinForm>();
            var model = (BookingFullModel)((Button)e.Source).DataContext;

            checkInForm.PopulateCheckInInfo(model);
            checkInForm.Show();
        }
    }
}
