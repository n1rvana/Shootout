defmodule Shootout do

	def timed_run do
		IO.puts "Preparing to test encoding and decoding."
		{:ok, binary} = File.read "test.json"
		IO.puts "Test file loaded, test begins..."
		json_decode_start = :erlang.now()
	    {ok, json_decode_result} = JSON.decode(binary)
		json_decode_result = JSON.decode(binary)
		json_decode_stop = :erlang.now()
		json_encode_result = JSON.encode(json_decode_result)
		json_encode_stop = :erlang.now()
		decode_time = :timer.now_diff(json_decode_stop, json_decode_start) / 1000000
		encode_time = :timer.now_diff(json_encode_stop, json_decode_stop) / 1000000
		IO.puts "Test finished, Decode: #{decode_time}s Encode: #{encode_time}s"
	end

	def jsex do
		IO.puts "Preparing to test JSEX encoding and decoding."
		{:ok, binary} = File.read "test.json"
		IO.puts "Test file loaded, test begins..."
		json_decode_start = :erlang.now()
        {ok, json_decode_result} = JSEX.decode(binary)
		json_decode_stop = :erlang.now()
		json_encode_result = JSEX.encode(json_decode_result)
		json_encode_stop = :erlang.now()
		decode_time = :timer.now_diff(json_decode_stop, json_decode_start) / 1000000
		encode_time = :timer.now_diff(json_encode_stop, json_decode_stop) / 1000000
		IO.puts "JSEX finished, Decode: #{decode_time}s Encode: #{encode_time}s"
	end

	def test_jiffy do
		IO.puts "Preparing to test JIFFY encoding and decoding."
		{:ok, binary} = File.read "test.json"
		IO.puts "Test file loaded, test begins..."
		json_decode_start = :erlang.now()
        json_decode_result = :jiffy.decode(binary)
		json_decode_stop = :erlang.now()
		json_encode_result = :jiffy.encode(json_decode_result)
		json_encode_stop = :erlang.now()
		decode_time = :timer.now_diff(json_decode_stop, json_decode_start) / 1000000
		encode_time = :timer.now_diff(json_encode_stop, json_decode_stop) / 1000000
		IO.puts "JIFFY finished, Decode: #{decode_time}s Encode: #{encode_time}s"
	end

	def mochi do
		IO.puts "Preparing to test JIFFY encoding and decoding."
		{:ok, binary} = File.read "test.json"
		IO.puts "Test file loaded, test begins..."
		json_decode_start = :erlang.now()
        json_decode_result = :mochijson2.decode(binary)
		json_decode_stop = :erlang.now()
		json_encode_result = :mochijson2.encode(json_decode_result)
		json_encode_stop = :erlang.now()
		decode_time = :timer.now_diff(json_decode_stop, json_decode_start) / 1000000
		encode_time = :timer.now_diff(json_encode_stop, json_decode_stop) / 1000000
		IO.puts "mochi finished, Decode: #{decode_time}s Encode: #{encode_time}s"
	end


end
