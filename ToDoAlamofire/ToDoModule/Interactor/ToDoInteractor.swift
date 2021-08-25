//
//  ToDoInteractor.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import UIKit

class ToDoInteractor: InteractorInputProtocol {

    weak var presenter: InteractorOutputProtocol?
    var service = ToDoNetworking()

    var todos: [ToDo] {
        service.getDataTest
    }

    func retrieveTodos() {
        presenter?.didRetrieveToDos(todos)
    }

}


