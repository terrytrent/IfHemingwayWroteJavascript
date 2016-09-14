function Get-Fibonacci()
{
    Param
    (
        [int]$NumberOfIterations,
        [int]$NumberToStartAt = 0
    )

    $LastNumber = $NumberToStartAt 
    $NextNumber = $NumberToStartAt + 1

    for($i = 0;$i -lt $NumberOfIterations; $i++)
    {
        Write-Host $LastNumber
        
        $CalculatedNumber = $LastNumber + $NextNumber
        $LastNumber = $NextNumber
        $NextNumber = $CalculatedNumber

    }
}