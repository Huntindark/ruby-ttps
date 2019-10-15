def da_nil?(&block)

puts block.inspect
	nil == block.call

end


puts da_nil? {}
puts (da_nil? do
'Algo distinto de nil'
end)
puts da_nil?(&Proc.new { nil })
puts da_nil?(&-> { nil })