# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
  if (first == "" || last == "")
    nil
  else
  (first.gsub(/\s+/, "")[0] + last.gsub(/\s+/, "")).downcase
  # (first.gsub(/[^a-z]/, "")[0] + last.gsub(/[^a-z]/, "")).downcase
  end
end

def format_year
  nil
end

def build_username
  nil
end
