//
//  BooksListViewController.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import UIKit

class BooksListViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var cells: [[UITableViewCell]] = [[]]
    
    var presenter: IBooksListPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        presenter?.loadData()
    }

    @IBAction func addButtonPressed(_ sender: Any) {
        presenter?.addButtonPressed()
    }
    
}

extension BooksListViewController: IBooksListPresenterDelegate {
    
    func showData(_ displayModels: [ListedBookDisplayModel]) {
        cells = BooksListDirector().createCells(with: displayModels, for: tableView)
        tableView.reloadData()
    }
    
    func showError() {
        //
    }
    
    func openNextScreen() {
        //
    }
    
    func showAddingError() {
        //
    }
    
    
}
