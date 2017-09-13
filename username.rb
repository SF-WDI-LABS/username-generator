# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if first == "" || last == ""
    nil
  else
    first_name = first.split
    last_name = last.split
    change_last_name = last_name.join()
    #puts change_last_name
    first_name[0][0].downcase + change_last_name.downcase
  end
end

def format_year(year)
  final_year = year.to_s
  if final_year.length > 4 || final_year.length < 4
    nil
  else
    final_year[2,3]
  end
end
def check_privilege(level=0)

  if level.floor == 0
    "user"
  elsif level.floor == 1
    "seller"
  elsif level.floor == 2
    "manager"
  elsif level >= 3
    "admin"
  else
    "user"
  end
end

def user_type_prefix(level=0)
  if level.floor == 0
    ""
  elsif level.floor == 1
    "seller-"
  elsif level.floor == 2
    "manager-"
  elsif level >= 3
    "admin-"
  else
    ""
  end
end

def build_username(first,last,year,level=0)
  final_year = year.to_s
  if final_year.length == 4
    add_year = final_year[2,3]
  end

  if first == "" || last == ""
    nil
  else
    first_name = first.split
    last_name = last.split
    change_last_name = last_name.join()
    user_name = first_name[0][0].downcase + change_last_name.downcase
    if level.floor == 0
      user_name + add_year
    elsif level.floor == 1
      "seller-" + user_name + add_year
    elsif level.floor == 2
      "manager-" + user_name + add_year
    elsif level >= 3
      "admin-" + user_name + add_year
    else
      "" + user_name
    end
  end
end

def generate_username(first,last,year,level=0)
  unique_username = []
  final_year = year.to_s
  if final_year.length == 4
    add_year = final_year[2,3]
  end

  if first == "" || last == ""
    nil
  else
    first_name = first.split
    last_name = last.split
    change_last_name = last_name.join()
    user_name = first_name[0][0].downcase + change_last_name.downcase
    if level.floor == 0
      final_name =  user_name + add_year
    elsif level.floor == 1
      final_name = "seller-" + user_name + add_year
    elsif level.floor == 2
      final_name = "manager-" + user_name + add_year
    elsif level >= 3
      final_name = "admin-" + user_name + add_year
    else
      final_name = "" + user_name
    end
  end
  unique_username.push(final_name)
  final_name
end
