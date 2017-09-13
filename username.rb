# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.
$usernames= {}

def format_name(first, last)
	if first == "" || last == ""
		return nil
	end
  first.downcase.gsub(/[^a-z]/, '')[0]+last.downcase.gsub(/[^a-z]/, '')
end

def format_year year
	syear = year.to_s
	if (syear.length != 4)
		nil
	else
  	syear[2..3]
  end
end

def build_username(first_name, last_name, birth_year, privilege_level=0)
	user_type_prefix(privilege_level)+format_name(first_name, last_name) + format_year(birth_year)
end

def check_privilege level=0
	case level
	when 0...1
		"user"
	when 1...2
		"seller"
	when 2...3
		"manager"
	else
		"admin"
	end
end

def user_type_prefix level
	check_privilege(level) == "user" ? "" : check_privilege(level)+'-'
end

def generate_username first_name, last_name, birth_year, privilege_level=0
	
	u = build_username(first_name,last_name,birth_year,privilege_level)
	if $usernames[u] != nil
		$usernames[u] = $usernames[u]+1
		u + "_"+($usernames[u]-1).to_s
	else
		 $usernames[u] = 1
		 u
	end
end