function Get-Factoral()
{
    Param
    (
        [int]
        $Number
    )
    if(($Number -lt 2) -and ($Number -gt -1))
    {
        $Numbers = 1
    }
    elseif($Number -lt 0)
    {
        throw('Cannot get factoral of negative numbers')
    }
    else
    {
        $Numbers = $(($Number-1)..1)
    }

    $total = $Number

    foreach($num in $Numbers)
    {
        $total = $total * $num
    }

    write-host $total
}