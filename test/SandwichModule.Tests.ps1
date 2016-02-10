# Eventually I will have to make changes but the script
# should always perform correctly before I release
# to production!

if (get-module sandwichmodule) {remove-module sandwichmodule}
import-Module .\SandwichModule.psm1


# Verify output from expected input

Describe 'sandwich quality' -tag 'taskRunnertest' {
    
    $bread = 'wheat'
    $meat = 'turkey'
    $sandwich = Get-ASandwich -bread 'wheat' -meat 'turkey'

    It 'has the correct bread' {
        $sandwich.bread | Should Be $bread
        }
    It 'has the correct meat' {
        $sandwich.meat | Should Be $meat
        }
}