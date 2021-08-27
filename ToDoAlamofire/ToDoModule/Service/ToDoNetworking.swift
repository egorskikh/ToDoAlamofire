//
//  ToDoNetworking.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 24.08.2021.
//

import Foundation
import Alamofire

class ToDoNetworking {
    typealias DataCompletionHandler = ([ToDo]) -> Void

    func getResponse(completionHandler: @escaping DataCompletionHandler ) {
        var returnArr: [ToDo] = []
        let request = Session.default.request("http://localhost:3003/")

        request.responseDecodable(of: ToDos.self) { (response) in

            switch response.result {

            case .success(let tasks):
                print("SUCCESS to FETCH JSON: \(tasks)")
                returnArr = tasks.items
                completionHandler(returnArr)
            case .failure(let error):
                print("FAILED to FETCH JSON: \(error.localizedDescription)")
            }

        }

    }

}


