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
            HStack{Spacer()}
            ForEach(0..<10) {_ in
                VStack{
                    HStack {
                        
                            HStack {
                                Text("Ashwagandha")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Besley", size: 14))
                                    .padding()
                                
                            }
                        Spacer()
                            HStack(alignment: .firstTextBaseline) {
                                Text("morning")
                                    .foregroundColor(MyColor.maroon)
                                    .font(Font.custom("Besley", size: 14))
                                    .padding(.top, 1)
                                    .padding(.bottom, 1)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                    .overlay (
                                        Capsule(style: .circular)
                                            .stroke(MyColor.maroon, lineWidth: 1)
                                            
                                    ).padding()
                                   
                
                            }
                                
            
                    }
                }
                .frame(width: UIScreen.screenWidth - 50, height: 70)
                .background(MyColor.offWhite)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                .shadow(color: MyColor.offWhite.opacity(0.7), radius: 10, x: -5, y: -5)
                
                .padding(.bottom, 10)
            }
        }
        
        
    }
}



extension UIScreen{
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}



struct TodaysListView_Previews: PreviewProvider {
    static var previews: some View {
        TodaysListView()
    }
}
