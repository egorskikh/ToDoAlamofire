//
//  ToDoRouter.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import UIKit

class ToDoRouter: RouterProtocol {

    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    static func createToDoModule() -> UIViewController {
        let navController = storyboard.instantiateViewController(withIdentifier: "ToDoNavigation") as! UINavigationController
        guard
            let toDoViewController = navController.topViewController as? ToDoViewController
        else {
            fatalError("Invalid View Controller")
        }
        var presenter: PresenterProtocol & InteractorOutputProtocol = ToDoPresenter()
        let interactor: InteractorInputProtocol = ToDoInteractor()
        let router = ToDoRouter()

        toDoViewController.presenter = presenter
        presenter.view = toDoViewController
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter

        return navController
    }

}
