import Foundation

/*:
 ## Задание 3
 
 Необходимо вычислить **площадь** и **периметр** прямоугольного треугольника.
 
 Катет AC = 8.0

 Катет CB = 6.0.
 
 Гипотенузу **AB** вычисляем при помощи функции `sqrt(Double)`, поместив в скобки вместо `Double` сумму квадратов катетов.
 
 > В расчетах можно использовать только арифметические операторы. Функцию `pow` использовать не надо.
 */
let AC = 8.0
let CB = 6.0

let AB = sqrt((AC * AC) + (CB * CB))

let square = 0.5 * (AC * CB)
let perimeter = AC + CB + AB

print("Square S=\(square), Perimeter P=\(perimeter), Hupotenuse AB=\(AB)")
//: [Ранее: Задание 2](@previous) | Задание 3 из 3
