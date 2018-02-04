//
//  UserRestrictionsService.swift
//  Arch
//
//  Created by Дарья Гапанюк on 04.02.18.
//  Copyright © 2018 Дарья Гапанюк. All rights reserved.
//

import Foundation

protocol IUserRestrictionsService {
    func isAddingAvailble(completion: (Bool) -> ())
}

class UserRestrictionsService: IUserRestrictionsService {
    
    func isAddingAvailble(completion: (Bool) -> ()) {
        completion(false)
    }
    
}
