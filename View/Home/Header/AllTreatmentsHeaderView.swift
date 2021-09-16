//
//  AllTreatmentsHeaderView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/3/21.
//

import SwiftUI

struct AllTreatmentsHeaderView: View {
    
    var headerView: some View {
        HStack {
            Text("your medications:")
                .font(Font.custom("Besley", size: 18))
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.leading, 20)
                
            
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Add more")
                    .font(Font.custom("Besley", size: 18))
                    .fontWeight(.semibold)
                    .foregroundColor(MyColor.maroon)
                    .padding(.trailing, 20)
                    
            })
        }.padding(.top, 30)
        
    }
    
    
    var body: some View {
        headerView
    }
}

struct AllTreatmentsHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AllTreatmentsHeaderView()
    }
}
