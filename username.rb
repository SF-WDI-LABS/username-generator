# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if last.length < 1 || first.length < 1
    nil
  else
    first_name = ''
    regex = /[a-zA-Z]/
    first.split("").each do |first_char|
      if first_char =~ regex
        first_name += first_char
      end
    end
    last_name = ''
    last.split("").each do |character|
      if character =~ regex
        last_name += character
      end
    end
    first_name[0].downcase + last_name.downcase.delete(" ")
  end

end

def format_year(year)
  string_year = year.to_s.split("")
  if string_year.length != 4
  else
    string_year[2] + string_year[3]
  end
end

def build_username(first, last, year, level=0)
  level = level.floor
  priv = ""
  if level > 3
    level = 3
  elsif level < 0
    level = 0
  end
  if level == 0
    priv = ""
  elsif level == 1
    priv = "seller-"
  elsif level == 2
    priv = "manager-"
  elsif level == 3
    priv = "admin-"
  else
    priv = ""
  end
  string_year = year.to_s.split("")
  priv + first.split("")[0].downcase+last.downcase + string_year[2] + string_year[3]
end

def check_privilege(level=0)
  level = level.floor
  if level > 3
    level = 3
  elsif level < 0
    level = 0
  end
  if level == 0
    "user"
  elsif level == 1
    "seller"
  elsif level == 2
    "manager"
  elsif level == 3
    "admin"
  else
    "user"
  end
end

def user_type_prefix(level=0)
  level = level.floor
  if level > 3
    level = 3
  elsif level < 0
    level = 0
  end
  if level == 0
    ""
  elsif level == 1
    "seller-"
  elsif level == 2
    "manager-"
  elsif level == 3
    "admin-"
  else
    ""
  end
end

$user_hash = Hash.new(0)
def generate_username(first, last, year, level=0)
  string_year = year.to_s.split("")
  username = first.split("")[0].downcase+last.downcase + string_year[2] + string_year[3]
  
  if $user_hash.key?(username) == false
    $user_hash[username] = 1
  else
    username2 = username
    username = username + "_" + $user_hash[username].to_s
    $user_hash[username2] += 1
  end
  username

end
