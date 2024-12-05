import std/[
  strutils,
  cmdline,
]

# get the nth element of a fibonacci sequence
proc fibonacci_loop(n: uint64): uint64 =
  var (y, z): (uint64, uint64) = (0, 1)

  if n < 2:
    return n

  for x in 2..n:
    (z, y) = (z+y, z)

  return z

# test the speed.
proc main() =
  let u = uint64 parseUInt paramStr 1
  var r: uint64 = 0
  for i in 1..u:
    r += fibonacci_loop(i)
  echo r

main()
