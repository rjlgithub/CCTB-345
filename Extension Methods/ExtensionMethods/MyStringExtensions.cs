using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ExtensionMethods
{
    public static class MyStringExtensions
    {
        //Extension methods are static methods declared inside
        //  static class
        //The first parameter uses teh keyword "this" and references
        //  the class or data type that we want to 'extend'.
        public static string Quack(this string self)
        {
            return "<quack>" + self + "</quack>";
        }

        public static string Walk(this string self, int steps)
        {
            string result = self;

            //Walk forwards or backwards...
            if (steps < 0)
            {
                while (steps < 0)
                {
                    result = "[backstep] " + result;
                    steps++;
                }
            }
            else
            {
                while (steps > 0)
                {
                    result = result + " [step]";
                    steps--;
                }

            }

            return result;
            return "<quack> " + self + " </quack>";
        }
     
    }
}
