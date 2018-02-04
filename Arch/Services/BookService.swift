//
//  BookService.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation

//database object that can not go higher than sevice layer
struct Book {
    var bookId: Int
    var bookTitle: String
    var authorName: String
    var info: String
    var copiesSold: Int
}

//business model to use at presentation level
struct BookModelObject {
    var bookId: Int
    var bookTitle: String
    var authorName: String
    var info: String
    var copiesSold: Int
}


protocol IBookService {
    func getAllBooks(with completion: @escaping(_ books: [BookModelObject]?) -> ())
    func getBook(by id: Int, with completion: @escaping(_ book: BookModelObject?) -> ())
}

class BookService: IBookService {
    func getAllBooks(with completion: @escaping(_ books: [BookModelObject]?) -> ()) {
        //go to database here and transform database models (Book) into business models (bookModelObject), as i dont have one, just mock
        var objects: [BookModelObject] = []
        for i in 0...20 {
            objects.append(BookModelObject(bookId: i, bookTitle: "Title \(i)", authorName: "Author \(i)", info: "Info \(i)", copiesSold: i))
        }
        completion(objects)
    }
    
    func getBook(by id: Int, with completion: @escaping(_ book: BookModelObject?) -> ()) {
        //
    }
}
