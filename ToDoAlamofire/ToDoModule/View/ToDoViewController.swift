//
//  ViewController.swift
//  ToDoAlamofire
//
//  Created by Egor Gorskikh on 22.08.2021.
//

import UIKit
import Alamofire

class ToDoViewController: UIViewController {

    // MARK: - IBOutlet
    @IBOutlet weak var tasksTableView: UITableView!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        configureNavigationController()
        testAlamofire()
    }

    //  MARK: - Private Method
    private func configureView() {
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
    }

    private func configureNavigationController() {
        navigationController?.navigationBar.prefersLargeTitles = true
    }

    // then delete
    private func testAlamofire() {

    }

}

// MARK: - UITableViewDataSource
extension ToDoViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 30
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tasksTableView.dequeueReusableCell(withIdentifier: ToDoTableViewCell.identifier, for: indexPath)
            as! ToDoTableViewCell
        cell.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.7249955512, blue: 0.7472946008, alpha: 1)
        return cell
    }

}

// MARK: - UITableViewDelegate
extension ToDoViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 109
    }

}
