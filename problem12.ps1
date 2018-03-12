$triNum = 0
$topDivisors = 0

do {
    for ($i = 1; $i -lt 100; $i++) {
        $triNum += $i

        $divisors = 1

        for ($j = 1; $j -le ($triNum / 2); $j++) {
            if ((($triNum / $j) % 1) -eq 0) {
                $divisors++
            }
        }
    }

    if ($divisors -gt $topDivisors) {
        $topDivisors = $divisors

        New-Object psobject -Property @{
            TriangleNumber = $triNum
            Divisors       = $divisors
        }
    }
} while ($divisors -le 500)