//
//  BookListModel.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation

protocol IBookListModel {
    func getAllBooks(with completion: @escaping(_ books: [BookModelObject]?) -> ())
    func getBookAddingAvailability(with completion: @escaping(Bool) -> ())
}

class BookListModel: IBookListModel {
    
    var bookService: IBookService
    var userRestrictionsService: IUserRestrictionsService
    
    init(bookService: IBookService, userRestrictionsService: IUserRestrictionsService) {
        self.bookService = bookService
        self.userRestrictionsService = userRestrictionsService
    }
    
    func getAllBooks(with completion: @escaping ([BookModelObject]?) -> ()) {
        bookService.getAllBooks { (books) in
            completion(books)
        }
    }
    
    func getBookAddingAvailability(with completion: @escaping (Bool) -> ()) {
        //
    }
    
    
}
