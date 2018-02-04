//
//  BooksListPresenter.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation

protocol IBooksListPresenterDelegate {
    func showData(_ displayModels: [ListedBookDisplayModel])
    func showError()
    func openNextScreen()
    func showAddingError()
}

protocol IBooksListPresenter {
    var viewDelegate: IBooksListPresenterDelegate? { get set }
    func loadData()
    func addButtonPressed()
}

struct ListedBookDisplayModel {
    var bookTitle: String
    var authorName: String
}

class BookListPresenter: IBooksListPresenter {
    
    var viewDelegate: IBooksListPresenterDelegate?
    
    var model: IBookListModel
    
    init(model: IBookListModel) {
        self.model = model
    }
    
    func loadData() {
        DispatchQueue.global().async {
            self.model.getAllBooks(with: { (books) in
                if let books = books {
                    let displayModels = books.map({ListedBookDisplayModel(bookTitle: $0.bookTitle, authorName: $0.authorName)})
                    DispatchQueue.main.async {
                        self.viewDelegate?.showData(displayModels)
                    }
                } else {
                    DispatchQueue.main.async {
                        self.viewDelegate?.showError()
                    }
                }
            })
        }
    }
    
    func addButtonPressed() {
        //
    }
    
    
}
