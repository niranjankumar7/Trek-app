//
//  TipsView.swift
//  Trek
//
//  Created by Niranjan Kumar on 25/04/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")! // , ! means confirming that if this doesnt work then app can crash
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        List(tips, id: \.text, children: \.children){
            tip in
            if tip.children != nil{
                Label(tip.text, systemImage:"quote.bubbble")
                    .font(.headline)
            } else{
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
