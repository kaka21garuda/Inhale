//
//  HomeHeaderView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 8/27/21.
//

import SwiftUI

struct HomeHeaderView: View {
    
    
    
    var body: some View {
        HStack() {
            VStack(alignment: .leading) {
                Text("Good Morning,")
                    .font(.callout)
                    .foregroundColor(.white)
                Text("Liam Gallagher")
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "sun.min.fill")
                    .font(.largeTitle)
                    .foregroundColor(Color(red: 171 / 255, green: 115 / 255, blue: 255 / 255))
                
            })
            
        
        }
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
