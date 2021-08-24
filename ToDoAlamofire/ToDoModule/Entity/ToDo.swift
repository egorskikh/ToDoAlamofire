//
//  ToDo.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import Foundation

struct ToDos: Decodable {
    let items: [ToDo] 
}

struct ToDo: Decodable {
    let item: String
    let priority: Int
}
