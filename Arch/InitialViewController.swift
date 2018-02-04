//
//  InitialViewController.swift
//  Arch
//
//  Created by Дарья Гапанюк on 04.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import UIKit

class InitialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func pressButtonPressed(_ sender: Any) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let booksListViewController = storyboard.instantiateViewController(withIdentifier: "BooksListViewController")
        BooksListAssembly().assembly(booksListViewController as! BooksListViewController)
        navigationController?.pushViewController(booksListViewController, animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
