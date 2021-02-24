using System;

namespace Big_O_Notation
{
    class Solution
    {
        static void Main(string[] args)
        {
            Calculate();
            Console.ReadKey(true);
        }

        private static void Calculate()
        {
            int[] intArray = new int[20000];
            // instantiate an instance of integer array of size 20,000 elements

            CalcO_1(intArray);
            // O(1) = Constant time to run the algorith with respect to the size of the input. It doesn't take longer with more input.

            CalcO_n(intArray);
            // O(n) = Scales linearly with respect to the amount of input; Twice the amount to data will take roughly twice as much time.

            CalcO_nPow2(intArray);
            // O(n^2) Where n is the size of the array, the amount of time it will take this algorithm to run in this method will increase with response to n^2

            CalcOLog_n(intArray);
            // O(log n) - This method executes a basic binary search algorith,.

            Console.WriteLine("Press any key to end the program");
        }

        static void CalcO_1(int[] intArray)
        {//This method accepts the testArray as an argument and demonstrates O(1)
            //O(1) Calculate constant time
            int loopCalc = 0;

            intArray[0] = 1;
            loopCalc++;

            Console.WriteLine($"O(1) complete in { loopCalc } steps");
        } // O(1) Notation Method completed!

        static void CalcO_n(int[] intArray)
        {   // This method accepts the testArray as an argument and demonstrate
            // Calculate linear time O(n)
            int loopCalc = 0;

            for (int i = 0; i < intArray.Length; i++)
            {
                loopCalc++;
                intArray[i] = i;
            }
            Console.WriteLine($"O(n) complete in { loopCalc } steps.");
            return;
        }   // O(n) Method completed!

        static void CalcO_nPow2(int[] intArray)
        {   // This method accepts the testArray as an argument and demostrates O(n^2)
            // Calculate Quadratic time O(n^2)
            int loopCalc = 0;
            /*
            Here you are running a loop within a loop. You may be running an expensie search.
            There maybe a worst case scenario and a match is not found in the search.
            You will need to look at the worse case to see if the outer and inner loops complete
            with no interruption. This may take a while and may perform poorly.*/
            for (int i = 0; i < intArray.Length; i++)
            {
                for (int j = 0; j < intArray.Length; j++)
                {
                    loopCalc++;
                }
            }
            Console.WriteLine($"O(n^2) complete in { loopCalc } steps.");
        }   // O(n^2) Method completed!

        static void CalcOLog_n(int[] intArray)
        { /*This method accepts the testArray as an argument and demostrates O(log n)
           this is a basic example of a binary search algorithm

            O(log n)
            2^x = n) */
            int loopCalc = 0;
            Random rnd = new Random(); // This generate a random number.
            int locatingRanNum = rnd.Next(0, intArray.Length); // This will find a random number in the IntArray
            int upperSet = intArray.Length - 1; // This will set the Upper to 19999
            int lowerSet = 0;
            int indexI = (int)Math.Floor(upperSet / 2.0); // This will find the half way point (ie. 9999 if the upper is 19999)

            /*Start at 20,000 and keep cutting the number of elements in half until we get to the number that was randomly generated.*/
            while (locatingRanNum != intArray[indexI])
            {
                loopCalc++;
                if (locatingRanNum < intArray[indexI]) // If the Random number to find is less than half way between 0 & 19,999 (9,998)
                {
                    upperSet = indexI;
                    indexI = lowerSet + (int)Math.Floor((upperSet - lowerSet) / 2.0);
                }
                else
                {
                    lowerSet = indexI;
                    indexI = lowerSet + (int)Math.Floor((upperSet - lowerSet) / 2.0);
                }
            }// end of the while loop
            Console.WriteLine($"O(log n) complete in { loopCalc } steps.");
        }// O(log n) Method Completed
    }
}
