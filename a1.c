#include <stdio.h>

void a1(int input)
{
    int quarters, dimes, nickels, pennies;

    for (quarters = input / 25; quarters >= 0; quarters--)
    {
        input -= quarters * 25;

        for (dimes = input / 10; dimes >= 0; dimes--)
        {
            input -= dimes * 10;
            for (nickels = input / 5; nickels >= 0; nickels--)
            {
                input -= nickels * 5;
                for (pennies = input; pennies >= 0; pennies--)
                {
                    printf("%d quarter(s), %d dime(s), %d nickel(s), %d pennie(s)\n", quarters, dimes, nickels, pennies);
                }
            }
        }
    }
}
