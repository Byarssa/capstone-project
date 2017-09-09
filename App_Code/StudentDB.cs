//using System;
//using System.Data;

//namespace StudentMaintenance
//{
//    public static class StudentDB
//    {
//        /// <summary>
//        /// This method retrieves the students information from the SQL database.
//        /// </summary>
//        /// <param name="studentID"></param>
//        /// <returns></returns>
//        public static Student MySqlGetStudent(string studentID)
//        {
//            MySqlConnection connection = BPUBBooksDB.GetConnection();
//            string selectStatement
//                = "SELECT SID, STUDENTFNAME, STUDENTLNAME, STUDENTSUFFIX, SSTREET, SCITY, SSTATE, SZIP, SELLER, BUYER"
//                + " FROM student"
//                + " WHERE SID = @SID";
//            MySqlCommand selectCommand =
//                new MySqlCommand(selectStatement, connection);
//            selectCommand.Parameters.AddWithValue("@SID", studentID);

//            try
//            {
//                connection.Open();
//                MySqlDataReader studentReader =
//                    selectCommand.ExecuteReader(CommandBehavior.SingleRow);
//                if (studentReader.Read())
//                {
//                    Student student = new Student();
//                    student.StudentID = studentReader["SID"].ToString();
//                    student.FirstName = studentReader["STUDENTFNAME"].ToString();
//                    student.LastName = studentReader["STUDENTLNAME"].ToString();
//                    student.Suffix = studentReader["STUDENTSUFFIX"].ToString();
//                    student.Address = studentReader["SSTREET"].ToString();
//                    student.City = studentReader["SCITY"].ToString();
//                    student.State = studentReader["SSTATE"].ToString();
//                    student.ZipCode = studentReader["SZIP"].ToString();
//                    student.Seller = Convert.ToBoolean(studentReader["SELLER"]);
//                    student.Buyer = Convert.ToBoolean(studentReader["BUYER"]);
//                    return student;
//                }
//                else
//                {
//                    return null;
//                }
//            }
//            catch (MySqlException ex)
//            {
//                throw ex;
//            }
//            finally
//            {
//                connection.Close();
//            }
//        }

//        /// <summary>
//        /// This method adds a new student into the MySQL database.
//        /// </summary>
//        /// <param name="addStudent"></param>
//        /// <returns></returns>
//        public static string AddStudent(Student addStudent)
//        {
//            MySqlConnection connection = BPUBBooksDB.GetConnection();
//            string insertStatement =
//                "INSERT INTO student " +
//                "(SID, STUDENTFNAME, STUDENTLNAME, STUDENTSUFFIX, SSTREET, SCITY, SSTATE, SZIP, SELLER, BUYER) " +
//                "VALUES (@SID, @FirstName, @LastName, @Suffix, @Address, @City, @State, @ZipCode, @Seller, @Buyer)";
//            MySqlCommand insertCommand =
//                new MySqlCommand(insertStatement, connection);
//            insertCommand.Parameters.AddWithValue(
//                "@SID", addStudent.StudentID);
//            insertCommand.Parameters.AddWithValue(
//                "@FirstName", addStudent.FirstName);
//            insertCommand.Parameters.AddWithValue(
//                "@LastName", addStudent.LastName);
//            insertCommand.Parameters.AddWithValue(
//                "@Suffix", addStudent.Suffix);
//            insertCommand.Parameters.AddWithValue(
//                "@Address", addStudent.Address);
//            insertCommand.Parameters.AddWithValue(
//                "@City", addStudent.City);
//            insertCommand.Parameters.AddWithValue(
//                "@State", addStudent.State);
//            insertCommand.Parameters.AddWithValue(
//                "@ZipCode", addStudent.ZipCode);
//            insertCommand.Parameters.AddWithValue(
//                "@Seller", addStudent.Seller);
//            insertCommand.Parameters.AddWithValue(
//                "@Buyer", addStudent.Buyer);
//            try
//            {
//                connection.Open();
//                insertCommand.ExecuteNonQuery();
//                string selectStatement =
//                    "SELECT SID FROM student";
//                //At this point the database updates correctly but the below studentID variable
//                //fails to inherit the new student ID
//                MySqlCommand selectCommand =
//                    new MySqlCommand(selectStatement, connection);
//                string studentID = Convert.ToString(selectCommand.ExecuteScalar());
//                return studentID;
//            }
//            catch (MySqlException ex)
//            {
//                throw ex;
//            }
//            finally
//            {
//                connection.Close();
//            }
//        }

