//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = ["Joe": "Peanut Butter and Chocolate","Tim":"Natural Vanilla","Sophie":"Mexican Chocolate","Deniz":"Natural Vanilla","Tom":"Mexican Chocolate","Jim":"Natural Vanilla","Susan":"Cookies 'N' Cream"]
    
    // 2.
    func names (forFlavor flavor: String ) -> [String] {
        var peopleWhoWantedFlavor: [String] = []
        for (name,favoriteFlavor) in favoriteFlavorsOfIceCream {
            if flavor == favoriteFlavor {
            peopleWhoWantedFlavor.append(name)
            }
        }
        return peopleWhoWantedFlavor
    }
    
    // 3.
    func count(forFlavor flavor: String) ->Int {
        var numberOfPeopleWhoLikeFlavor = 0
        for (_,icecream) in favoriteFlavorsOfIceCream {
            if icecream == flavor {
                numberOfPeopleWhoLikeFlavor += 1
            }
        }
        return numberOfPeopleWhoLikeFlavor
    }
    
    // 4.
   
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    // 5.
    
    func replace(flavor:String, forPerson person:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
   
    // 6.
    
    func remove(person:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] =  nil
            return true
        } else {
            return false
        }
    }
    
    // 7.
    func numberOfAttendees() -> Int {
       return favoriteFlavorsOfIceCream.count
    }
    
    // 8.
    func add(person:String,withFlavor flavor:String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    // 9.
    func attendeeList() -> String {
        var sortedPartyGoers = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        for name in allNames {
            let isNotLast = name != allNames.last!
            let flavor = favoriteFlavorsOfIceCream[name]!
            if isNotLast {
                sortedPartyGoers += "\(name) likes \(flavor)\n"
            }else {
                sortedPartyGoers += "\(name) likes \(flavor)"
            }
        }
        
        return sortedPartyGoers
    }
    
    
    
    
    
    
    
    

}
