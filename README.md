# Shootout

Performance measurement for JSON encoder/decoders.

Test data from: http://www.json-generator.com


### Error from jazz:
Immediately gives this error.

iex(1)> Shootout.timed_run
Preparing to test encoding and decoding.
Test file loaded, test begins...
** (UndefinedFunctionError) undefined function: :ok.__record__/1
    :ok.__record__(:fields)
    /Users/nirvana/projects/json_shootout/deps/jazz/lib/json/encoder.ex:195: JSON.Encoder.Tuple.to_json/2
    /Users/nirvana/projects/json_shootout/deps/jazz/lib/json/encoder.ex:11: JSON.Encode.it/2
    /Users/nirvana/projects/shootout/lib/shootout.ex:10: Shootout.timed_run/0
    erl_eval.erl:569: :erl_eval.do_apply/6
    src/elixir.erl:147: :elixir.eval_forms/3

### Error from elixir-json:
After a long time, we get this error.

iex(1)> Shootout.timed_run
Preparing to test encoding and decoding.
Test file loaded, test begins...
** (FunctionClauseError) no function clause matching in Enumerable.List.reduce/3
    /private/tmp/elixir-01o6/elixir-0.10.1/lib/elixir/lib/enum.ex:1521: Enumerable.List.reduce(1, "\"id\"", #Function<12.2075665 in Enum.map_join/3>)
    /Users/nirvana/projects/shootout/deps/json/lib/json/encode.ex:56: JSON.Encode.List.to_json/1
    /Users/nirvana/projects/shootout/deps/json/lib/json/encode.ex:61: JSON.Encode.List.encode_item/1
    /private/tmp/elixir-01o6/elixir-0.10.1/lib/elixir/lib/enum.ex:639: Enum.to_binary/2
    /private/tmp/elixir-01o6/elixir-0.10.1/lib/elixir/lib/enum.ex:1522: Enumerable.List.reduce/3
    /Users/nirvana/projects/shootout/deps/json/lib/json/encode.ex:56: JSON.Encode.List.to_json/1
    /Users/nirvana/projects/shootout/deps/json/lib/json/encode.ex:61: JSON.Encode.List.encode_item/1
    /private/tmp/elixir-01o6/elixir-0.10.1/lib/elixir/lib/enum.ex:639: Enum.to_binary/2
