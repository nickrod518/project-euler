Function Test-IsPrime {
    <#
    .Notes
    Modified from https://gist.github.com/jdhitsolutions/9d85236029dcd8df5321561120ad841e
    #>
    [cmdletbinding()]
    Param([int]$Number)

    $Prime = $True

    if ($Number -eq 1) {
        $Prime = $False
    } else {
        for ($i = 2; $i -le ([math]::Sqrt($Number)); $i++) {
            $z = $Number / $i
            if ($z -is [int]) {
                $Prime = $False
                Break
            }
        }
    }

    return $Prime
}

[System.Numerics.BigInteger] $Two = 2
[System.Numerics.BigInteger] $Test = 600851475143
[System.Numerics.BigInteger] $Number = 600851475143

for ([System.Numerics.BigInteger] $i = $Two; $i.CompareTo($Test) -lt 0; $i = $i + 1) {
    if ([System.Numerics.BigInteger]::Zero.CompareTo($Test % $i) -eq 0) {
        Write-Host "Testing $Number..."
        $Number = $Test / $i

        if (Test-IsPrime $Number) {
            Write-Host "Prime!"
            break
        }
    }
}