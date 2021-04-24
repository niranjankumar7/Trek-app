//
//  Locations.swift
//  Trek
//
//  Created by Niranjan Kumar on 25/04/21.
//

import Foundation

class Locations: ObservableObject{
    let places: [Location]
    
    var primary: Location{
        places[0]
    }
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")! // , ! means confirming that if this doesnt work then app can crash
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
