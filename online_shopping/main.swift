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

var count:Int=0
var check:Bool=false
var customername:String?
var uid:String?
var pass:String?
var address:String?
var email:String?
var credicardinfo:String?
var shippinginfo:String?
var no:Int?
var cust:[Customer]
var user:[Users]
repeat{
    print("Please select an option: \n1 - Register \n2 - Login \n3 - Display \n 4.Exit")
    n = Int(readLine()!)
    
    switch n{
    case 1:
        
     print("Enter no of user")
     no=Int(readLine()!)
    for  i in 0...no!-1
    {
        print("Enter Customer Name::")
         customername=readLine()!
        print("Enter UserID::")
          uid = readLine()!
        print("Enter Password::")
        pass = readLine()!
        print("Enter Address::")
        address = readLine()!
        print("Enter Email::")
     email = readLine()!
        print("Enter Credit Card Info::")
            credicardinfo = readLine()!
        print("Enter Shipping Info::")
            shippinginfo = readLine()!
      
     
        let cust = Customer(cid: "1", cname: customername!, email: email!, ccinfo: credicardinfo!, shipinfo: shippinginfo!, address: address!)
        let user   = Users(ucid:"1",uid:uid!,pass:pass!)
    c.register(userlogin: [user], cdetails: [cust])
        }
    case 2:
        print("Enter UserID::")
        let uid = readLine()!
        print("Enter Password::")
        let  pass = readLine()!
        check = c.login(id:uid,pass:pass)
       c.displayData(msg: check, no: 2)
      
      
    case 3:  c.displaydata()
       
    default:
        break
    }
    
    
}
    while(n! <= 4)
