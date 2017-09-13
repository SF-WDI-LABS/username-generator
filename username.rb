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
	if num == 0
		return 'user'
	elsif num == 1
		return 'seller'
	elsif num == 2
		return 'manager'
	elsif num >= 3
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



$users = []

def generate_username (first, last, year, p_level = 0)

	# put in variable for easy reference
	new_username = format_name(first,last) + year.to_s[-2, year.to_s.length-1]
	# First check if our list is empty, if so, we just generate a new user
	# with no incremental names attach, initialize the count, push into
	# the user list and return that first registered name, ELSE =>
	# From a list of users, check if new_username match any of the currently 
	# registered user name, if match, add '_count' to new_username, update count
	# and then push into increment_name list associated with that matched user
	# and then return that incremented name as output
	if $users[0] == nil 
		user = {
			:name => new_username,
			:increment_names => [],
			:count => 1,
		}
		$users.push(user)
		return new_username
	else
		$users.each do |user|
			if user[:name] == (new_username)
				new_username = new_username + "_" + user[:count].to_s
				user[:count] = user[:count].to_i + 1
				user[:increment_names].push(new_username)
				return new_username
			end
		end
		# if by any chance our list does not contain any duplicate names
		# we create a fresh hash, push it to the list and return that name
		user = {
			:name => new_username,
			:increment_names => [],
			:count => 1,
		}
		$users.push(user)
		return new_username
	end
end
