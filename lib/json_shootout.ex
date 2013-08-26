defmodule JsonShootout do

	def timed_run do
		{:ok, binary} = File.read "test.json"
		json_decode_start = :erlang.now()
		json_decode_result = JSON.decode(binary)
		json_decode_stop = :erlang.now()
		json_encode_result = JSON.encode(json_decode_result)
		json_encode_stop = :erlang.now()
		decode_time = :timer.now_diff(json_decode_start, json_decode_stop)
		encode_time = :timer.now_diff(json_decode_stop, json_encode_stop)
	end


end
