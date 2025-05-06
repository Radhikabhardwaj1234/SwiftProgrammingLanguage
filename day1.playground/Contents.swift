import UIKit

 var greeting = "Hello, playground"
 
 var a = 10
 var b = 20
 var c = 30
 
 if a > b
 {
 if a > c
 {
 print( " \(a) is greater among the three numbers " );
 }
 else
 {
 print( " \(b) is greater among the three numbers " );
 }
 }
 else
 {
 print( " \(c) is greater among the three numbers " );
 }
 
 
 // ----------------------------------------------------------
 
 let marks = 92
 
 switch marks{
 case 33...40:
 print("Grade F");
 case 41...50:
 print("Grade E");
 case 51...60:
 print("Grade D");
 case 61...70:
 print("Grade C");
 case 81...90:
 print("Grade B");
 case 91...100:
 print("Grade A");
 default:
 print("Fail");
 
 }
 
 // ----------------------------------------------------------
 
 
 var a = 20
 if ( a > 20){
 print("if..")
 }
 else if ( a == 20)
 {
 print("else if..")
 }
 else{
 print("else..")
 }

 

var x:Int = 5
while x <= 10{
    print(x)
    x = x + 1
}
x = 5
print("repeat loop ...")
repeat{
    print(x)
    x = x - 1
}while x > 0

print("for loop..")

for i in 1...5
{
    print(i)
}

print("for loop..type 2")

for i in stride ( from : 5 , to : 50 , by : 5)
{
    print(i)
}  


let array = ["hey" , "hi" , "hello"]
for i in array{
    print(i)
}

 var num = 1234
 var ans = 0
 while num > 0{
     ans = ans * 10 + num % 10
     num /= 10
 }
 print(ans)
 


var 😡 = "Angry"
var 😊 = "happy"
var 😅 = "default"
switch 😊{
case "Angry":
    print(😡)
    break
case "happy":
    print(😊)
default:
    print(😅)
}
 
 // ------------------------------------------------------ Day 2 -------------------------------------------------------

 
var x:[Int] = [1,2,3,4,5,6,7]
var y:[Any] = [1,2,3,4,"hi",6]

for i in y{
    print(i)
}
for i in  0..<x.count{
    print("\(i) : \(x[i])")
}
print(x.count)


var d:[[Int]] = [[1,2,3] , [2,4,5]]
for i in 0..<d.count{
    for j in 0..<d[0].count{
        print( i,"-", j , ":" , d[i][j])
    }
}


// no parameter no return
func show(){
    print("show")
}
  
func show1() -> (){
    print("show1")
}

func show2() -> (Void)
{
    print("show2")
}
show();
show1();
show2();

//parameter but no return

func callMe(n:String) -> Void
{
    print("Hey i am " + n)
}

func callMe(m:String) -> Void
{
    print("Hello " + m)
}
callMe(n:"Radhika")
callMe(m:"dude")

//parameter and return

func callMe(a : String) -> String
{
    return a;
}

func callMe(b : String) -> String
{
    return b;
}
var ans = callMe(a:"hello")
var a = callMe(a:"hello")
print("Hey " + ans)
print("hey " + a)

func sum(a:Int , b : Int) -> Int
{
    return a + b
}

print("sum : " , sum(a : 2 , b : 4))


func isEven(n:Int) -> Bool{
    return n % 2 == 0
}

print("is 5 even : " , isEven(n:5))



func lowerBound(a : [Int] , target : Int) -> Int{
    var ans = 0
    var l = 0
    var h = a.count-1
    while l <= h
    {
        let mid = l + (h - l)/2
        if a[mid] >= target
        {
            ans = mid
            h = mid - 1
        }
        else{
            l = mid + 1
        }
            
    }
    return ans
}
var arr:[Int] = [1,2,3,3,4,5]
var target = 3
var lower = lowerBound(a:arr , target:target)
print("First occurence of", target, " is at index : " , lower)

//---------------------------------------------Day 3 -----------------------------------------------

//lamda function , closure - self content block of function

// no  return no parameter
let show = {
    print("It is my first closure")
}

let show3 = {
    () in
    print("It is my first closure")
}

// return no parameter
let show1 = {
    () -> String in
    return "It is my second closure"
}

//parameter no  return

let show4 = {
    (name : String)  in
    print("hey i m ", name)
}

//parameter and return

let show5 = {
    (name : String) -> String in
    return "hello " + name
}

show()
show3()
print(show1())
show4("Radhika")
print(show5("hi"))

var sum : (Int , Int) -> Int = {
    ( a , b) in return a + b
}

print(sum(2 , 5))


//trailing closure

func math(a:Int , b:Int , add:(Int,Int) -> Int){
    let s = add(a,b)
    print(a,"  ",b," = ",s)
}
math(a:4,b:6){(x,y) in return x + y}
math(a:4,b:6){(x,y) in return x * y}



//dictionary - keys cant be duplicate

var fruits = [10 : "Apple" , 20 : "Banana" , 30 : "Cherry"]
let veg : [Int : String] = [10 : "palak" , 20 : "potato" , 30 : "pea"]
let emptyList : [Int : String] = [ : ]

//adding element
fruits[40] = "new"

//updating
fruits[10] = "update"

print(veg[10])
print(fruits)
print(veg)
print(emptyList)

for i in fruits{
    print(i)
}

//accessing keys

var keys = Array(fruits.keys);
print(keys)

//accessing keys

var values = Array(fruits.values);
print(values)

//remove

fruits.removeValue(forKey : 10)





