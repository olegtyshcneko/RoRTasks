def parse_text(text, regexp)
	text.scan(regexp) { |match|
		yield match
	}
end

text = "Hello, my name is 1234, I'm robot mail@gmail.com and have id 12312"

parse_text(text, /[.^1-9]+/) {
	|x|
	print "#{x}, "
}