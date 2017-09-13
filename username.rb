# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.
$input_first = String.new
$input_last = String.new
$input_year = 0
$input_privilege = 0
$usernames = Array.new
def format_name(first, last)
  if first == '' || last == ''
    return nil
  end
first_name = first.gsub(/[^a-zA-Z]/, '').split('')
last.gsub(/[^a-zA-Z]/, '').insert(0, first_name[0]).downcase
end
def format_year(year)
  puts "year.to_s = " + year.to_s
  if /^\d{4}$/.match(year.to_s) == nil
    return nil;
  end
  puts "year.to_s = " + year.to_s
  year.to_s[-2, 2]

end

def build_username(first, last, year, level = 0)
  user_type_prefix(level) + format_name(first, last) + format_year(year)
end

def check_privilege(level = 0)
  case
  when level.floor == 1
      return "seller"
    when level.floor == 2
      return "manager"
    when level.floor >= 3
      return "admin"
    else
      return "user"
  end

  return "user"

end

def user_type_prefix(level)
  privilege = check_privilege(level)
  if privilege == "user"
    return ""
  else
    return privilege + "-"
  end
end

def generate_username(first_name, last_name, birth_year, privilege_level = 0)
  built_username = build_username(first_name, last_name, birth_year, privilege_level)
  if $usernames.index(built_username) == nil
    $usernames.push(built_username)
    return built_username
  else
    built_username = built_username + "_" + $usernames.select{|user| user.split('_')[0] == built_username}.length.to_s
    $usernames.push(built_username)
    return built_username
  end
end

def get_info_from_user()
  if ARGV.length == 4
    puts generate_username(ARGV[0], ARGV[1], ARGV[2].to_i, ARGV[3].to_i)
  else
    puts "What is your first name?"
    $input_first = gets.chomp
    puts "What is your last name?"
    $input_last = gets.chomp
    puts "What is your birth year?"
    $input_year = gets.chomp.to_i
    puts "What is your privilege-level?"
    $input_privilege = gets.chomp.to_i
    puts generate_username($input_first, $input_last, $input_year, $input_privilege)
  end
end
get_info_from_user()
