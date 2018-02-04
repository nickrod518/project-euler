$testInt = 1
$maxMultiplier = 6

do {
    $sortedTestRefInt = ($testInt.ToString().ToCharArray() | Sort-Object) -join ''
    $multiplier = 2

    for ($i = 2; $i -le $maxMultiplier; $i++) {
        $multiplier = $i
        $testProduct = $testInt * $i
        $sortedTestDiffInt = ($testProduct.ToString().ToCharArray() | Sort-Object) -join ''

        if (-not ($sortedTestRefInt -eq $sortedTestDiffInt)) {
            break
        }
    }

    $testInt++
} until (($sortedTestRefInt -eq $sortedTestDiffInt) -and ($multiplier -eq $maxMultiplier))

$testInt