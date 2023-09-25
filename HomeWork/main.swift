//
//  main.swift
//  HomeWork
//
//  Created by Artem Gorbachev on 21.09.2023.
//

import Foundation

let deposit: Double = 1000
let perсent: Double = 5
let multiplay = 1 + perсent / 100

let period1: Double = deposit * multiplay
let period2: Double = period1 * multiplay
let period3: Double = period2 * multiplay
let period4: Double = period3 * multiplay
let total: Double = period4 * multiplay



print(total)

