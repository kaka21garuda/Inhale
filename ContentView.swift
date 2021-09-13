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
            MyColor.offWhite
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack {
                    HomeHeaderView() // good morning and light bulb
                    AllTreatmentsHeaderView()
                        
                    HomeCardView()
                    TodaysListHeaderView()
                    TodaysListView()
                    Spacer()
       
                }
                
                
                
            })
        }
        
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
