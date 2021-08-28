//
//  ViewController.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 22.08.2021.
//

import UIKit

class ToDoViewController: UIViewController, ViewProtocol {
    
    // MARK: - Properties
    var configuration = ToDoConfigurator()
    var presenter: PresenterProtocol?
    
    var todos: [ToDo] = [] {
        didSet {
            tasksTableView.reloadData()
        }
    }
    
    // MARK: - IBOutlet
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var tasksTableView: UITableView!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureNavigationController()
        configuration.buildModule(vc: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        presenter?.retrieveTodosForView()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    //  MARK: - Private Method
    func showTodos(_ todos: [ToDo]) {
        self.todos = todos
    }
    
    private func configureView() {
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }
    
    private func configureNavigationController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
}

// MARK: - UITableViewDataSource
extension ToDoViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: ToDoTableViewCell.identifier, for: indexPath)
            as! ToDoTableViewCell
        let task = todos[indexPath.item]
        cell.fillСell(todo: task)
        return cell
    }
    
}

// MARK: - UITableViewDelegate
extension ToDoViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
}
