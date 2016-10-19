## Username Generator

<!-- BEGIN SF-WDI-LABS BADGES -->
<!-- INSTRUCTOR TODO: Make sure to manually bump version number of commits-since ("updates") badge to latest release version -->
[![Current Labs Version](https://img.shields.io/github/tag/SF-WDI-LABS/username_generator.svg?label=sf-wdi-labs)](https://github.com/SF-WDI-LABS/username_generator)
[![SF-WDI-LABS Commits Since Version](https://img.shields.io/github/commits-since/SF-WDI-LABS/username_generator/v4.32.0.svg)](https://github.com/SF-WDI-LABS/username_generator/commits/master)
[![Issues Count](https://img.shields.io/github/issues-raw/SF-WDI-LABS/username_generator.svg)](https://github.com/SF-WDI-LABS/username_generator/issues)
<!-- END SF-WDI-LABS BADGES -->

Your goal is to write a ruby function that generates a username. It should behave in the following way:

| inputs | output |
|:------|:-------|
| James Bond 2007 | jbond07 |
| John Doe 1978 | jdoe78 |
| John Doe 1978 | jdoe78_1 |
| John Doe 1978 | jdoe78_2 |
| Chico Marx 1887 1 | seller-cmarx87 |
| Harpo Marx 1888 2 | manager-hmarx88 |
| Groucho Marx 1890 3 | admin-gmarx90 |


### Setup
``` bash
git clone THIS_REPO
cd username_generator
```


### Testing

We'll use a tool called `rspec`  to outline our objectives AND test our code as we go... hooray for Test Driven Development (TDD)!

`rspec` is available as a Ruby gem, so start in your terminal by running the command:

``` bash
gem install rspec
```


### Test Driven Development -- Red, Green, Refactor.
Take a look inside the `/spec` folder, and you'll see our test suite broken up into 2 files.
- /spec/the_warmup_spec.rb
- /spec/username_spec.rb

To run the tests for each level, type the following in the command line:

```bash
rspec spec/the_warmup_spec.rb
# or
rspec spec/the_warmup_spec.rb --format documentation
```

You should see roughly the following output:

![](https://cloud.githubusercontent.com/assets/6520345/14794994/49d41a9a-0adb-11e6-8f5b-c9b8f49de100.png)

Followed by a more detailed look at each of the individual test outputs:

![image](https://cloud.githubusercontent.com/assets/6520345/14795071/a3ec7f4a-0adb-11e6-9445-6b224b1a2d0d.png)



#### Hooray!
* The first tests are failing. _We're seeing **RED**._
* Now we need to write code to pass the tests and _turn them **GREEN**_.
* When all the tests are green, we're ready to _stop and **REFACTOR**_!

## Warmup Challenge
Run: `rspec spec/the_warmup_spec.rb`

Code your solutions in `warmup.rb`.

**Tips:**

* Pay close attention to the rspec output in your terminal
* Run your tests frequently and read the output carefully.
* BE *VERY CAREFUL* to use the correct function name.

## Username Challenges
Run: `rspec spec/username_spec.rb`

#### Level 1
Create a function called `format_name` that accepts a user's first_name and last_name and returns a lowercase string that joins the first character of the first_name with the last_name.

Create a function called `format_year` that accepts a four digit integer representing the year (`YYYY`) and parses out the last two digits of the year and returns a a _string_ (`"YY"`).

Create a function called `build_username` that takes a user's first_name, last_name, and birth_year, and returns a string with the following format: it starts with the first letter of the first_name, followed by the last_name, followed by the last two digits of the birth_year.


#### Level 2
Create a function called `check_privilege` that takes a level (integer) and returns the corresponding user_type (string).  
* Allocate privilege using the following table:
    * 0 --> "user" (the default privilege level)
    * 1 --> "seller"
    * 2 --> "manager"
    * 3 --> "admin"

Create a function called `user_type_prefix` that takes a level (integer) and returns the corresponding prefix, e.g. "admin-", "manager-", "seller-". See the tests for more details.

Update your `build_username` function to use prefixes. It should now accept a privilege_level (in addition to the other parameters), and tack it on to the beginning of the username (e.g. "seller-jdoe78"). See the tests for more details.

#### Level 3
Create a function called `generate_username` that has four arguments (first_name, last_name, birth_year, privilege_level) and returns a _unique_ username. Come up with a simple way to store usernames as you create them.

STRETCH: If a username already exists, append "_1". Then, increment the counter each time you reuse the username (e.g. "jdoe78", "jdoe78\_1", "jdoe78\_2", "bbunny60", "bbunny60\_1").

#### BONUS
##### Remove special characters
* If there are any non-alphabetical characters entered as part of the user's first or last name, make sure they are removed using a regular expression.

##### Command-line inputs
* OPTION 1 -- Interactively get user input from the command line and output a username to the console. I.e. when I run `ruby username.rb` I should be prompted (from the command line) for my name, birth year, etc.
* OPTION 2 -- Accept command line arguments (e.g. `ruby username.rb john doe 1980`) and output a username to the console.
