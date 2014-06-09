using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExtensionMethods
{
    class Program
    {
        static void Main(string[] args)
        {
            string message = "Hello World!";
            Console.WriteLine(message);
            if (message.Contains("Hello"))
                Console.WriteLine("The standard greeting example.");

            Console.WriteLine(message.Quack()); 
            Console.WriteLine(message.Walk(5));  
        }
    }
}
