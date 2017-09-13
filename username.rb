# # Make sure to run the tests in your /spec folder
# # Run `rspec /spec/username_spec.rb` to get started.

def format_name(first, last)
if first.length<1 || last.length<1
	nil
else
  first = first.split.join
  last = last.split.join
  str = (first[0]+last).downcase.gsub(/[^0-9a-z]/i, '')
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




def generate_username(first_name, last_name, birth_year, privilege_level)

   date = birth_year.to_s.slice(-2,2)
   username = (first_name[0]+last_name).downcase

if privilege_level.floor == 1
	username+date

elsif privilege_level.floor == 2
	username+date

elsif privilege_level.floor == 3 
	username+date

else 
  	username+date

	end
end




