# Make sure to run the tests in your /spec folder
# Run `rspec spec/username_spec.rb` to get started.

def format_name(first, last)
  if last == "" || first == ""
    return nil
  else
    return first.downcase.strip[0] + last.downcase.delete(' ')
  end
end

def format_year(year)
  if year.to_s.length != 4
    return nil
  else
    year.to_s[-2..-1]
  end
end


def check_privilege(integer = 0)
  user_types =["user", "seller", "manager", "admin"]
  if integer.floor == 1
    return user_types[1]
  elsif integer.floor == 2
    return user_types[2]
  elsif integer.floor >= 3
    return user_types[3]
  else
    return user_types[0]
  end
end

def user_type_prefix(integer)
  if check_privilege(integer) == "seller"
    return "seller-"
  elsif check_privilege(integer) == "manager"
    return "manager-"
  elsif check_privilege(integer) == "admin"
    return "admin-"
  else
    return ""
  end
end

def build_username(first, last, year, privilege_level = 0)
user_type_prefix(privilege_level)+  format_name(first, last) + format_year(year)
end
