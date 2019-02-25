//


import Foundation

class ShoppingCart
{
    private var cartid:Int?
    var productid:Int?
    var quantity:Int?
    var dateadded:Int?
    
    init()
    {
        self.cartid=Int()
        self.productid=Int()
        self.quantity=Int()
        self.dateadded=Int()
    }
    
    init(proid:Int,cartid:Int,qty:Int,dateadded:Int)
    {
        self.productid=proid
        self.cartid=cartid
        self.quantity=qty
        self.dateadded=dateadded
    }
    
}

        

