# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
	if (first == "" || last == "")
	nil 
	else 
first_name = (first.gsub /\s/, '')[0] + last
	first_name.downcase.gsub /\s/, ''
	first_name.downcase.gsub(/[^0-9A-Za-z]/, '')
	end 
end
puts format_name('Jevell', 'Rollins')

def format_year(year)
  if (year.to_s.length != 4 )
  	nil
  else
  year.to_s[2,3]
	end
end
puts format_year(2017)


def check_privilege (num = 0) 
	down = num.floor
	if (down == 0 )
		  "user" 
	elsif (down == 1 )
		 "seller" 	 
  	elsif (down == 2 )
  		 "manager"
  	elsif (down >= 3 )
  		 "admin"
  	end
end

def user_type_prefix(num)
  if (num  == 0 )
  	'' 
  else 
	check_privilege(num)+ '-'
 end 
end


def build_username (first,last, year, num=0 )
 full = user_type_prefix(num)+format_name(first, last)+format_year(year)
end


def generate_username(first_name, last_name, birth_year, privilege_level)
 
create_username = build_username(first, last, year,privilege)
	if (create_username.exist?push('_1') unless my_array.include?(item1))

end 
end 






