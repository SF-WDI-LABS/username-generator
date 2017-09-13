# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first_name, last_name)
  correct_name = first_name.split.join
  if (first_name != "" && last_name != "")
    user_name = correct_name[0] + last_name.split.join('')
    new_user_name = user_name.downcase
  end
end

def format_year(year)
  user_year = year.to_s
  if user_year.length == 4
  user_year[2,3]
  else nil
  end
end

def build_username(first_name, last_name, year)
  user_build = first_name[0] + last_name
  name = user_build.downcase
  year_build = year.to_s
  user_year = year_build[2,3]
  built_user = name + user_year
end
# write an if statement to return the user type
# use math.floor to round down to the lowest number
# reminder to read all errors you are receiving
# write elsif statement to try and get this to work
# try not to overthink it
def check_privilege(num = 0)
    # privilege = ["user", "seller" , "manager", "admin"]
    # privilege[0]
    if num == 0
      "user"
    elsif num == 1
      "seller"
    elsif num == 2
      "manager"
    elsif num == 3
      "admin"
    end
end
