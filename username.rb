# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)

      if (first == "" || last == "")
      nil
      else
      first_name = (first.gsub /\s/, '')[0] + last
      first_name.downcase.gsub /\s/, ''
      end
end

def format_year(year)

  if (year.to_s.length !=  4)
  nil
  else
  year.to_s[2,3]
  end
  end

def check_privilege(i = 0)
a = i.floor
  if (a == 0)
    "user"
  elsif (a == 1)
    "seller"
  elsif (a == 2)
    "manager"
  elsif (a >= 3)
    "admin"
  else
    nil
  end

end

def user_type_prefix(i)
  if (i == 0)
    ""
  else
  check_privilege(i) + "-"
end

end

def build_username(first, last, year, i = 0)

  user_type_prefix(i) + format_name(first, last) + format_year(year)
end

def generate_username(first, last, year, i = 0)
  # a = [build_username]
  # indexof  the new username in the array of stored usernames if it's greater than or == to 0

  a = build_username(first, last, year, i)
  # b=10
  # c = a + b.to_s
  if (a == a)
        i=0
        loop do
            i += 10
            puts a + "_" + i.to_s

            if i == 200
              break
            end
            end
  else a
  end


end
