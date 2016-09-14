function Get-IsHappyNumber()
{
    Param
    (
        [Parameter(Mandatory=$true)]
        [int]
        $Number
    )
    
    $OriginalNumber = $Number

    do
    {
        $Number = Get-SequenceResult -Number $Number
    }
    Until(($Number -eq 1) -or ($Number -eq 4))

    if($Number -eq 1)
    {
        return $true
    }
    else
    {
        return $false
    }
}

function Get-SequenceResult
{
    param
    (
        [Parameter(Mandatory=$true)]
        [object]
        $Number
    )
  
    $Array = Split-ToArrayOfIntegers -Number $Number
  
    $Total = 0

    for($i = 0; $i -lt $Array.Count; $i++)
    {
        $Total = $Total + (Get-SquareOfNumber -Number $Array[$i])
    }

    return $Total
}

function Split-ToArrayOfIntegers()
{
    param
    (
        [Parameter(Mandatory=$true)]
        [int]
        $Number
    )
  
    $array = @()

    foreach($char in $Number -split '')
    {
        $array += [int]$char
    }

    return $array
}

function Get-SquareOfNumber
{
    param
    (
        [Parameter(Mandatory=$true)]
        [object]
        $Number
    )
  
    return ($Number * $Number)
  
  
}

