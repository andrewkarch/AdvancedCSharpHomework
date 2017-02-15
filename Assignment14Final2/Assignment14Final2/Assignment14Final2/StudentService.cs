using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Assignment14Final2
{
    class StudentService : IStudentService
    {
        public Student GetStudent(string LastName)
        {
            Student s = StudentDB.GetStudent(LastName);
            return s;
        }
    }
}
