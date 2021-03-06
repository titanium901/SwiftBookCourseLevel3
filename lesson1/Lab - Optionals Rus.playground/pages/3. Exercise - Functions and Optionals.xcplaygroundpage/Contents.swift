/*:
 ## Упражнение - функции и опционалы
 
 Когда приложение спрашивает возраст пользователя, одной из причин может быть то, что пользователю нужно быть старше определённого возраста для того, чтобы получить доступ к некоторым из функций приложения.  Напишите функцию под названием `checkAge`, которая принимает один параметр типа `String`.  Функция должна конвертировать этот параметр в значение типа `Int`, а затем проверять, достиг ли пользователь 18 лет.  Если достиг, выведите "Доброе пожаловать!", в противном случае напечатайте "Извините, но для использования этого приложения вы должны быть старше 18 лет".  Если параметр типа `String` не может быть преобразован в значение типа `Int`, выведите "Извините, произошла ошибка.  Не могли бы вы снова указать ваш возраст?".  Вызовите функцию и передайте ей значение `userInputAge`, определённое ниже, в качестве единственного параметра.  Затем вызовите функцию снова и передайте ей строку, которая может быть преобразована в целое число.
 */
let userInputAge: String = "34e"
func checkAge(age: String) {
    if let numberAge = Int(age) {
        if numberAge >= 18 {
            print("Welcome!")
        } else {
            print("Извините, но для использования этого приложения вы должны быть старше 18 лет")
        }
    } else {
        print("Извините, произошла ошибка.  Не могли бы вы снова указать ваш возраст?")
    }
}

checkAge(age: userInputAge)
checkAge(age: "18")
/*:
 Поменяйте функцию таким образом, чтобы она возвращала возраст, как целое.  Всегда ли ваша функция будет возвращать значение?  Сделайте так, чтобы тип возвращаемого значения отражал этот факт.  Вызовите функцию и выведите возращаемое значение.
 */
func checkAgeTwo(age: String) -> Int? {
    if let numberAge = Int(age) {
        if numberAge >= 18 {
            print("Welcome!")
        } else {
            print("Извините, но для использования этого приложения вы должны быть старше 18 лет")
        }
        return numberAge
    } else {
        print("Извините, произошла ошибка.  Не могли бы вы снова указать ваш возраст?")
        return nil
    }
}

let age = checkAgeTwo(age: userInputAge)
print(age)
let ageTwo = checkAgeTwo(age: "18")
/*:
 Вы делаете приложение для покупок.  Напишите функцию, которая принимает название продукта, а возвращает стоимость этого продукта.  В теле функции проверьте, что продукт есть в наличии, путём доступа к словарю `stock`.  Если такой продукт имеется, верните его цену из словаря `prices`.  Если продукта в наличии нет, верните `nil`.  Вызовите функцию и передайте ей `String` с существующим продуктом.  Выведите полученное значение.
 */
var prices = ["чипсы": 35.70, "пончик": 49, "сок": 50, "яблоко": 34, "банан": 70.80, "капуста": 39.90]
var stock = ["чипсы": 4, "пончик": 0, "сок": 12, "яблоко": 6, "банан": 6, "капуста": 3]

func priceOfProduct(name: String) -> Double? {
    if let product = stock[name], product > 0 {
        return prices[name]
    }
    return nil
}
priceOfProduct(name: "чипсы")
let check = priceOfProduct(name: "яблоко")
print(check!)
//: [Ранее](@previous)  |  страница 3 из 6  |  [Далее: упражнение для приложения - функции для еды](@next)
