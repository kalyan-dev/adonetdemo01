using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using adonetdemo01;

namespace TestApp
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine($"Connection String is...");
            Console.WriteLine(DBConfig.ConnectionString);
        }
    }
}
