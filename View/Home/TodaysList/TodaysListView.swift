//
//  TodaysListView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/7/21.
//

import SwiftUI

struct TodaysListView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Today's:")
                    .font(Font.custom("Besley", size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .padding()
                Spacer()
            }
                
            
            
            
        }
    }
}



struct TodaysListView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            TodaysListView()
        }
    }
}
