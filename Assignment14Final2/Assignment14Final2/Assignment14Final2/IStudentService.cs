using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace Assignment14Final2
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "IService1" in both code and config file together.
    [ServiceContract]
    public interface IStudentService
    {
        [OperationContract]
        Student GetStudent(string Email);
        // TODO: Add your service operations here
    }

    // Use a data contract as illustrated in the sample below to add composite types to service operations
    [DataContract]
    public class Student
    {
        string LastName = "";
        string FirstName = "";
        string MiddleInitial = "";
        string Phone = "";
        string Email = "";
        string GPA = "";


        [DataMember]
        public string lastname
        {
            get { return LastName; }
            set { LastName = value; }
        }

        [DataMember]
        public string firstname
        {
            get { return FirstName; }
            set { FirstName = value; }
        }

        [DataMember]
        public string middleinitial
        {
            get { return MiddleInitial; }
            set { MiddleInitial = value; }
        }

        [DataMember]
        public string phone
        {
            get { return Phone; }
            set { Phone = value; }
        }

        [DataMember]
        public string email
        {
            get { return Email; }
            set { Email = value; }
        }

        [DataMember]
        public string gpa
        {
            get { return GPA; }
            set { GPA = value; }
        }
    }
}
