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
    var cid:Int?
    var customername:String?
    var email:String?
    var creditcardinfo:String?
    var shipppingInfo:String?
    var address:String?
    var customerdetails=Dictionary<String,Customer>()
    
    override init() {
         super.init()
        self.cid=Int()
        self.creditcardinfo=String()
        self.address=String()
        self.shipppingInfo=String()
        self.customername=String()
    
    }
    init(cid:Int,uid:String,cname:String,email:String,ccinfo:String,shipinfo:String,address:String) {
     super.init()
       super.uid=uid
        super.pass=pass
        self.cid=cid
        self.customername=cname
        self.email=email
        self.creditcardinfo=ccinfo
        self.shipppingInfo=shipinfo
        self.address=address
        
    }
    
    func login(id:String,pass:String) ->Bool
    {
       let  check:Bool = super.verifylogin(id: id, p: pass)
        return check
        
    }
    
    func register(cid:Int,usid:String,cust:Customer,user:Users)
    {
         customerdetails[usid]=cust
  super.userlogin[usid]=user
    }
    
    override func displaydata() {
        print(super.userlogin)
        print(customerdetails)
       
        }
    func viewprofile(user:String)
    {
        if let u=customerdetails[user]
        {
            print("----------Customer-Profile------------")
            print("-----User:-\(user)--CustomerID-\(u.cid!)--------")
             print("--------------------------------------")
            print("1 - Customer Name:\(u.customername!)")
            print("2 - Customer Address:\(u.address!)")
            print("3 - Customer Email:\(u.email!)")
            print("4 - Credicard Info:\(u.creditcardinfo!)")
            print("5 - Shipping Info:\(u.shipppingInfo!)")
        }
    }
    func updateprofile(username:String,value:String,caseno:Int) -> Bool
    {
        var c:Bool?
        switch caseno {
        case 1:
            if let u=customerdetails[username]
            {
                u.customername=value
                c=true
            }
            else
            {
                c=false
            }
        default:
            print(" ")
        }
        return c!
    }
     
    }
