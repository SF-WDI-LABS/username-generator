# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)

if first.length == 0
 p nil
elsif last.length == 0
 p nil
else
  first_name = first.delete(" ")
  last_name = last.delete(" ")
  first_inlast = first_name[0]
  full_name = first_inlast + last_name
  lowercase_name = full_name.delete(" ").downcase
  # remove_allcharacters = full_name.gsub(/[^a-zA-Z0-9\-]/,"")
  p lowercase_name
  end
end

def format_year
  nil
end

def build_username
  nil
end
