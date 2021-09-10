//
//  TodaysListView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/7/21.
//

import SwiftUI

struct TodaysListView: View {
    var body: some View {
        TodayListHeaderView()
        VStack(spacing: 10) {
            
        }
        .frame(width: .infinity, height: 200)
        .background(MyColor.maroon)
        .cornerRadius(10)
    }
}

struct TodayListHeaderView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Today's:")
                    .font(Font.custom("Besley", size: 18))
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    
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
