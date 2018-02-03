# Get the names, sort, and remove quotations
$names = Get-Content ./p022_names.txt
$sortedNames = $names.Replace('"', "").Split(",") | Sort-Object

$index = 1
$total = 0

foreach ($name in $sortedNames) {
    $nameScore = 0

    $name.ToUpper().ToCharArray() | ForEach-Object {
        # Capital A index starts at 65
        $nameScore += [int]$_ - 64
    }

    $total += $nameScore * $index

    $index++
}

$total