# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

$argument_list = []

ARGV.each do|a|
  # puts "Argument: #{a}"
  $argument_list.push(a)
end

def format_name(first, last)
  if (first == "" || last == "")
    nil
  else
  # (first.gsub(/\s+/, "")[0] + last.gsub(/\s+/, "")).downcase
  (first.gsub(/[^A-Za-z]/, "")[0] + last.gsub(/[^A-Za-z]/, "")).downcase
  end
end

def format_year(year)
  str = year.to_s
  str.length == 4 ? str.slice(2,3) : nil
end

def check_privilege(num = 0)
  rounded_num = num.floor
  if rounded_num == 1
    "seller"
  elsif rounded_num == 2
    "manager"
  elsif rounded_num >= 3
    "admin"
  else
    "user"
  end
end


def user_type_prefix (num = 0)
  if (check_privilege(num) == "user")
    ""
  else
    check_privilege(num) + "-"
  end
end


def build_username(first, last, year, privilege = 0)
  user_type_prefix(privilege) + format_name(first, last) + format_year(year)
end


$list_of_usernames = []

def generate_username(first, last, year, privilege = 0)
  created_username = build_username(first, last, year, privilege)
  if $list_of_usernames.include? created_username
      count = 1
      while $list_of_usernames.include? created_username
        if count > 1
          created_username.slice!(-1)
          created_username.slice!(-1)
        end
        created_username = created_username + "_#{count}"
        count += 1
      end
  end
    $list_of_usernames.push(created_username)
    created_username

end

if $argument_list.length > 2 && $argument_list.length < 5
  puts generate_username($argument_list[0], $argument_list[1], $argument_list[2])
end
