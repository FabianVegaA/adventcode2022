# Running Haskell programs

First, you need to go to the day directory and run `stack run` to compile and run the program.

```bash
$ cd DayN
$ stack run
```

If you want to run the program with a custom input, you can do so by passing the input file as an argument to the program.

```bash
$ stack run input.txt
```

Or you can pass the input as a string.

```bash
$ stack run -- -i "input string"
```

## Running tests

To run the tests, you can use `stack test`.

```bash
cd DayN
$ stack test
```

## Running benchmarks

To run the benchmarks, you can use `stack bench`.

```bash
cd DayN
$ stack bench
```
