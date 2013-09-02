# Shootout

Performance measurement for JSON encoder/decoders.

This is meant to see if there were any order of magnitude, or even %50 variances in performance of elixir native codecs. 
There are not, which means the choice of API for JSON in Elixir mostly amounts to which API you like. 

If you want max performance, the NIF based Jiffy is included in the benchmarks, but NIFs have their own drawbacks. The rest of 
the packages tested are a various mixes of elixir & erlang.

Test data from: http://www.json-generator.com

### Usage

	$ iex -S mix
	Erlang R16B (erts-5.10.1) [source-05f1189] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false]
	Interactive Elixir (0.10.1) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> Shootout.timed_run

## Results
Times in Seconds. Blue is Encode, Green is Decode. 500k file "test.json".

Results are taken from running all encoders multiple times on the same machine in the same time period, under Elixir 10.2-dev.
Decode times were observed to be fairly variable. A better test would be to run many iterations to collect statistical results.


![results chart](https://raw.github.com/n1rvana/Shootout/master/chart.jpg "Results")

## Notes:

- Jiffy is a NIF, so the processing is done in C, giving it such fast results.
- exon is pure elixir making it's speed quite impressive.  It doesn't do json encoding at this point, though.