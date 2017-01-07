using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CodeFirstTest
{
    public class Business
    {
        public int Id { get; set; }
        public string BusName { get; set; }
        public string BusType { get; set; }
        public string BusState { get; set; }
        public string BusPhone { get; set; }

        public BusinessContact BusinessContact { get; set; }
    }


}