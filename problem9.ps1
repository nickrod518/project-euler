$a = 1
$b = 2
$sum = 0

while ($a -lt 1000) {
    do {
        $cSqr = [Math]::Pow($a, 2) + [Math]::Pow($b, 2)

        $c = [math]::Sqrt($cSqr)

        $sum = $a + $b + $c

        if ($sum -eq 1000) {
            $product = $a * $b * $c
            return $product
        }

        $b++
    } while ($sum -le 1000)

    $a++
    $b = $a + 1
}