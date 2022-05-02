
class Product{
     var cleansingProduct: CleansingProducts
     var toningProduct: ToningProducts
     var moisturizingAndNourishingProduct: MoisturizingAndNourishingProducts
     var exfoliationProduct: ExfoliationProducts
     
    
    init (cleansingProduct: CleansingProducts,toningProduct: ToningProducts, moisturizingAndNourishingProduct: MoisturizingAndNourishingProducts, exfoliationProduct: ExfoliationProducts ) {
        self.cleansingProduct = cleansingProduct
        self.toningProduct = toningProduct
        self.moisturizingAndNourishingProduct = moisturizingAndNourishingProduct
        self.exfoliationProduct = exfoliationProduct
        
    }
    
    
}
