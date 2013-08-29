# Shootout

Performance measurement for JSON encoder/decoders.

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

