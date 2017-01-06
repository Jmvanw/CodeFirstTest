using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeFirstTest
{
    public class BusinessRepository
    {
        public List<Business> GetBusinesses()
        {
            BusinessDBContext businessDbContext = new BusinessDBContext();
            return businessDbContext.Businesses.ToList();
        }

    }
}