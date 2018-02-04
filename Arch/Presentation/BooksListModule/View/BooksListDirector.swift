//
//  BooksListDirector.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation
import UIKit

class BooksListDirector {
    
    func createCells(with displayModels: [ListedBookDisplayModel], for tableView: UITableView) -> [[UITableViewCell]] {
        var cells: [UITableViewCell] = []
        let cellBuilder = ListedBookCellBuilder()
        for model in displayModels {
            cells.append(cellBuilder.buildCell(with: model, for: tableView))
        }
        return [cells]
    }
}
