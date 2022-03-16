//
//  ContentView.swift
//  NaturalArt
//
//  Created by Leandro Hernandez on 15/3/22.
//

import SwiftUI

struct ContentView: View {
    
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    var body: some View {
        NavigationView {
            MainView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
