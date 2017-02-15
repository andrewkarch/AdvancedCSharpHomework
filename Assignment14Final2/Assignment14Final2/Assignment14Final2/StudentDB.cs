using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data.SqlClient;
using System.ComponentModel;
using System.Data.OleDb;
using System.Data;

namespace Assignment14Final2
{
    [DataObject]
    class StudentDB
    {
        [DataObjectMethod(DataObjectMethodType.Select)]
        public static Student GetStudent(string Email)
        {
            OleDbConnection con = new OleDbConnection(GetConnectionString());
            con.Open();
            string sel = "SELECT * FROM Students WHERE Email = '" + Email + "';";
            OleDbDataAdapter myCmd = new OleDbDataAdapter(sel, con);
            DataSet dtSet = new DataSet("Students");
            myCmd.Fill(dtSet);
            DataTable dTable = dtSet.Tables[0];
            DataRow dtRow = dTable.Rows[0];
            Student es = new Student();
            es.lastname = dtRow[0].ToString();
            es.firstname = dtRow[1].ToString();
            es.middleinitial = dtRow[2].ToString();
            es.phone = dtRow[3].ToString();
            es.email = dtRow[4].ToString();
            es.gpa = dtRow[5].ToString();
            con.Close();
            return es;
        }

        private static string GetConnectionString()
        {
           // return "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=~/Universityx.mdb";
            //return "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=E:\\Dropbox\\Current Projects\\Assignment14Final\\Assignment14Final\\Universityx.mdb";
            return "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:\\Universityx.mdb";
            //aaalmanie@mail.usi.edu
        }
    }
}