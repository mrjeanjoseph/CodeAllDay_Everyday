﻿using HotelAppLibray.Data;
using HotelAppLibray.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace HotelApp.Desktop
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        private readonly IDatabaseData db;

        public MainWindow(IDatabaseData db)
        {
            InitializeComponent();
            this.db = db;
        }

        private void SearchForGuests_Click(object sender, RoutedEventArgs e)
        {
            List<BookingFullModel> bookings = db.SearchBookings(lastNameText.Text);
            resultsList.ItemsSource = bookings;
        }
    }
}