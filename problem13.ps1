Get-Content ".\numbers.txt" -OutVariable numbers

$part1, $part2, $part3, $part4, $answer = 0

# break the number into sections of sums since it's too big for a long
foreach ($number in $numbers) {
    [long] $part1 += [long] $number.Substring(35)
    [long] $part2 += [long] $number.Substring(20, 15)
    [long] $part3 += [long] $number.Substring(10, 10)
    [long] $part4 += [long] $number.Substring(0, 10)
}

# carry over the remainder of the sum to each next part
[string] $part1 = ([string] $part1).Substring(0, (([string] $part1).Length - 15))
$part2 += [long] $part1
[string] $part2 = ([string] $part2).Substring(0, (([string] $part2).Length - 15))
$part3 += [long] $part2
[string] $part3 = ([string] $part3).Substring(0, (([string] $part3).Length - 10))
$part4 += [long] $part3

[string] $answer = ([string] $part4).Substring(0, 10)

$answer
