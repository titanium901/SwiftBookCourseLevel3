/*:
 ## Упражнение для приложения - узнаём пульс
 
 >Эти упражнения закрепляют понимание Swift в контексте фитнес-приложения.
 
 Многие API, возвращающие значения от датчиков, используют опционалы.  К примеру, API для работы с монитором пульса может выдать `nil` в случае, если монитор плохо закреплён и не может получить значение пульса.
 
 Объявите переменную `heartRate` типа `Int?` и установите её равной `nil`.  Напечатайте её значение.
 */
var heartRate: Int? = nil
print(heartRate)
/*:
 Если пользователь поправит положение монитора пульса, приложение может получить верное значение.  В строках ниже, обновите значение `heartRate` на 74.  Напечатайте это значение.
 */
heartRate = 74
print(heartRate)
/*:
 Как мы уже делали в предыдущих упражнениях, создайте переменную `hrAverage` типа `Int` и используйте значения ниже и значение `heartRate` для вычисления среднего пульса.
 */
let oldHR1 = 80
let oldHR2 = 76
let oldHR3 = 79 
let oldHR4 = 70
var hrAverage = 0

if let heartRate = heartRate {
    hrAverage = (oldHR1 + oldHR2 + oldHR3 + oldHR4 + heartRate) / 5
    print(hrAverage)
} else {
    hrAverage = (oldHR1 + oldHR2 + oldHR3 + oldHR4) / 4
    print(hrAverage)
}


/*:
 Если вы не извлекли значение `heartRate`, вы заметили, что с опциональными значениями математические операции невозможны.  Для начала нужно извлечь значение `heartRate`.
 
 Безопасно извлеките значение `heartRate`, используя опциональную привязку.  Если оно содержит значение,  вычислите средний пульс с использованием этого значения и более ранних значений, заданных выше.  Если оно не содержит значения, вычислите средний пульс, используя только ранее заданные значения.  В каждом случае, напечатайте значение `hrAverage`.
 */


//: [Ранее](@previous)  |  страница 2 из 6  |  [Далее: упражнение - функции и опционалы](@next)
