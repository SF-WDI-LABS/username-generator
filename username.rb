# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if (first.empty? || last.empty?)
    nil
  else
  (first.gsub(/\s+/, '')[0]+last.gsub(/\s+/, '')).downcase
  end
end

def format_year(year)
  year_to_string = year.to_s
  if year_to_string.length != 4
    nil
  else
    year_to_string[2]+year_to_string[3]
  end
end

#check_privilege
  # returns the corresponding user type (FAILED - 2)
  # defaults to the 'user' user type (FAILED - 3)
  # rounds down to the closest match (FAILED - 4)
def check_privilege(i = 0)
  floor_i = i.floor
  if floor_i == 1
    'seller'
  elsif floor_i == 2
    'manager'
  elsif floor_i >= 3
    'admin'
  else
    'user'
  end
end

def user_type_prefix(i=0)
  if (check_privilege(i) == 'user')
    ''
  else
    # for any other i append the '-'
    check_privilege(i)+'-'
  end
end

# adds the last two digits of the birth year to the username (FAILED - 2)
# prefixes usernames with a user_type (FAILED - 3)
# separates the user_type from the user_name with a dash (FAILED - 4)
# does not prefix level 0 usernames with 'user' (FAILED - 5)
# defaults to type 'user' if no privilege level is specified (FAILED - 6)

def build_username(first, last, year, i=0)
  user_type_prefix(i)+format_name(first, last)+format_year(year)

end

# it appends a username count when the username already exists (FAILED - 2)
# it increments usernames that are already in use (uniqueness constraint) (FAILED - 3)
$list_of_usernames = []
def generate_username(first_name, last_name, birth_year, privilege_level=0)
  user_name = build_username(first_name, last_name, birth_year, privilege_level)
  # in the beginning the count is set to 0
  count = 0
  # while this loop is true (which is always)
  while true
    # and count is greater than 0
    if count > 0
      # set a temp user name where we are adding the "_#{counter}"
      temp_user_name = user_name + "_#{count}"
    else
      # if the count is 0 then just set the temp_user_name to the user_name
      temp_user_name = user_name
    end

    # once that is done, check to see if the temp user name exists in the $list_of_usernames
    if $list_of_usernames.include?(temp_user_name)
      count += 1
    else
      # if it does not then push it
      $list_of_usernames.push(temp_user_name)
      # and then return it and exit the loop
      return temp_user_name
    end
  end
end

# ANSWER VIA OBJECT
#
# $user_hash = {}
# def generate_username(first_name, last_name, birth_year, privilege_level=0)
#   user_name = build_username(first_name, last_name, birth_year, privilege_level)
#
#  if $user_hash.key?(user_name) == false
#     $user_hash[user_name] = 1
#   else
#     temp_user_name = user_name
#     user_name = user_name + "_" + $user_hash[user_name].to_s
#     $user_hash[temp_user_name] += 1
#   end
#   user_name
#
# end






  # if user_name does not exist then push that name to the array and return that user name and
  # count = 0
  # if $list_of_usernames.include?(user_name)
  #   count = 1
  #
  #   # ruby does not exist so you need to set it here to keep going down to the bottom
  #   if count > 1
  #     $list_of_usernames.each do |user|
  #       $list_of_usernames.include?(user)
  #       count += 1
  #       user_name = user_name + "_#{count}"
  #     end
  #   end
  #   user_name = user_name + "_#{count}"
  # end

  # if user_name exist set counter to 1 (initial) or ++

  # then return it



#
# $list_of_usernames = []
# def generate_username(first, last, year, privilege = 0)
#   created_username = build_username(first, last, year, privilege)
#   if $list_of_usernames.include? created_username
#       count = 1
#       while $list_of_usernames.include? created_username
#         if count > 1
#           created_username.slice!(-1)
#           created_username.slice!(-1)
#         end
#         created_username = created_username + "_#{count}"
#         count += 1
#       end
#   end
#     $list_of_usernames.push(created_username)
#     created_username
# end
