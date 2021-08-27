//
//  ContentView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 8/27/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 45 / 255, green: 53 / 255, blue: 79 / 255).ignoresSafeArea()
            
            VStack {
                HomeHeaderView()
                Spacer()
            }.padding(14)
            
        }
        
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