//        /// <summary>
//        /// This method modifies a student's information in the MySQL database.
//        /// </summary>
//        /// <param name="oldStudent"></param>
//        /// <param name="newStudent"></param>
//        /// <returns></returns>
//        public static bool ModifyStudent(Student oldStudent, Student newStudent)
//        {
//            MySqlConnection connection = BPUBBooksDB.GetConnection();
//            string updateStatement =
//                "UPDATE student SET " +
//                "SID = @NewStudentID, " +
//                "STUDENTFNAME = @NewFirstName, " +
//                "STUDENTLNAME = @NewLastName, " +
//                "STUDENTSUFFIX = @NewSuffix, " +
//                "SSTREET = @NewAddress, " +
//                "SCITY = @NewCity, " +
//                "SSTATE = @NewState, " +
//                "SZIP = @NewZipCode, " +
//                "SELLER = @NewSeller, " +
//                "BUYER = @NewBuyer " +
//                "WHERE SID = @OldStudentID " +
//                "AND STUDENTFNAME = @OldFirstName " +
//                "AND STUDENTLNAME = @OldLastName " +
//                "AND STUDENTSUFFIX = @OldSuffix " +
//                "AND SSTREET = @OldAddress " +
//                "AND SCITY = @OldCity " +
//                "AND SSTATE = @OldState " +
//                "AND SZIP = @OldZipCode " +
//                "AND SELLER = @OldSeller " +
//                "AND BUYER = @OldBuyer";
//            MySqlCommand updateCommand =
//                new MySqlCommand(updateStatement, connection);
//            updateCommand.Parameters.AddWithValue(
//                "@NewStudentID", newStudent.StudentID);
//            updateCommand.Parameters.AddWithValue(
//                "@NewFirstName", newStudent.FirstName);
//            updateCommand.Parameters.AddWithValue(
//                "@NewLastName", newStudent.LastName);
//            updateCommand.Parameters.AddWithValue(
//                "@NewSuffix", newStudent.Suffix);
//            updateCommand.Parameters.AddWithValue(
//                "@NewAddress", newStudent.Address);
//            updateCommand.Parameters.AddWithValue(
//                "@NewCity", newStudent.City);
//            updateCommand.Parameters.AddWithValue(
//                "@NewState", newStudent.State);
//            updateCommand.Parameters.AddWithValue(
//                "@NewZipCode", newStudent.ZipCode);
//            updateCommand.Parameters.AddWithValue(
//                "@NewSeller", newStudent.Seller);
//            updateCommand.Parameters.AddWithValue(
//                "@NewBuyer", newStudent.Buyer);
//            updateCommand.Parameters.AddWithValue(
//                "@OldStudentID", oldStudent.StudentID);
//            updateCommand.Parameters.AddWithValue(
//                "@OldFirstName", oldStudent.FirstName);
//            updateCommand.Parameters.AddWithValue(
//                "@OldLastName", oldStudent.LastName);
//            updateCommand.Parameters.AddWithValue(
//                "@OldSuffix", oldStudent.Suffix);
//            updateCommand.Parameters.AddWithValue(
//                "@OldAddress", oldStudent.Address);
//            updateCommand.Parameters.AddWithValue(
//                "@OldCity", oldStudent.City);
//            updateCommand.Parameters.AddWithValue(
//                "@OldState", oldStudent.State);
//            updateCommand.Parameters.AddWithValue(
//                "@OldZipCode", oldStudent.ZipCode);
//            updateCommand.Parameters.AddWithValue(
//                "@OldSeller", oldStudent.Seller);
//            updateCommand.Parameters.AddWithValue(
//                "@OldBuyer", oldStudent.Buyer);
//            try
//            {
//                connection.Open();
//                int count = updateCommand.ExecuteNonQuery();
//                if (count > 0)
//                    return true;
//                else
//                    return false;
//            }
//            catch (MySqlException ex)
//            {
//                throw ex;
//            }
//            finally
//            {
//                connection.Close();
//            }
//        }
//    }
//}
