//
//  Location.swift
//  Trek
//
//  Created by Niranjan Kumar on 25/04/21.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture:String
    let advisory:String
    
    static let example = Location(id:1, name: "Great smokey Mountains", country: "United States", description: "Great place to visit",
                                  more: "More text ",latitude: 35.6532, longitude: -83.5070,heroPicture: "smokies",advisory: "of bears")
}
