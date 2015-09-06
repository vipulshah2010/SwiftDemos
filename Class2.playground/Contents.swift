func sayHello() {
    println("Welcome to Second Class of Swift!")
}

sayHello()

func printFullName(firstName:String,middleName:String,lastName:String){
    var fullName : String = "Your full name is \(firstName) \(middleName) \(lastName)"
    println(fullName)
}

printFullName("Matt", "Reobert", "Jones")

func calcAreaOfRectange(length:Double,width:Double) -> Double {
    var area : Double = length * width
    return area
}

var area:Double = calcAreaOfRectange(10, 20)
println("Area of Rectangle is \(area)")


func printEmployeeInformation(#name:String,#company:String,#yearsOFExp:Int,#salary:Double){
    
}

printEmployeeInformation(name: "Vipul", company: "Deloitte", yearsOFExp: 5, salary: 200)


func printNameAndSalaryInfo(#name:String,#salary:Double = 500){
    println("Employee name is \(name) and Salary is \(salary)")
}

printNameAndSalaryInfo(name: "Vipul", salary: 200)
printNameAndSalaryInfo(name: "Vishal")


let fullName = ("Vipul","Ashok","Shah")
fullName.0
fullName.1
fullName.2

let (firstName,middleName,surename) = ("Vipul","Ashok","Shah")
firstName
middleName
surename

func getNameAndSalaryInfoOfEmployee() -> (name:String,salary:Double) {
    var name : String = "Vipul"
    var salary : Double = 200.50
    
    return (name,salary)
}

let employeeInfo = getNameAndSalaryInfoOfEmployee()
employeeInfo.0
employeeInfo.1

let (name,salary) = getNameAndSalaryInfoOfEmployee()
name
salary

func magic(names:String...){
    for name in names {
        println(name)
    }
}

magic()
magic("Vipul","Vinay")
magic("Vipul","Vinay","Vishal")
magic("Vipul","Vinay","Vishal","Vikas")

func displayDialog(title:String,message:String,buttons:String...){
    
}

displayDialog("Success", "Download Complete!","Dismiss");
displayDialog("Confirm", "Are you sure want to exit?", "Yes","No")
displayDialog("Feedback", "You wish to submit feedback?","Yes","No","Later")


func swapTwoNumbers(inout num1:Int,inout num2:Int){
    var temp = num1
    num1=num2
    num2=temp
}

var num1 = 10
var num2 = 20

swapTwoNumbers(&num1,&num2)

num1
num2

func incrementValue(inout number:Int){
    number=number+1
}

var number = 10
println(number)
incrementValue(&number)
println(number)


func addFunction(var number1:Int,var number2:Int)->Int {
    var answer = number1 + number2
    return answer
}

func subtractFunction(var number1:Int,var number2:Int)-> Int{
    var answer = number1 - number2
    return answer
}

func performOperation(add:Bool) -> ( (Int,Int)->Int ) {
    if add {
        return addFunction
    }
    else {
        return subtractFunction
    }
}

var operation = performOperation(false)
println(operation(10,20))


func validateIndianCreditCard(creditCardNumber:String) -> String{
    return "Valid"
}

func validateInternationalCreditCard(creditCardNumber:String)-> String{
    return "Invalid"
}

func validateCreditCard(#internationalCreditCard:Bool)->((String)->String){
    if internationalCreditCard {
        return validateInternationalCreditCard
    }
    else {
        return validateIndianCreditCard
    }
}

var validate = validateCreditCard(internationalCreditCard: true)
println(validate("231232331A"))


class AtmMachine {
    var creditCardNumber:String
    var balance:Double
    
    // Computed Properties
    var interest:Double {
        get{
            return (10*self.balance)/100
        }
        set{
            self.balance = newValue * balance
        }
    }
    
    init(creditCardNumber:String,balance:Double) {
        self.creditCardNumber = creditCardNumber
        self.balance = balance
    }
    
    
    func validateAmount(amount:Double) -> Bool {
        if amount <= balance {
            return true
        }
        else {
            return false
        }
    }
    
    func withdrawAmount(amount:Double) -> String {
        if(validateAmount(amount)) {
            return "Congrats! I can give you money :)"
        }
        else {
            return "Sorry! Your balance is insufficient :("
        }
    }
}

var machine = AtmMachine(creditCardNumber: "12345", balance: 5000)
machine.interest // will call get

machine.interest = 200 // will call set

var result = machine.withdrawAmount(10000)
println(result)


// Collections

var countries : [String] = ["India","USA","U.K"]

countries.count
countries.last
countries.first
countries.reverse()
countries.append("Russia")
countries.last
countries.insert("China", atIndex:1)
countries.removeLast()
countries
countries.removeAtIndex(1)

for country in countries {
  println("Country is \(country)")
}

var empInfo : [String:Double] = ["Vipul":200,"Devang":400,"Shravan":500,"Amogh":600]
empInfo.count
empInfo["Devang"]
empInfo["Devang"] = 800
empInfo
empInfo.removeValueForKey("Vipul")
empInfo









































