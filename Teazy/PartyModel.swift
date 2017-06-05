//
//  PartyModel.swift
//  Teazy
//
//  Created by Dev on 05/06/2017.
//  Copyright © 2017 Dev. All rights reserved.
//

import UIKit

class Party {
    
    var name: String
    var date: String
    var hour: String
    var place: String
    var informations: String
    var friends: [String]
    var drinks: [String]
    
    init?(name: String, date: String, hour: String, place: String, informations: String, friends: [String], drinks: [String]) {
        
        if name.isEmpty || date.isEmpty || hour.isEmpty || place.isEmpty || friends.isEmpty {
            return nil
        }
        
        self.name = name
        self.date = date
        self.hour = hour
        self.place = place
        self.informations = informations
        self.friends = friends
        self.drinks = drinks
    }
}
