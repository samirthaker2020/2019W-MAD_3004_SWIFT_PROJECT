//


import Foundation

class ShoppingCart:IDisplay
{
   
    
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var dateadded=Date()
    var count:Int?
    var subtotal:Float?
    var total:Float?
  
    var productList = [ShoppingCart]()
    //var orderedProduct = Dictionary<Int,[Products]>()
    init()
    {
        self.cartid=Int()
        self.productid=String()
        self.quantity=Int()
        self.dateadded=Date()
    }
    
    init(proid:String,cartid:Int,qty:Int,dateadded:Date)
    {
        self.productid=proid
        self.cartid=cartid
        self.quantity=qty
        self.dateadded=dateadded
    }
  
    func addcartitem(shop:ShoppingCart)->Bool
    {
        do{
            try  self.productList.append(shop)
            check=true
        }
        catch{check=false}
        return check
    }
  

        func displayData(msg: Bool, no: Int) {
            switch no {
            case 1:
                if(msg==true)
                {
                     print("Quantity Updated Sucessfully")
                }
                else
                {
                    print("Invalid!!!try again later..")
                }
            case 2:
                if(msg==true)
                {
                    print("Product Added Sucessfully")
                }
                else
                {
                    print("Invalid!!!try again later..")
                }
            case 3:
                if(msg==true)
                {
                    print("Product Removed Sucessfully")
                }
                else
                {
                    print("Invalid!!!try again later..")
                }
            default:
                print(" ")
            }
        }
        
        func displaydata() {
            print("\( self.productid!)      ||   \(self.cartid!)      ||      \(self.quantity!)    ||  \(self.dateadded)")
        }
    func viewcart()
    {  print("----------------------CART---------------------------")
        print("Product ID  ||   CartID   ||     Quantity   ||  Date")
        for j in self.productList {
            j.displaydata()
        }
    }
    func updatequantity(pno:String,pqty:Int) ->Bool
    {
        for i in productList
        {
            if (i.productid==pno)
            {
                i.quantity=pqty
                check=true
            }
            else
            {
                check=false
            }
        }
        return check
    }
    
    func removeProduct(productId:String)->Bool {
        var arrayNewProducts:[ShoppingCart] = [ShoppingCart]()
        for product in self.productList {
            if product.productid != productId {
                arrayNewProducts.append(product)
            }
            else{check=false}
        }
        self.productList = arrayNewProducts
        check=true
        return check
    }
}

        

