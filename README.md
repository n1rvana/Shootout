# Shootout

Performance measurement for JSON encoder/decoders.

This is a rough test.  Three runs were done for each library on the same machine around the same time.  Still there was
some observed variability in the results on the order of up to %30.  A more controlled experiment involving many more runs 
and more variance in the data used for the test is necessary for real performance benchmarks. 

All test data from: http://www.json-generator.com  All the tests were run on the same 500k JSON file.  The structure of this 
file may affect speeds significantly. 

### Usage

	$ iex -S mix
	Erlang R16B (erts-5.10.1) [source-05f1189] [64-bit] [smp:8:8] [async-threads:10] [hipe] [kernel-poll:false]
	Interactive Elixir (0.10.1) - press Ctrl+C to exit (type h() ENTER for help)
	iex(1)> Shootout.timed_run

## Results
Times in milliseconds. Blue is Encode, Green is Decode. 500k file "test.json".

Results are taken from running all encoders multiple times on the same machine in the same time period, under Elixir 10.2-dev.

![results chart](https://raw.github.com/n1rvana/Shootout/master/chart.jpg "Results")

## Packages:

### jazz
{ :jazz, github: "meh/jazz"},

Encode/Decode Times:  93.616ms / 16.496ms

### mochijson
{:mochijson2, github: "bjnortier/mochijson2"},

Encode/Decode Times: 94.38ms / 127.038ms

### jsex
{:jsex, github: "talentdeficit/jsex"},

Encode/Decode Times: 124.428ms / 95.362 ms

### elixir-json
{ :json, github: "cblage/elixir-json"},

Encode/Decode Times: 75.018ms / 81.98ms

### jiffy
{:jiffy, github: "davisp/jiffy"},

Encode/Decode Times: 13.84ms / 17.988ms

- Jiffy is a NIF, so the processing is done in C, giving it such fast results.

### exon
{:exon, github: "betawaffle/exon"}

Encode/Decode Times:  NA / 27.683ms

- exon is pure elixir making it's speed quite impressive.  It doesn't do json encoding at this point, though.

