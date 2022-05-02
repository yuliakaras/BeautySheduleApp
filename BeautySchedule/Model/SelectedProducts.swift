
import Foundation

class SelectedProducts: ObservableObject {
   
  
    @Published var cleansingProductSelected: CleansingProducts {
           didSet {
               UserDefaults.standard.set(cleansingProductSelected.rawValue, forKey: "cleansingProductSelected")
           }
       }
    @Published var toningProductSelected: ToningProducts {
           didSet {
               UserDefaults.standard.set(toningProductSelected.rawValue, forKey: "toningProductSelected")
           }
       }
    @Published var moisturizingAndNourishingProductSelected: MoisturizingAndNourishingProducts {
           didSet {
               UserDefaults.standard.set(moisturizingAndNourishingProductSelected.rawValue, forKey: "moisturizingAndNourishingProductSelected")
           }
       }
    @Published var exfoliationProductSelected: ExfoliationProducts {
           didSet {
               UserDefaults.standard.set(exfoliationProductSelected.rawValue, forKey: "exfoliationProductSelected")
           }
       }
    
  
    
    init() {
            
        self.cleansingProductSelected = (UserDefaults.standard.object(forKey: "cleansingProductSelected") == nil ? CleansingProducts.gel : CleansingProducts(rawValue: UserDefaults.standard.object(forKey: "cleansingProductSelected") as! String)) ?? CleansingProducts.gel
        self.toningProductSelected = (UserDefaults.standard.object(forKey: "toningProductSelected") == nil ? ToningProducts.tonic : ToningProducts(rawValue: UserDefaults.standard.object(forKey: "toningProductSelected") as! String)) ?? ToningProducts.tonic
        self.moisturizingAndNourishingProductSelected = (UserDefaults.standard.object(forKey: "moisturizingAndNourishingProductSelected") == nil ? MoisturizingAndNourishingProducts.cream : MoisturizingAndNourishingProducts(rawValue: UserDefaults.standard.object(forKey: "moisturizingAndNourishingProductSelected") as! String)) ?? MoisturizingAndNourishingProducts.cream
        self.exfoliationProductSelected = (UserDefaults.standard.object(forKey: "exfoliationProductSelected") ==
                                           nil ? ExfoliationProducts.exfoliationMusk: ExfoliationProducts(rawValue: UserDefaults.standard.object(forKey: "exfoliationProductSelected") as! String)) ?? ExfoliationProducts.exfoliationMusk
    }
}
