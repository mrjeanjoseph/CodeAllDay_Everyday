using HotelAppLibray.Models;
using System;
using System.Collections.Generic;

namespace HotelAppLibray.Data
{
    public interface IDatabaseData
    {
        void BookGuest(string firstName, string lastName, DateTime startDate, DateTime endDate, int roomTypeId);
        void CheckinGuest(int bookingId);
        List<RoomTypeModel> GetAvailableRooms(DateTime startDate, DateTime endDate);
        List<BookingFullModel> SearchBookings(string lastName);
    }
}