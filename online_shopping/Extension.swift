//
//  Extension.swift
//  sam
//
//  Created by Maninder Singh on 2019-02-23.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation

extension String{
    func YesOrNo() -> Bool{
        if self.lowercased().contains("y")
        {
            return true
        }else{
            return false
        }
    }
}
