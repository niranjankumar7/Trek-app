//
//  Tip.swift
//  Trek
//
//  Created by Niranjan Kumar on 25/04/21.
//

import Foundation

struct Tip: Decodable {
    let text:String
    let children: [Tip]?
}
