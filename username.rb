# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
	user_name = ""
	if !first.empty? && !last.empty?
	  	user_name = first.strip[0].downcase + last.strip.split.join('')
	else
		return nil
	end
	user_name.downcase
end

def format_year(num)
	if (num.to_s.length-1) == 3
		return num.to_s[2,3]
	else
		return nil
	end
end

def check_privilege(num = 0)
	num = num.floor
	if num.round == 0
		return 'user'
	elsif num.round == 1
		return 'seller'
	elsif num.round == 2
		return 'manager'
	elsif num.round >= 3
		return 'admin'
	end
end

def user_type_prefix (num)
	if num == 0
		return ""
	elsif num == 1
		return 'seller-'
	elsif num == 2
		return 'manager-'
	elsif num == 3
		return 'admin-'
	end
end



def build_username(first, last, year, p_level = 0)
	user_type_prefix(p_level).to_s + format_name(first, last) + year.to_s[-2, year.to_s.length-1]
end

@@count = 0

def generate_username (first, last, year, p_level = 0)
	if @@count == 0
		new_name = build_username(first,last,year,p_level) 
		@@count = @@count + 1
		return new_name
	end
	new_name = build_username(first,last,year,p_level) + '_' + @@count.to_s
	@@count = @@count + 1
	return new_name
end
