# Shootout

Performance measurement for JSON encoder/decoders.

Test data from: http://www.json-generator.com

### Usage

	$ iex -S mix
	Erlang R16B (erts-5.10.1) [source-05f1189] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false]
	Interactive Elixir (0.10.1) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> Shootout.timed_run

## Results
Times in Seconds. Blue is Encode, Green is Decode. 500k file "test.json"

![results chart](https://raw.github.com/n1rvana/Shootout/master/chart.jpg "Results")

### Results from jsex: (Elixir wrapper around jsx)

"test.json" Results: Decode: 0.107636s Encode: 0.14087s

### Results from jazz: (Elixir + Elrang yecc)

"test.json" Results: Decode: 0.211439s Encode: 0.086853s

### Results from elixir-json: (Pure Elixir)

"test.json" Results: Decode: 26.513258s Encode: 0.135068s

Note: This is the result running on 0.10.1 of elixir.  Latest elixir-json wants 10.2-dev,
but without replacing my 10.1 install, I wasn't able to get it to build under 10.2. 

### Results from jiffy: (NIF)

"test.json" Results: Decode: 0.020808s Encode: 0.016446s

### Results from mochijson2: (Erlang)

"test.json" Results: Decode: 0.125149s Encode: 0.117624s