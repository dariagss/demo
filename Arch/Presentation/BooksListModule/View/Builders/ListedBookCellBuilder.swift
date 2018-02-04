//
//  ListedBookCellBuilder.swift
//  Arch
//
//  Created by Дарья Гапанюк on 03.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation
import UIKit

class ListedBookCellBuilder {
    
    func buildCell(with displayModel: ListedBookDisplayModel, for tableView: UITableView) -> UITableViewCell {
        let cell: ListedBookCell = tableView.dequeueReusableCell(withIdentifier: "ListedBookCell") as! ListedBookCell
        cell.bookNameLabel.text = "\(displayModel.bookTitle)"
        cell.bookAuthorName.text = "\(displayModel.authorName)"
        return cell
    }
}
