import UIKit

println("This is my first program!!")

var name = "Vishal"

println("My name is \(name)")
    

println("My friends name is \(name)")


println("abc")

println("This is correct")


for value in 1...10 {
    println("Value is \(value)")
}

// here in is a keyword
for value in 1..<10 {
    println("Value is \(value)")
}

let myLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
myLabel.backgroundColor = UIColor.redColor()
myLabel.text = "This is Awesome!!!"
myLabel.textColor = UIColor.whiteColor()
myLabel.textAlignment = NSTextAlignment.Center
myLabel.font = UIFont(name: "sans seriff", size: 21)


var char:String

char = "C"

println("Integer ranges \(Int8.min) \(Int8.max)")
println("Integer ranges \(Int16.min) \(Int16.max)")
println("Integer ranges \(Int32.min) \(Int16.max)")
println("Integer ranges \(Int64.min) \(Int16.max)")


var isStudentPassed:Bool = true
println("\(isStudentPassed)")

var message = "I am from Edureka"
message.uppercaseString
message.lowercaseString

for char in message {
    println(char)
}

var valueToCheck = 10

switch valueToCheck {
case 0...2:
    println("Value is between 0 to 2")
case 3...7:
    println("Value is between 3 to 7")
case 8...10:
    println("Value is between 8 to 10")
default:
    println("Not Found")
}

var studentMarks : Int32 = 94

switch studentMarks {
case 0..<35:
    println("Failed")
case 36..<60:
    println("Passed")
default:
    println("First Class")
}

for value in 1...5 {
    println(value)
}

for value in 1..<6 {
    println(value)
}

enum InterviewCriteria {
    case INDIA
    case CHINA
    case JAPAN
}

var input:InterviewCriteria = InterviewCriteria.CHINA

switch input {
case InterviewCriteria.CHINA:
    println("From China")
case InterviewCriteria.INDIA:
    println("From India")
default:
    println("Not Eligible")
}











