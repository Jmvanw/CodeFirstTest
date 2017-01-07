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
            BusinessDBContext businessDBContext = new BusinessDBContext();
            return businessDBContext.Businesses.ToList();       //BusinessContact.Include("Businesses").ToList();
        }

    }
}