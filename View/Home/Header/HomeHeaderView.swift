//
//  HomeHeaderView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 8/27/21.
//

import SwiftUI

struct HomeHeaderView: View {

    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Good Morning,")
                    .font(Font.custom("Besley", size: 28))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.black)
                    .padding()
            }
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "flame")
                    .font(.largeTitle)
                    .foregroundColor(.orange)
                    .padding()
                    
                    
 
            })
            
        
        }
    }
}

extension View {
    public func gradientForeground(colors: [Color]) -> some View {
        
        self.overlay(LinearGradient(gradient: .init(colors: colors), startPoint: .topLeading, endPoint: .bottomLeading))
            .mask(self)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
    }
}
