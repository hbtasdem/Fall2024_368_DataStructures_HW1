void a1(input) int quarters, dimes, nickels, pennies;

for (quarters = input / 25; quarters >= 0; quarters--)
{
    input -= quarters * 25;

    for (dimes = input / 10; dimes >= 0; input--)
    {
        input -= dimes * 10;
        for (nickels = input / 5; nickels >= 0; nickels--)
        {
            input -= nickels * 5;
            for (pennies = input; pennies >= 0; pennies--)
            {
            }
        }
    }
}