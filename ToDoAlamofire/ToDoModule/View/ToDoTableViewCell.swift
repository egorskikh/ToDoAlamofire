//
//  ToDoTableViewCell.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 23.08.2021.
//

import UIKit

class ToDoTableViewCell: UITableViewCell {

    // MARK: - Properties
    static let identifier = "ToDoCell"

    // MARK: - IBOutlet
    @IBOutlet weak var taskLabel: UILabel!
    @IBOutlet weak var priorityСolor: UIView!
    @IBOutlet weak var prioritySymbolLabel: UILabel!

    //MARK: - Public Method
    public func configureCell(todo: ToDo) {
        taskLabel.text = todo.item

        switch todo.priority {
        case 0: priorityСolor.backgroundColor = .green
        case 1: priorityСolor.backgroundColor = .yellow
        case 2: priorityСolor.backgroundColor = .red
        default: priorityСolor.backgroundColor = .white
        }
    }
}
