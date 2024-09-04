#include <stdio.h>

void a1(int input)
{
    int quarters, dimes, nickels, pennies;

    for (quarters = input / 25; quarters >= 0; quarters--)
    {
        int rem_q = input - quarters * 25;

        for (dimes = rem_q / 10; dimes >= 0; dimes--)
        {
            int rem_d = rem_q - dimes * 10;

            for (nickels = rem_d / 5; nickels >= 0; nickels--)
            {
                int rem_n = rem_d - nickels * 5;
                pennies = rem_n;
                printf("%d quarter(s), %d dime(s), %d nickel(s), %d pennie(s)\n", quarters, dimes, nickels, pennies);
            }
        }
    }
    return;
}
