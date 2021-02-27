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
            string sqlite = @"select t.Id, t.Title, t.Description, t.Price
		                    from Rooms r
		                    inner join RoomTypes t on t.id = r.RoomTypeId
		                    where r.Id not in (
		                    select b.RoomId
		                    from Bookings b
		                    where	(@startDate < b.StartDate and @endDate > b.EndDate)
			                    or (b.StartDate <= @endDate and @endDate < b.EndDate)
			                    or (b.StartDate <= @startDate and @startDate < b.EndDate)

		                    )
		                    group by t.Id, t.Title, t.Description, t.Price";

            var output = db.LoadData<RoomTypeModel, dynamic>(sqlite,
                                     new { startDate, endDate },
                                     connectionStringName);

            output.ForEach(x => x.Price = x.Price / 100);
            return output;
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
