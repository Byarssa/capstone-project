using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace StudentMaintenance
{
    public class Student
    {
        public Student() { }

        public string StudentID { get; set; }

        public string FirstName { get; set; }

        public string LastName { get; set; }

        public string Suffix { get; set; }

        public string Address { get; set; }

        public string City { get; set; }

        public string State { get; set; }

        public string ZipCode { get; set; }

        public bool Seller { get; set; }

        public bool Buyer { get; set; }
    }
}
