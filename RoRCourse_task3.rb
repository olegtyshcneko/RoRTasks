def parse_text(text, regexp)
	text.scan(regexp)
end

text = "But I must 1 explain to you 3444 how all http://www.ukr.net/news/politika.html this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great 444 explorer of the truth, the master-builder of 11134 human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know 0 how to pursue 334 pleasure rationally encounter consequences that are 111 extremely painful. Nor again 2 is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which 3444 toil and pain can procure him some great 234234 234 pleasure. http://www.teletrade.com.ua/novice/promo?utm_source=ukr&utm_medium=kak&utm_campaign=silki to take a trivial example, which of us ever undertakes laborious physical exercise, http://orakul.com/horoscope/astro/general/today/lion.html except to obtain 11 some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure 312 that has 777 no annoying consequences, or one who avoids a pain that produces no resultant pleasure?"

#task1
#lWord regex ->find all words that end with space or nothing
lWord = /[A-Za-z']+(?![^ ,])/
puts "--- task1 ---"
longestWord = parse_text(text, lWord)
puts longestWord.group_by(&:size).max.last

#task2
#url1 regex -> deletes all query stuff. url2 -> finds url(3 different cases)
url1 = /(^[^?]+)/
url2 = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/
puts "--- task2 ---"
url = parse_text(text, url2)
url.each {
	|x|
	puts x[0].scan(url1)
}
#task3 
