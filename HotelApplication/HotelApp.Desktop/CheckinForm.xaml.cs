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
        private BookingFullModel _data = null;

        public CheckinForm()
        {
            InitializeComponent();
        }

        public void PopulateCheckInInfo(BookingFullModel data)
        {
            _data = data;
        }
    }
}
