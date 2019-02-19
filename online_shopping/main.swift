//
//  main.swift
//  project_swift
//
//  Created by sam on 2019-02-18.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
var n:Int?
 let c=Customer()
var check:Bool=false
repeat{
    print("Please select an option: \n1 - Register \n2 - Login \n3 - Display \n 4.Exit")
    n = Int(readLine()!)
    
    switch n{
    case 1:
       check=c.register()
        c.displayData(msg: check, no: 1)
    case 2:
      check = c.login()
        c.displayData(msg: check, no: 2)
        break
      //  c.displayData(msg: log, no: 2)
    //  print(log)
    case 3:
       c.disp()
        c.disp1()
    default:
        break
    }
    
    
}
    while(n! <= 4)
