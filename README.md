# Shootout

Performance measurement for JSON encoder/decoders.

Test data from: http://www.json-generator.com

### Usage

	$ iex -S mix
	Erlang R16B (erts-5.10.1) [source-05f1189] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false]
	Interactive Elixir (0.10.1) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> Shootout.timed_run

### Results from jazz:

"test.json" Results: Decode: 0.211439s Encode: 0.086853s

### Results from elixir-json:

"test.json" Results: Decode: 26.513258s Encode: 0.135068s