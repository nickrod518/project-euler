# bigint doesn't appear to be large enough to solve this...
[bigint]$sum = 0

for ($i = 1; $i -le 1000; $i++) {
    [Math]::Pow($i, $i)
}

([string]$sum)[-10..-1] -join ''