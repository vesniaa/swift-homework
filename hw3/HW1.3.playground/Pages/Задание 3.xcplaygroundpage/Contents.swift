import Foundation

/*:
 ## Задание 3*
 С помощью блоков `case` определяются возможные значения, которые может принять выражение. Однако Swift позволяет в пределах одного блока case указать не только на значение рассматриваемого параметра, но и на зависимость от какого-либо условия. Данный функционал реализуется с помощью ключевого слова `where` в блоке `case`.
 
 В этом задании вам необходимо отсортировать конфеты **M&M's** по цвету и по начинке. В первую кучку нужно собрать красные конфеты с шоколадом внутри. Во вторую кучку соберите все желтые конфеты с орехами. А в третью кучку коричневые с шоколадом и зеленые с шоколадом. Нужно реализовать только логику для сортировки конфет. Использовать кортежи при этом не нужно. 
 
 */

//Вариант номер 1

var colorOne = "red"
var fillingOne = "chocolate"

switch colorOne {
case _ where colorOne == fillingOne:
    print("red with chocolate")
default:
    break
}
 print("Candy M&M \(colorOne) with \(fillingOne)")


var colorTwo = "yellow"
var fillingTwo = "nuts"

switch colorTwo {
case _ where colorTwo == fillingTwo:
    print("yellow with nuts")
default:
    break
}
print("Candy M&M \(colorTwo) with \(fillingTwo)")


var colorThree = "brown and green"
var fillingThree = "chocolate"

switch colorThree {
case _ where colorThree == fillingThree:
    print("brown and green with chocolate")
default:
    break
}
print("Candy M&M \(colorThree) with \(fillingThree)")


//Вариант номер 2

/*let someCandies: String = "M&M"
var colorCandies = "Red"
var fillingCandies = "Chocolate"

switch someCandies {
case "Red":
    print("Chocolate")
case "Yellow":
    print("nuts")
case "Brown and Green":
    print("chocolate")
default:
    break
}

print("Candy \(someCandies) \(colorCandies) with \(fillingCandies)")*/




//Вариант номер 3

/*var color = "red"
var filling = "chocolate"

switch color {
case "yellow": print("Candy yellow wiht nuts")
    fallthrough
case "red": print("Candy red wiht chocolate")
    fallthrough
case "brown and green": print("Candy brown and green with chocolate")
default:
    break
}*/
//: [Ранее: Задание 2](@previous)  |  задание 3 из 3  |
