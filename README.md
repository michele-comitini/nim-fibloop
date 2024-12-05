# Fibloop
A simple (and useless) fibonacci function implemented in nim.
The resulting executable loops over the fibonacci function to test speed.

## Requirements

[Nim](https://github.com/nim-lang/Nim)

Tested with `nim >= 2.2.0`

## Compiling
To get a fast optimized exe compile like this
```bash
$ nim -d:release --threads:off --stackTrace:off --lineTrace:off --opt:speed -x:off  c fibloop.nim
```
## Speed

Simply run with `time`:

```bash
$ time ./fibloop 100000
```

### Hyperfine

[hyperfine](https://github.com/sharkdp/hyperfine)

```bash
hyperfine -i --shell=none --runs 10 --warmup 2 './nim/fibloop 100000'
```

```console
Benchmark 1: ./fibloop 100000
  Time (mean ± σ):      2.247 s ±  0.009 s    [User: 2.239 s, System: 0.000 s]
  Range (min … max):    2.235 s …  2.258 s    10 runs
 

```
