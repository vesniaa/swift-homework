import UIKit
//: # Home Work 4

/*:
 ## Задание 1
 Пользователь открывает вклад (deposit) в банке на 5 лет (period) на сумму 500 тыс. рублей. Процентная ставка годовых (rate) составляет 11%. Необходимо просчитать сумму дохода (profit) по окончании срока действия вклада и вывести результат на консоль в таком виде: "Сумма вклада через <... > лет увеличится на <...> и составит <...> рублей".  Для решения данной задачи используйте цикл for-in.
 
 > Сумма вклада увеличивается с каждым годом и процент нужно считать уже от увеличенной суммы.
  */
let deposit: Double = 500000
let period = 5
let rate = 0.11
var profit = deposit

for _ in 1...period {
    profit *= 1 + rate
}
var newProfit = profit - deposit

print("Deposit amount in \(period) years will increase by \(Int(newProfit)) and it will amount to \(Int(profit)) rubles")
/*:
 ## Задание 2
 2.1 Создайте целочисленный массив данных с любым набором чисел.
*/
let arrayOne = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//: 2.2 Выведите на консоль все четные числа из массива
for number in arrayOne {
    if number % 2 == 0 {
        print("\(number) an even number")
    }
}
/*: 2.3* В циклах для перехода к следующей итерации без выполнения последующего кода можно использовать оператор `Continue`. В этом случае весь последующий код игнорируется.
 
 Используя оператор `Continue` выведите на консоль все нечетные числа из массива. Для этого нужно выполнить проверку на четность числа, и если оно оказалось четным перейти к следующей итерации.
*/
for number in arrayOne {
    if number % 2 == 0 {
        continue
    } else {
        print("\(number) not an even number")
    }
}
/*: ## Задание 3
Создайте цикл с интервалом от 1 до 10 в котором случайным образом должно вычисляться число в пределах от 1 до 10. Если выпадет число 5, выведите на консоль сообщение с номером итерации и остановите цикл. Пример сообщения: "Что бы выпало число 5 понадобилось <...> итераций".

Для остановки цикла используйте оператор break. Данный оператор предназначен для досрочного завершения работы цикла. При этом весь последующий код в теле цикла игнорируется.
 
 Для определения случайного числа используйте функцию random: `Int.random(1...10)`
*/
var numberNew = 0
let arrayNew = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
for i in arrayNew {
    numberNew = arrayNew.randomElement()!
    print(numberNew)
    if numberNew == 5 {
        print("In order for yhe number 5 to fall out it took \(i) iterations")
        break
    }
}
/*:
 ## Задание 4
  На 10 метровый столб лезет черепашка. За день она забирается на два метра, за ночь съезжает на один. Определите при помощи цикла, через сколько дней она заберется на столб? Подумайте над тем, какой цикл использовать в этой ситуации.
 */
var distance = 0
var day = 0
var height = 10
for _ in distance...height {
    day += 1
    distance += 2
    if distance == height {
        break
    }
    distance -= 1
}
print("The turtle to climb the pole, it took \(day) days")