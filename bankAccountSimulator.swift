//Create a bank account simulator app. Part 1 is creating the bank account
print("Welcome to your virtual bank system. What kind of account would you like to make?")
print("1. Debit account")
print("2. Credit account")
print("3. Bank account")
var accountType = ""
var input = 0
repeat {
    print("Which option do you choose? (1, 2, or 3)")
    input = Int.random(in: 1...5)
    print("The selected option is \(input).")
}
