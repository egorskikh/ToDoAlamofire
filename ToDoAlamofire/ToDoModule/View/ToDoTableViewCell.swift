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

}
