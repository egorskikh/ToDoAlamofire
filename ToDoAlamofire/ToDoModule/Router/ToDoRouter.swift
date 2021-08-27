//
//  ToDoRouter.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 27.08.2021.
//

import UIKit

class ToDoRouter {

    var vc: ViewProtocol?

    static var storyboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }

    init(vc: ViewProtocol) {
        let navController = ToDoRouter.storyboard
            .instantiateViewController(withIdentifier: "ToDoNavigation") as! UINavigationController

        guard
            let viewController = navController.topViewController as? ToDoViewController
        else {
            fatalError("Invalid View Controller")
        }

        self.vc = viewController
    }
}
