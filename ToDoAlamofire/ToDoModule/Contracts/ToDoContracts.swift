//
//  ToDoContracts.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import UIKit

// MARK: - View

protocol ViewProtocol: AnyObject {
    var presenter: PresenterProtocol? { get set }
    
    func showTodos(_ todos: [ToDo])
}

// MARK: - Presenter

protocol PresenterProtocol {
    var view: ViewProtocol? { get set } // weak
    var interactor: InteractorInputProtocol? { get set }
    var router: ConfiguratorProtocol? { get set }

    func retrieveTodosForView()
}

// MARK: - Interactor

protocol InteractorOutputProtocol: AnyObject {
    func didRetrieveToDos(_ todos: [ToDo])
}

protocol InteractorInputProtocol: AnyObject {
    var presenter: InteractorOutputProtocol? { get set } // weak

    func retrieveTodosForPresenter()
}

// MARK: - Configurator

protocol ConfiguratorProtocol {
     func buildModule(vc: ViewProtocol)
}
