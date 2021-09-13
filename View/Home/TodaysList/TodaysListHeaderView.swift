//
//  TodaysListHeaderView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/12/21.
//

import SwiftUI

struct TodaysListHeaderView: View {
    var body: some View {

        HStack {
            Text("Today's remedy:")
                .font(Font.custom("Besley", size: 16))
                .fontWeight(.semibold)
                .fontWeight(.light)
                .foregroundColor(.black)
                .padding()
                
            
            Spacer()
        }
 
    }
}

struct TodaysListHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        TodaysListHeaderView()
    }
}
