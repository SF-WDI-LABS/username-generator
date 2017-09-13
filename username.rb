# Make sure to run the tests in your /spec folder
# Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
if first.length<1 || last.length<1
	nil
else
  first = first.split.join
  last = last.split.join
  str = (first[0]+last).downcase
end
end



#not sure why this doesnt passr
def check_privilege(type)

if type.floor == 1
	"seller"

elsif type.floor == 2
	"manager"

elsif type.floor == 3 
	"admin"

else 
 	"user"

	end
end



def user_type_prefix(type)
	if type.floor == 1
	"seller"+"-"

elsif type.floor == 2
	"manager"+"-"

elsif type.floor == 3 
	"admin"+"-"

else 
 	"user"+"-"

	end
end






def format_year(year)
	year.to_s.length == 4 ? year.to_s.slice(-2,2) : nil
end



def generate_username(privilege_level, year, first, last)

   date = year.to_s.slice(-2,2)
   username = (first[0]+last).downcase

if privilege_level.floor == 1
	"seller"+"-"+username+date

elsif privilege_level.floor == 2
	"manager"+"-"+username+date

elsif privilege_level.floor == 3 
	"admin"+"-"+username+date

else 
  	"user"+"-"+username+date

	end
end