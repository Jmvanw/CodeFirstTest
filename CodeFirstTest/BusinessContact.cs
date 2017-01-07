using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeFirstTest
{
    public class BusinessContact
    {
        public int Id { get; set; }
        public string BusPhone { get; set; }
        public string BusState { get; set; }
        public List<Business> Businesses { get; set; }
    }
}