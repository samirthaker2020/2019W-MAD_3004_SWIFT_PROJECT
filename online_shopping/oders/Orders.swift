 

import Foundation

 class Oders:Customer
 {
    
    private var oderid:Int?
    var datecreated:String?
    var dateshipped:String?
    var custname:String?
    var custid:String?
    var status:String?
    var shipid:String?
    
    override init() {
        self.oderid=Int()
        self.datecreated=String()
        self.dateshipped=String()
        self.custname=String()
        self.custid=String()
        self.status=String()
        self.shipid=String()
        super.init()
    }
    
     init(oid:Int,odate:String,oship:String,cname:String,custid:String,status:String,shipid:String) {
        
        self.oderid=oid
        self.datecreated=odate
        self.dateshipped=oship
        self.custname = cname
        self.custid=custid
        self.status=status
        self.shipid=shipid
       super.init()
    }
    
    
    
 }
