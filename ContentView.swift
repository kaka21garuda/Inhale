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
            LinearGradient(gradient: Gradient(colors: [MyColor.midnightBlue]), startPoint: .topTrailing, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                VStack {
                    HomeHeaderView() // good morning and light bulb
                        .padding(.bottom, 2)
                    
                    AllTreatmentsHeaderView()
                    HomeCardView()
                    TodaysListView()
                    Spacer()
                    
                    
                        
                    
                }.padding()
            })
            
        }
        
        
    }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
