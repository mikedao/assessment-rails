school = List.create(title: 'School Stuff', active: true)
food = List.create(title: 'Food', active: true)
misc = List.create(title: 'Miscellaneous', active: false)

school.tasks.create(title: "Buy a book", description: "From the bookstore", active: true, duedate: Date.tomorrow)
school.tasks.create(title: "Go to school", description: "Showing up is 80 percent", active: false, duedate: Date.yesterday )

food.tasks.create(title: "Buy butter", description: "You are out of butter", active: true, duedate: Date.tomorrow)

misc.tasks.create(title: "Goof off", description: "Being lazy", active: true, duedate: Date.tomorrow)
misc.tasks.create(title: "Clean belly button", description: "You're disgusting", active: true, duedate: Date.tomorrow)
misc.tasks.create(title: "Have a nap", description: "You deserve it", active: false, duedate: Date.yesterday)
