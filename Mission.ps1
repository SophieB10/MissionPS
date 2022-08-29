$rawText = Get-Content .\template.txt
$words = Get-Content .\words.txt
$randomNumber = Get-Random -Minimum 10 -Maximum 100
$Mission = $rawText.Replace('{XX}', $randomNumber)
for($i = 1; $i -le 10; $i++){
    $randomIndex = Get-Random -Minimum 0 -Maximum $words.Length
    $Mission = $Mission.Replace('{'+$i+'}', $words[$randomIndex].Replace('",', '').Replace('"',''))
}
Write-Host $Mission 

