//
//  main.swift
//  HomeWork
//
//  Created by Artem Gorbachev on 21.09.2023.
//

import Foundation

//1. Функция, которая определяет, четное число или нет.
func odd (numb: Int) {
    if numb % 2 == 0 {
        print("\(numb) четное число")
    } else {
        print("\(numb) нечетное число")
    }
}

//2. Функция, которая определяет, делится ли число без остатка на 3.
func delenieNa3 (numb: Int){
    if numb % 3 == 0 {
        print("\(numb) делится на 3 без остатка")
    } else {
        print("\(numb) не делится на 3 без остатка")
    }
}

//3. Возрастающий массив из 100 чисел.
var massivUp: [Int] = Array(1...100)

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
for items in (0..<massivUp.count).reversed(){
    if items % 2 != 0 || items % 3 == 0 {
        massivUp.remove(at: items)
            }
}
        
//7. Простой калькулятор.Вводим два числа и операцию (сложение, вычитание, умножение, деление), после чего выводим результат.==
func calc (number1: Int, opearation: Character, number2: Int) {
    if opearation == "+"{
        print(number1 + number2)
    } else  if opearation == "-" {
        print(number1 - number2)
    } else if opearation == "*" {
        print(number1 * number2)
    }
    else if opearation == "/" {
        print(number1 / number2)
    } else {
        print("Вычисление недоступно")
    }
}


//8. Функция которая определяет длинну строки.
func longLine (line: String){
    print(line.count)
}

//9. Напишите функцию которая определит максимальное числа из трех.
func maxNumber (number1: Int, number2: Int, number3: Int) {
    if number1 > number2 && number1 > number3 {
        print("number1 max number")
    }
    else if number2 > number1 && number2 > number3 {
        print("number2 max number")
    }
    else if number3 > number1 && number3 > number2 {
        print("number3 max number")
    }
}

//10.Функция которая сделает реверс строки которую введет пользователь
func reversLine (text: String){
    for item in text.reversed(){
        print(item, terminator : " ")
    }
}

//12 и 15. Функция которая считает количество слов в строке
func numberWords (words: String){
    let words = words.split(separator: " ")
    print(words.count)
}

//13. Функция которая выведит каждое слово строки на новой строке
func newLine (text: String){
    for item in text {
        if item == " "{
            print("\n")
        } else {
            print(item, terminator: "")
        }
    }
}

 
