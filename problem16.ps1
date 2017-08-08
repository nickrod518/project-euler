$Product = [System.Numerics.BigInteger] [System.Math]::Pow(2, 1000)

$Result = 0

foreach ($Number in $Product.ToCharArray()) {
    $Digit = [Convert]::ToInt32(([string]$Number), 10)
    $Result += $Digit
}

$Result