$PreviousSequences = @{}

function Get-CollatzTerms([bigint]$startingNum, [int]$chainLength = 0) {
    [bigint]$num = $startingNum

    if ($script:PreviousSequences.ContainsKey($num)) {
        $chainLength += $script:PreviousSequences.$num
    } elseif ($num -eq 1) {
        $chainLength = 1
        $script:PreviousSequences.Add($startingNum, $chainLength)
    } else {
        if (($num % 2) -eq 0) {
            $num = $num / 2
        } else {
            $num = $num * 3 + 1
        }

        $chainLength++

        if ($script:PreviousSequences.ContainsKey($num)) {
            $chainLength += $script:PreviousSequences.$num
            $script:PreviousSequences.Add($startingNum, $chainLength)
        } else {
            $chainLength += Get-CollatzTerms $num $chainlength
        }
    }

    return $chainLength
}

$longestChainLength = 1

for ([bigint]$i = 1; $i -lt 1000000; $i += 1) {
    $chainLength = Get-CollatzTerms $i

    if ($chainLength -gt $longestChainLength) {
        $longestChainLength = $chainLength

        New-Object psobject -Property @{
            StartingNum = $i
            ChainLength = $chainLength
        }
    }
}