def shuffle(array)
	new_array = []
	aux_array = []
	array.each {|i| aux_array << i.clone}
	for i in 0..aux_array.length - 1
		item = aux_array.sample
		aux_array.delete(item)
		new_array << item
	end
	new_array
end

array = (1..15).to_a
# Esto no deberá arrojar una excepción
10.times do |variable|
    raise "No esta revolviendo bien" if shuffle(array) == shuffle(array)
end
p true