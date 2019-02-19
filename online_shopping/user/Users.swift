//
//  Student.swift
//  sam
//
//  Created by sam on 2019-02-19.
//  Copyright © 2019 samir. All rights reserved.
//

import Foundation
class Users:IDisplay
{
    var uid:String?
    var pass:String?
    var check:Bool?
    init() {
        self.uid=String()
        self.pass=String()
    }
    init(uid:String,pass:String )
    {
        self.uid=uid
        self.pass=pass
       
    }
    func displayData(msg: Bool, no: Int) {
        //     print(msg)
        //  print(no)
        switch no {
        case 1:
            if(msg==true)
            {
                print("Register Sucessfully")
            }else if(msg==false)
            {
                print("Register Failed")
            }else
            {
                print("Try again later")
            }
        case 2:
            if(msg==true)
            {
                print("Login Sucessfully")
            }else if(msg==false)
            {
                print("Login Failed")
            }else
            {
                print("Try again later")
            }
        case 3:
            break
        default:
            break
        }
    }
    
    var login=[String:String]()
  
    
    func verifylogin(id:String,p:String) ->Bool
  {
    login["mani"]="tuli"
        if(login.keys.contains(id) && login.values.contains(p))
        {
        check=true
        }
    else
        {
            check=false
    }
    return check!
    }
    public func add(uid:String,pass:String) ->Bool
    {
        self.login[uid]=pass
        return true
    }
}
