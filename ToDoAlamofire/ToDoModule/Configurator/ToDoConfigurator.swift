//
//  ToDoRouter.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import UIKit

class ToDoConfigurator: RouterProtocol {

    func buildModule(vc: ViewProtocol) {
        var presenter: PresenterProtocol & InteractorOutputProtocol = ToDoPresenter()
        let interactor: InteractorInputProtocol = ToDoInteractor()
        let router = ToDoConfigurator()

        vc.presenter = presenter
        presenter.view = vc
        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter
    }

}

