# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Salesperson.destroy_all
# **************************

# Lab 2: Models
# - We've added data into the companies table.  Next, we'll add data
#   into the salespeople table.  Follow the steps below to insert and
#   read rows of salesperson data.  Update a row.  Afterwards, display
#   how many rows have been inserted into the salespeople table.
#   Lastly, if you want a challenge, try writing code to display the
#   full name of each salesperson.

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert 1-2 rows in salespeople table.

salesperson = Salesperson.new
salesperson["first_name"] = "Brian"
salesperson["last_name"] = "Smith"
salesperson["email"] = "Brian.Smith@gmail.com"
salesperson.save

salesperson = Salesperson.new
salesperson["first_name"] = "Audrey"
salesperson["last_name"] = "Carter"
salesperson["email"] = "Audrey.Carter@gmail.com"
salesperson.save

# 3. write code to display how many salespeople rows are in the database

puts "salespeople: #{Salesperson.all.count}"

# ---------------------------------
# Salespeople: 2

# 4. modify/update column data for a row in the salespeople table.
all_salespeople = Salesperson.all
brian = Salesperson.find_by({"first_name" => "Brian"},{"last_name" => "Smith"} )



# CHALLENGE:
# 5. write code to display each salesperson's full name

puts "salespeople: #{Salesperson.all.count}"
for person in all_salespeople
    #puts person.inspect
    first_name = person["first_name"]
    last_name = person["last_name"]
    email = person["email"]
    puts "#{first_name} #{last_name} - #{email}"
end
# ---------------------------------
# Salespeople: 2
# Ben Block
# Brian Eng
