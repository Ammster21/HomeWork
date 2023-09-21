//
//  main.swift
//  HomeWork
//
//  Created by Artem Gorbachev on 21.09.2023.
//

import Foundation

let deposit: Double = 1000
let perсent: Double = 1 + 5/100

let period1: Double = deposit * perсent
let period2: Double = period1 * perсent
let period3: Double = period2 * perсent
let period4: Double = period3 * perсent
let total: Double = period4 * perсent


print(total)

