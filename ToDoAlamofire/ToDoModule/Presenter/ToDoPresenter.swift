//
//  ToDoPresenter.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import Foundation

class ToDoPresenter: PresenterProtocol {

    weak var view: ViewProtocol?
    var interactor: InteractorInputProtocol?
    var router: RouterProtocol?

    func viewWillAppear() {
        interactor?.retrieveTodos()
    }
    
}

extension ToDoPresenter: InteractorOutputProtocol {

    func didRetrieveToDos(_ todos: [ToDo]) {
        view?.showTodos(todos)
    }

}
