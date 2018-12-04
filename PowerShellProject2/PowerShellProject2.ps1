#
# Script.ps1
#

Clear-Content "c:\testEnv\kaceRegexPCNames\results.txt"

#Add-Content "C:\testEnv\test.txt" "|"

$csv = Get-Content "c:\testEnv\kaceRegexPCNames\pcNames.csv"
Add-Content "c:\testEnv\kaceRegexPCNames\results.txt" "^("

foreach ($pc in $csv) {
    Add-Content "c:\testEnv\kaceRegexPCNames\results.txt" $pc"|"
}
Add-Content "c:\testEnv\kaceRegexPCNames\results.txt" ")$"

(gc "c:\testEnv\kaceRegexPCNames\kaceRegexPCNames\results.txt") | ? {$_.trim() -ne "" } | set-content "c:\testEnv\kaceRegexPCNames\kaceRegexPCNames\results.txt"