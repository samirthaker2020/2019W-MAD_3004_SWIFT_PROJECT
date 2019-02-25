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
    func displaydata() {
         print("")
    }
    var ucid:Int?
    var uid:String?
    var pass:String?
    //var userlogin=[Users]()
    var userlogin=Dictionary<String,Users>()
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
    func checkuser(username:String)->Bool
    {
        if let _=userlogin[username]
        {
            check=true
        }
        else
        {
            check=false
        }
        return check!
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
            if(msg==true)
            {
                print("Customer Name Updated Sucessfully")
            }else if(msg==false)
            {
                print("Failed")
            }else
            {
                print("Try again later")
            }
        case 4:
            if(msg==true)
            {
                print("User name already exsist!!!")
            }else if(msg==false)
            {
                
            }else
            {
                print("Try again later")
            }
        default:
            break
        }
    }
    
   
    
    func verifylogin(id:String,p:String)   ->Bool
  {
    
    if  let u = userlogin[id]
    {
        if u.pass == p{
        check=true
        }
        else{
            check = false
        }
    }
    else
    {
        check=false
    }
 return check!
}
}
