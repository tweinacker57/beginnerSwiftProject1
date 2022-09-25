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
    switch input {
    case 1: accountType = "debit"
    case 2: accountType = "credit"
    case 3: accountType = "generic"
    default: break
    }
}while accountType == ""
        print("You have opened a \(accountType) account.")
        
        
//Create Bank account balance and add withdrawal and desposit functionality
        
var balance = 100
func getBalanceInfo() -> String{
    "Current balance:$\(balance)"
}
print(getBalanceInfo())
func withdraw(amount: Int){
    balance -= amount
    print("Withdrew:$\(amount). \(getBalanceInfo())")
}
withdraw(amount : 20)

func debitWithdraw(amount: Int){
    if amount > balance{
        print("Insufficient funds to withdraw $\(amount). \(getBalanceInfo())")
    }else {
        withdraw(amount: amount)
    }
}
debitWithdraw(amount: 81)
debitWithdraw(amount: 80)

func deposit(amount: Int){
    balance += amount
    print("Deposited $\(amount). \(getBalanceInfo())")
}
deposit(amount: 100)

func creditDeposit(_ amount: Int) {
    if balance == 0 {
        print("Paid off account balance.")
    } else if balance > 0 {
        print("Overpaid account balance.")
    }
}
withdraw(amount: 200)
creditDeposit(50)
creditDeposit(100)

let transferAmount = 50
func transferType(_ transferType: String){
    switch transferType {
    case "withdraw":
        if accountType == "debit"{
            debitWithdraw(amount: transferAmount)
        } else {
            withdraw(amount: transferAmount)
        }
    case "deposit":
        if accountType == "credit" {
            creditDeposit(transferAmount)
        } else {
            deposit(amount: transferAmount)
        }
    default:
        break
    }
}
var isSystemOpened = true
var option = 0

repeat {
    print("What would you like to do?")
    print("1. Check bank account")
    print("2. Withdraw money")
    print("3. Deposit money")
    print("4. Close the system")
    print("Which option do you choose? 1,2,3, or 4")
    option = Int.random(in: 1...5)
    print("The selected option is \(option)")
    switch option {
    case 1: print("Current balance: $:\(balance) dollars")
    case 2: transferType("withdraw")
    case 3: transferType("deposit")
    case 4:
        isSystemOpened = false
        print("The system is closed")
    default: break
    }
 }while isSystemOpened
 
