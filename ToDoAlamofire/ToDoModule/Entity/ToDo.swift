//
//  ToDo.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import Foundation

struct ToDos: Codable {
    let items: [Todo] 
}

struct ToDo: Codable {
    let item: String
    let priority: Int
}
