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
    var todos: [ToDo] = []

    func retrieveTodosForPresenter() {
        service.getData({ todos in
            print("PROCESS")
            self.todos = todos
            self.presenter?.didRetrieveToDos(todos)
        })
    }

}


