//


import Foundation

class ShoppingCart:IDisplay
{
    func displaydata(msg: Bool, no: Int) {
        print(" ")
    }
    
   
    
    private var cartid:Int?
    var productid:String?
    var quantity:Int?
    var dateadded=Date()
    var count:Int?
    var subtotal:Float?
    var total:Float?
    var name:String=""
    var price:Float=0.0
      var tprice:Float?
    var productList = [ShoppingCart]()
    var orderedProduct = Dictionary<Int,[ShoppingCart]>()
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
            if let pname=p1.productdetails[self.productid!]
            {
                tprice=0
                name=pname.productname
                price=pname.productprice
                tprice=(tprice!) + (self.price)
                
            }else{name="---"}
            print("\( self.productid!)      ||   \(self.name)      ||      \(self.quantity!)    ||  \(self.price)")
           
        }
    func viewcart()
    {  print("----------------------CART---------------------------")
        print("Product ID  ||   Product Name   ||     Quantity   ||  Price")
        for j in self.productList {
            j.displaydata()
        }
        print("---------------------------------------------------------------------")
 
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
    
    func checkout(cid:Int)
    {
    //    var proid:String
       // var pqty:Int
      //  let od1=OderDetails()
        orderedProduct[cid]=self.productList
        for (_,v) in s.orderedProduct
        {
            do{
            for i in 0...s.productList.count-1
            {
                if let u=p1.productdetails[ v[i].productid!]
                {
                    od=OderDetails(oderid:v[i].cartid!,pid:v[i].productid!,pname:u.productname,qty:v[i].quantity!,price:u.productprice,subtotal:Float(v[i].quantity!) * u.productprice)
                   
                }
                 od.calc(list: od)
            }
            } catch{ print("try again later")}
        }
        od.storedata(oid: cid)
        
    }
}

        

