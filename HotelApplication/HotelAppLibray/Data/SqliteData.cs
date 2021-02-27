using HotelAppLibray.Databases;
using HotelAppLibray.Models;
using System;
using System.Collections.Generic;
using System.Text;

namespace HotelAppLibray.Data
{
    public class SqliteData : IDatabaseData
    {
        private const string connectionStringName = "SQLiteDb";
        private readonly ISqliteDataAccess db;

        public SqliteData(ISqliteDataAccess db)
        {
            this.db = db;
        }

        public void BookGuest(string firstName, string lastName, DateTime startDate, DateTime endDate, int roomTypeId)
        {
            throw new NotImplementedException();
        }

        public void CheckinGuest(int bookingId)
        {
            throw new NotImplementedException();
        }

        public List<RoomTypeModel> GetAvailableRooms(DateTime startDate, DateTime endDate)
        {
            string sqlite = @"select r.*
		                    from dbo.Rooms r
		                    inner join dbo.RoomTypes t on t.id = r.RoomTypeId
		                    where r.RoomTypeId = @roomTypeId
		                    and r.Id not in (
		                    select b.RoomId
		                    from dbo.Bookings b
		                    where	(@startDate < b.StartDate and @endDate > b.EndDate)
			                    or (b.StartDate <= @endDate and @endDate < b.EndDate)
			                    or (b.StartDate <= @startDate and @startDate < b.EndDate)
			                    );";

            return db.LoadData<RoomTypeModel, dynamic>(sqlite,
                                     new { startDate, endDate },
                                     connectionStringName);
        }

        public RoomTypeModel GetRoomTypeById(int id)
        {
            throw new NotImplementedException();
        }

        public List<BookingFullModel> SearchBookings(string lastName)
        {
            throw new NotImplementedException();
        }
    }
}
