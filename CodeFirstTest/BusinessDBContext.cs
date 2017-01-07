using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace CodeFirstTest
{
    public class BusinessDBContext : DbContext
    {


        public DbSet<BusinessContact> BusinessContacts { get; set; }
        public DbSet<Business> Businesses { get; set; }
       
    }

   
}