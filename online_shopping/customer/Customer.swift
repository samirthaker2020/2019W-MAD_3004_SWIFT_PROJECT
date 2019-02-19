//
//  Cust.swift
//  sam
//
//  Created by sam on 2019-02-19.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
class Customer:Users
{
    var customername:String?
    var email:String?
    var creditcardinfo:String?
    var shipppingInfo:String?
    var address:String?
    var customerdetails=[String:String]()
    override init() {
        super.init()
        self.customername=String()
        self.email=String()
        self.creditcardinfo=String()
        self.shipppingInfo=String()
        self.address=String()
        
    }
    
    func login() ->Bool
    {
        let check:Bool?
        print("Userid:::")
        let id = readLine()!
        print("password:::")
        let pass=readLine()!
        check = super.verifylogin(id: id, p: pass)
        return check!
    }
    
    
    
    
    func register() ->Bool
    {
        var c:Bool=false
        
        print("Enter Customer Name::")
        customername=readLine()!
        print("Enter UserID::")
        super.uid = readLine()!
        print("Enter Password::")
        super.pass = readLine()!
        print("Enter Address::")
        address = readLine()!
        print("Enter Email::")
        email = readLine()!
        print("Enter Credit Card Info::")
        creditcardinfo = readLine()!
        print("Enter Shipping Info::")
        shipppingInfo = readLine()!
      //  let count=String(super.login.count+1)
        c=super.add(uid: super.uid!, pass: super.pass!)
        if(c==true)
        {
            customerdetails["uid"]=super.uid
            customerdetails["name"]=customername
            customerdetails["address"]=address
            customerdetails["email"]=email
            customerdetails["ccinfo"]=creditcardinfo
            customerdetails["shipinfo"]=shipppingInfo
            c=true
            
            
        }else{
            c=false
        }
        
        
        return c
    }
    
    
    
    
    
    func disp()
    {
          print("------------------------------------")
        for (key,value) in login{
            print("key:\(key) value:\(value)")
    
        }
           print("------------------------------------")
    }
    
    func disp1()
    {
       print("------------------------------------")
        for (key,value) in customerdetails{
            print("key:\(key) value:\(value)")
            
        }
         print("------------------------------------")
    }
    }
