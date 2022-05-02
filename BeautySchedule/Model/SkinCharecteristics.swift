
import Foundation
import Combine

class SkinCharecteristics: ObservableObject {
    
    @Published var age: String {
           didSet {
               UserDefaults.standard.set(age, forKey: "age")
           }
       }
    
    @Published var skinType: SkinTypes {
           didSet {
               UserDefaults.standard.set(skinType.rawValue, forKey: "skinType")
           }
       }
    
    @Published var makeupfrequency: MakeupFrequency{
           didSet {
               UserDefaults.standard.set(makeupfrequency.rawValue, forKey: "makeupfrequency")
           }
       }
    
    @Published var concerns: Concerns {
           didSet {
               UserDefaults.standard.set(concerns.rawValue, forKey: "concerns")
           }
       }
    
    @Published var sunReaction: SunReactions {
           didSet {
               UserDefaults.standard.set(sunReaction.rawValue, forKey: "sunReaction")
           }
       }
    
    init() {
            self.age = UserDefaults.standard.object(forKey: "age") as? String ?? ""
            self.skinType = (UserDefaults.standard.object(forKey: "skinType") == nil ? SkinTypes.oily : SkinTypes(rawValue: UserDefaults.standard.object(forKey: "skinType") as! String)) ?? SkinTypes.oily
            self.makeupfrequency = (UserDefaults.standard.object(forKey: "makeupfrequency") == nil ? MakeupFrequency.everyday : MakeupFrequency(rawValue: UserDefaults.standard.object(forKey: "makeupfrequency") as! String)) ?? MakeupFrequency.everyday
            self.concerns = (UserDefaults.standard.object(forKey: "concerns") == nil ? Concerns.acne : Concerns(rawValue: UserDefaults.standard.object(forKey: "concerns") as! String)) ?? Concerns.acne
            self.sunReaction = (UserDefaults.standard.object(forKey: "sunReaction") == nil ? SunReactions.neverBurns : SunReactions(rawValue: UserDefaults.standard.object(forKey: "sunReaction") as! String)) ?? SunReactions.neverBurns
    }
}

