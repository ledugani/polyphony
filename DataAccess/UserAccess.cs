﻿using Polyphony.Models;
using Dapper;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Threading.Tasks;

namespace Polyphony.DataAccess
{
    public class UserAccess
    {
        private readonly string ConnectionString;

        public UserAccess(IConfiguration config)
        {
            ConnectionString = config.GetSection("ConnectionString").Value;
        }

        public bool AddNewUser(PUsers pUser)
        {
            using (var dbConnection = new SqlConnection(ConnectionString))
            {
                dbConnection.Open();

                var result = dbConnection.Execute(@"INSERT INTO Users (first_name, last_name, email, username, isActive, firebaseId) 
                                                    VALUES (@First_Name,@Last_Name,@Email,@Username,@IsActive,@FirebaseId);", pUser);

                return result == 1;
            }
        }

        public PUsers GetByEmail(string email)
        {
            using (var connection = new SqlConnection(ConnectionString))
            {
                connection.Open();

                var result = connection.QueryFirst<PUsers>(@"SELECT *
                                                                FROM Users
                                                                WHERE Users.email = @email", new { email });
                return result;
            }
        }
    }
}