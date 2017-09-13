# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

# LEVEL 1
def format_name(first, last)

  if first.length == 0
    p nil
  elsif last.length == 0
    p nil
  else
    # this will remove all empty spaces
    first_name = first.gsub(/[^A-Za-z]/,"")
    last_name = last.gsub(/[^A-Za-z]/, "")
    # this will get the first letter in first name
    first_inlast = first_name[0]
    # this will return the first letter of the name + the last name
    full_name = first_inlast + last_name
    # this will return the full name lowercased along with deleting white spaces
    lowercase_name = full_name.downcase
    # remove_allcharacters = full_name.gsub(/[^a-zA-Z0-9\-]/,"")
    p lowercase_name
  end
end

def format_year(year)
  #returns a string
  year_to_string = year.to_s
  # parses out the last two digits of YYYY
  #requires the year to have four digits: YYYY
  # creates a conditional expression
  # year_to_string length is equal to 4  then return value YY otherwise nil
  year_to_string.length == 4 ? year_to_string[2,2] : nil
end

def build_username(first,last,year)
  #returns a strong with the following format: it starts with the first letter of the first_name, the last_name, and last two digits of the year
  name = format_name(first,last)
  # this will return nil if name is nill
  return nil if name.nil?
  yy= format_year(year)
  # this will return nil if year is nill
  return nil if yy.nil?

  name +yy

end

# LEVEL 2

#create an array that shows all user_types
$user_types = ["user","seller", "manager", "admin"]

# here we set privilege to default user which in this case is 0
def check_privilege(type=0)
  # if type is greater than equal to 0, display all types or just the last

  if type >= 0
    $user_types[type] || $user_types.last
  else
    $user_types.first
  end
end

def user_type_prefix(level)
  # returns the corresponding user type, ending with a dash
  # does not return a 'user-' prefix, just an empty string
  level >= 1 ? check_privilege(level) + "-" : ""
end

# added level to specify username and level
def build_username(first, last, year, level=0)
  name = format_name(first, last)
  return nil if name.nil?

  yy = format_year(year)
  return nil if yy.nil?

  user_type_prefix(level) + name + yy
end

# LEVEL 3

# create an object of user inputs
$user_counts = {}

# this will create a unique username based on the following parameters below
def generate_username(first, last, year, level=0)
  # creating username variable by taking in the build_username function from before
  username = build_username(first, last, year, level)

  if $user_counts[username].nil?
    $user_counts[username] = 0;
    username
    # appends a username count when the username already exists
  else
    $user_counts[username] +=1
    user_count = $user_counts[username].to_s
    username + "_" + user_count
  end
end

# BONUS -- Command-line inputs (incomplete)

# OPTION 1 -- Interactively get user input from the command line and output a username to the console. I.e. when I run ruby username.rb I should be prompted (from the command line) for my name, birth year, etc.
# OPTION 2 -- Accept command line arguments (e.g. ruby username.rb john doe 1980) and output a username to the console.

#processing
puts "Please input your username using the following format(first, last, year, level):"
 generate_username = gets.chomp
 puts "Hello" + generate_username + ". How are you?"

# this returns actual username in terminal command-line
p generate_username("jimmy", "cheng", "1991", level=3)

#if you just press enter when running the above with ruby username.rb
#=> Hello. How are you?
# =>"jcheng"
#  =>"jcheng91"
