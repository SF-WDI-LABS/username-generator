# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if first.empty? || last.empty?
    nil
  else
    name = first.split.join.downcase[0] + last.split.join.downcase
    name.gsub(/[^a-zA-Z]/,"")
  end
end

def format_year(year)
  ret_year = year.to_s
  if ret_year.length == 4
    ret_year.slice(2,2)
  else
    nil
  end
end

def check_privilege(user_type = 0)
  round_user_type = user_type.truncate
  if round_user_type == 0
    "user"
  elsif round_user_type == 1
    "seller"
  elsif round_user_type == 2
    "manager"
  elsif round_user_type >= 3
    "admin"
  end
end

def user_type_prefix(user_type)
  if check_privilege(user_type) == "user"
    return ""
  else
    return check_privilege(user_type) + '-'
  end
end

def build_username(first, last, year, user_type = 0)
  name = format_name first, last
  if name == nil
    return nil
  end

  formatyear = format_year year
  if formatyear == nil
    return nil
  end

  return user_type_prefix(user_type) + name + formatyear
end

$username_array = []

def generate_username(first_name, last_name, birth_year, privilege_level = 0)
  username = build_username(first_name, last_name, birth_year, privilege_level)
  repeat_count = $username_array.join(' ').scan(username).length
  if repeat_count > 0
    new_user = username + '_' + repeat_count.to_s
  else
    new_user = username
  end

  $username_array.push(new_user)
  return new_user
end
