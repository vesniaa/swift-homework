import UIKit

//: # Home work 3

/*:
 ## Задание 1
 Представьте, что вы владелец розничного магазина и вам необходимо установить стоимость товара в зависимости от его количества. До 9 единиц товара включительно цена составляет 1000 рублей за штуку. От 10 до 19 единиц товара включительно - 800 руб. шт. И 600 рублей за товар от 20 единиц и выше. Создайте условие при котором цене будет присвоено соответсвующее значение, используя конструкцию `if-else`. Подсчитайте общую сумму и выведите результат на консоль.
 */
var quanityOfProduct: Int = 20
var priceOfProduct = 0
var totalSum = 0


if quanityOfProduct < 9 {
    priceOfProduct = 1000
} else if quanityOfProduct >= 10 && quanityOfProduct < 19 {
    priceOfProduct = 800
} else if quanityOfProduct >= 20 {
    priceOfProduct = 600
}
totalSum = priceOfProduct * quanityOfProduct

print("When buying \(quanityOfProduct) pieces product, the price for each unit will be equal to \(priceOfProduct). The total sum will be equal to \(totalSum)")


//: |  задание 1 из 4  |  [Далее: Задание 2](@next)
