a = [1,2,3,4,5,6,2]


def sfora(arr)
	even = []
	odd = []
	arr.each_index  { |index|
    	if index % 2 == 0
    		even << arr[index] 
    	else 
    		odd << arr[index]
    	end
	}

	puts even
	puts "_-_-_-_-_"
	puts odd
end

sfora(a)