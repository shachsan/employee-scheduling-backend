# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# DeptManager.create(name:"Sanjay Sai")
# DeptManager.create(name:"John")
# DeptManager.create(name:"Dan")
# DeptManager.create(name:"Eric")
# DeptManager.create(name:"Tony")
# DeptManager.create(name:"Jay")

# Department.create(name:"Grocery", dept_manager_id:1)
# Department.create(name:"Espresso", dept_manager_id:2)
# Department.create(name:"Cheese", dept_manager_id:3)
# Department.create(name:"Confectionary", dept_manager_id:4)
# Department.create(name:"Produce", dept_manager_id:5)
# Department.create(name:"Meat", dept_manager_id:6)


# Associate.create(name:"Carlo", position:"full-time", department_id:1)
# Associate.create(name:"Omar", position:"full-time", department_id:2)
# Associate.create(name:"Amir", position:"full-time", department_id:3)
# Associate.create(name:"Santos", position:"full-time", department_id:4)
# Associate.create(name:"Henry", position:"full-time", department_id:5)
# Associate.create(name:"Brian", position:"full-time", department_id:6)

# Associate.create(name:"Jack", position:"full-time", department_id:1)
# Associate.create(name:"Racheal", position:"full-time", department_id:2)
# Associate.create(name:"Skyler", position:"part-time", department_id:3)
# Associate.create(name:"La", position:"part-time", department_id:4)
# Associate.create(name:"Rob", position:"full-time", department_id:5)
# Associate.create(name:"Terance", position:"full-time", department_id:6)

# Associate.create(name:"Mark", position:"full-time", department_id:1)
# Associate.create(name:"Bianca", position:"full-time", department_id:2)
# Associate.create(name:"George", position:"part-time", department_id:3)
# Associate.create(name:"Linda", position:"part-time", department_id:4)
# Associate.create(name:"Ramel", position:"full-time", department_id:5)
# Associate.create(name:"Harry", position:"full-time", department_id:6)

# Shift.create(title:"morning", start_time:"8:00", end_time:"16:00", hour:8)
# Shift.create(title:"afternoon", start_time:"11:00", end_time:"19:00", hour:8)
# Shift.create(title:"night", start_time:"14:00", end_time:"22:00", hour:8)

# DeptShift.create(department_id:1, shift_id:1, no_of_shift:2)
# DeptShift.create(department_id:1, shift_id:2, no_of_shift:1)
# DeptShift.create(department_id:1, shift_id:3, no_of_shift:2)
# DeptShift.create(department_id:2, shift_id:1, no_of_shift:2)
# DeptShift.create(department_id:2, shift_id:3, no_of_shift:2)
# DeptShift.create(department_id:3, shift_id:1, no_of_shift:2)
# DeptShift.create(department_id:3, shift_id:2, no_of_shift:2)
# DeptShift.create(department_id:3, shift_id:3, no_of_shift:3)

# User.create(username:"sanjay", password:"test", dept_manager_id:1)
# User.create(username:"Carlo", password:"test", dept_manager_id:1)
# User.create(username:"Omar", password:"test", associate_id:2)
# User.create(username:"John", password:"test", associate_id:2)
# User.create(username:"Dan", password:"test", dept_manager_id:3)

# date did store because the format was wrong, it should be yyyy-mm-dd format
# Schedule.create(date:'1/28/19', shift_id:1, associate_id:1, department_id:1)
# Schedule.create(date:'1/28/19', shift_id:1, associate_id:7, department_id:1)
# Schedule.create(date:'1/29/19', shift_id:2, associate_id:13, department_id:1)
# Schedule.create(date:'1/29/19', shift_id:3, associate_id:1, department_id:1)
# Schedule.create(date:'1/30/19', shift_id:3, associate_id:1, department_id:1)
# Schedule.create(date:'1/28/19', shift_id:2, associate_id:13, department_id:1)
# Schedule.create(date:'1/30/19', shift_id:1, associate_id:1, department_id:1)
# Schedule.create(date:'1/30/19', shift_id:1, associate_id:13, department_id:1)
# Schedule.create(date:'1/30/19', shift_id:2, associate_id:7, department_id:1)
# Schedule.create(date:'1/30/19', shift_id:1, associate_id:1)
# Schedule.create(date:'1/28/19', shift_id:1, associate_id:1)
# Schedule.create(date:'1/28/19', shift_id:1, associate_id:1)
