import UIKit
import Foundation


//: # Home Work 5
/*:
 ## Задание 1
 Создайте словарь, который содержит результаты игр спортивной команды. Ключом словаря должно быть название команды соперника, а в качестве значения должен быть массив с результатами игр с этим соперником. Необходимо вывести на консоль результаты игр. Выглядеть это должно примерно следующим образом:
 
 - Игра с Салават Юлаев - 3:6
 
 - Игра с Салават Юлаев - 5:5
 
 - Игра с Салават Юлаев - N/A
 
 - Игра с Авангард - 2:1
  
 - Игра с АкБарс - 3:3
 
 - Игра с АкБарс - 1:2
 */
let sportTeamGames = [
    "Salavat Yulaev": ["3:6", "5:5", "N/A"],
    "Avangard": ["2:1"],
    "AkBars": ["1:2", "3:3"]
]

func sportTeamGamesOutput(results: [String : [String]]) {
    for (team, scores) in results {
        for score in scores {
            print("Game with \(team) - \(score)")
        }
    }
}

sportTeamGamesOutput(results: sportTeamGames)

//вариант 2
/*let sportTeamGames: [String: [String]] = [

    "Game with Salavat Yulaev" : ["3:6", "5:5", "N/A"],
    "Game with Avangard" : ["2:1"],
    "Game with AkBars" : ["3:3", "1:2"]
]

for (key, value) in sportTeamGames {
    print("key - \(key), value - \(value)")
}*/

/*:
 ## Задание 2
 Создайте функцию, которая считает общую сумму переданных в нее целочисленных значений и возвращает итоговый результат. Числа можно передавать либо в массиве, либо по отдельности, на ваше усмотрение. Вызовите функцию.
 */
func totalSumOfValues(number: Int, numberTwo: Int) -> Int {
    let result = number + numberTwo
    return result
}
let result = totalSumOfValues(number: 77, numberTwo: 55)
print(result)
/*:
 ## Задание 3
 3.1 Создайте функцию, которая определяет является ли число четным. В случае, если число является четным, функция должна возвращать `true`. Иначе - `false`.
 */
func addingTwoNumbers(numbers: Int) -> Bool {
    numbers % 2 == 0
}
addingTwoNumbers(numbers: 10)
/*:
3.2 Создайте функцию, которая определяет делится ли число на *3* без остатка. Функция так же должна возвращать булево значение.
*/
func addingThreeNumbers(numbers: Int) -> Bool {
    numbers % 3 == 0
}
addingThreeNumbers(numbers: 3)
/*:
 3.3 Создайте функцию, которая возвращает возрастающий массив чисел в интервале от *x* до *y*. Данный интервал должен задаваться при вызове функции при помощи параметров. Вы должны самостоятельно реализовать логику создания массива. Если хотите усложнить задание, то можете возвращать не сортированный массив чисел в заданном интервале. Главное, что бы числа были уникальными и не повторялись. При этом количество элементов массива должно соответствовать количеству элементов заданного интервала.
 */
func generateFromRange(startValue: Int, endValue: Int, step: Int) -> [Int] {
    var stepValue = startValue
    var resultArray: [Int] = []
    while stepValue <= endValue {
        resultArray.append(stepValue)
        stepValue += step
    }
    return resultArray
}

generateFromRange(startValue: 2, endValue: 80, step: 4)

func generateRandomFromRange(startValue: Int, endValue: Int, quantity: Int) -> [Int] {
    var resultArray: [Int] = []
    while resultArray.count != quantity {
        let randomNumber = Int.random(in: startValue...endValue)
        if resultArray.contains(randomNumber) {
            continue
        }
        resultArray.append(randomNumber)
    }
    return resultArray
}
generateRandomFromRange(startValue: 2, endValue: 80, quantity: 4)

/*:
3.4 Создайте массив чисел от *1* до *100*, используя для этого выше созданную функцию
 */
//random(in: 1...100)
let valueOfNumbers = generateFromRange(startValue: 1, endValue: 100, step: 2)
let valueOfRandomNumbers = generateRandomFromRange(startValue: 1, endValue: 100, quantity: 60)
/*:
 3.5 Создайте функцию для фильтрации переданного в неё массива и отфильтруйте при помощи неё массив из задания **3.4**. Функция должна возвращать новый массив без четных чисел или без чисел, кратных трем. Для определения фильтруемых значений используйте ранее созданные функции из заданий **3.1** и **3.2**.
 */
func filterOfNumbers(_ array: [Int]) -> [Int] {
    var filteredArray: [Int] = []
    for item in array {
        if !addingTwoNumbers(numbers: item) && !addingThreeNumbers(numbers: item) {
            filteredArray.append(item)
        }
    }
    
    return filteredArray
}

print(filterOfNumbers(valueOfNumbers))
print(filterOfNumbers(valueOfRandomNumbers))

