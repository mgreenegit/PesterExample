# I have a PowerShell module that makes sandwiches
# Version 1.1 - Boss asks for quick change to add cheese!

Function Get-ASandwich {
param (
$bread,
$meat
)
    $sandwich = '' | select bread,meat
    $sandwich.bread = $bread
    $sandwich.meat = $cheese
    $sandwich
    }