//
//  ContentView.swift
//  Trek
//
//  Created by Niranjan Kumar on 24/04/21.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    
    var body: some View {
        ScrollView{             // scrollview is a type of which lets us scross trough the page 
            Image(location.heroPicture)
                .resizable() //changes the size of image
                .scaledToFit() //fits the image in a proper order
            
            Text(location.name)
                .font(.largeTitle) //increases the size of text
                .bold() //bold to the text
                .multilineTextAlignment(.center) //this makes 2nd line of text to the center
            
            Text(location.country)
                .font(.title)
                .foregroundColor(.secondary) //this uses the background and primary color being black, automatically makes grey as the secondary color
                
            Text(location.description)
                .padding(.horizontal)
            
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)  // we are defining padding on top of the text of did you know... if we just add padding then its gonna give padding for all 4 sides
            
            Text(location.more)
                .padding(.horizontal) //padding given on the horizontal sides
        }
        .navigationTitle("Discover") //built in title
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
