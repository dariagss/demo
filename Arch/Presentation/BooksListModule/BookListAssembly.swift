//
//  BookListAssembly.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation

class BooksListAssembly {
    
    func assembly(_ viewController: BooksListViewController) {
        var presenter = booksListPresenter()
        viewController.presenter = presenter
        presenter.viewDelegate = viewController
    }

    func booksListPresenter() -> IBooksListPresenter {
        return BookListPresenter(model: booksListModel())
    }

    func booksListModel() -> IBookListModel {
        return BookListModel(bookService: bookService(), userRestrictionsService: userRestrictionsService())
    }
    
    func bookService() -> IBookService {
        return BookService()
    }
    
    func userRestrictionsService() -> IUserRestrictionsService {
        return UserRestrictionsService()
    }
}
