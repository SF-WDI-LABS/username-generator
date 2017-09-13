# Run `rspec spec/the_warmup_spec.rb` to get started.

def say_hello
  "hello"
end

def scream(message)
  message.upcase+'!'
end

def first_char string
  string.downcase[0]
end

def polly_wanna string
	str = ""
  3.times do
  	str += string
  end
  str
end

def after_you 
	"no, after you"
end