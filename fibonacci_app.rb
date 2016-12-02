loop do
	puts "フィボナッチ数列の第n項を求め、第n項までの数値を表示します。"
	print "1〜70の間の整数を入力してみください: "
	input = gets.chomp

	if input =~ /^[0-9]+$/ && input.to_i.between?(1, 70)
		array = [1,1]
		if input.to_i >= 3
			nums = input.to_i - 2
			nums.times do
				sum = array[-1] + array[-2]
				array << sum
			end
		end

		puts "#{input}番目のフィボナッチ数列:#{array[input.to_i-1]}"
		print "#{input}番目までのフィボナッチ数列:"
		i = 0
		while i <= input.to_i-1
			print "#{array[i]} "
			i += 1
		end
		print "\n\n"

	elsif input == "exit" || input == "quit"
		loop do
			print "\n本当にプログラムを閉じますか？(「yes」か「no」でお答えください): "
			$answer = gets.chomp
			if $answer == "no"
				puts "かしこまりました。\n\n"
				break
			elsif $answer == "yes"
				puts "プログラムを終了します。\n\n"
				break
			else
				puts "yesかnoで答えてください。\n\n"
			end
		end

		if $answer == "yes"
			break
		end

	else
		puts "error\n\n"
	end
end
