//
//  main.swift
//  Q2GeekBrains
//
//  Created by Даниил Мурыгин on 09.10.2019.
//  Copyright © 2019 Мурыгин Даниил. All rights reserved.
//

import Foundation

//Написать функцию, которая определяет, четное число или нет.

func chetIliNeChet(_ value:Int){
    value % 2 == 0 ?
        print("Число \(value) четное "):
        print("Число \(value) Не четное ")
}

//Написать функцию, которая определяет, делится ли число без остатка на 3.

func delitsyaNaThree(_ value:Int){
    value % 3 == 0 ?
        print("Число \(value) делится на 3 без остатка "):
        print("Число \(value) Не делится на 3 без остатка")
}

//Создать возрастающий массив из 100 чисел.

var array:[Int] = {
    var tempArr:[Int] = []
    for i in 1...100{
        tempArr.append(i)
    }
    return tempArr
}()

//Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

func deleteChetAndThreeNotDelit(_ array: inout [Int]){
    var i = 0
    for _ in array{
      
        if array[i] % 2 == 0 || array[i] % 3 != 0{
            array.remove(at: i)
            continue
        }
        i += 1
    }
}

deleteChetAndThreeNotDelit(&array)

//Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

func Fibonachi( array: inout [Int]){
    var i = array.count - 1
    for _ in 1...100{
        array.append(array[i] + array[i - 2])
        i += 1
    }
}

Fibonachi(array: &array)


/*Заполнить массив из 100 элементов различными простыми числами.
 
a. Выписать подряд все целые числа от двух до n (2, 3, 4, ..., n).
b. Пусть переменная p изначально равна двум — первому простому числу.
c. Зачеркнуть в списке числа от 2p до n, считая шагами по p (это будут числа, кратные p: 2p, 3p, 4p, ...).
d. Найти первое не зачёркнутое число в списке, большее, чем p, и присвоить значению переменной p это число.
e. Повторять шаги c и d, пока возможно.*/

var simpleArray:[Int] = {
    var tempArr:[Int] = []
    for i in 2...101{
        tempArr.append(i)
    }
    return tempArr
}()

func eriston(_ array : inout [Int]){
    
    func powOf2(_ value: Int) -> Int {
        return value * value
    }
    
    var value = 2
    
    while (powOf2(value) <= array.count - 1) {

   array.removeAll(where: {$0 >= powOf2(value) && $0.isMultiple(of: value)})
   value = array.first(where: {$0 > value})!
        
   }
}

eriston(&simpleArray)
