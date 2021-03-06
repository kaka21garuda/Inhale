//
//  TodaysListView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/7/21.
//

import SwiftUI

struct TodaysListView: View {
    
    @State private var drawCheckRing = 1/99 // draw the progress ring
    @State private var showCheckCircle = 1/99 // show central circle
    @State private var showCheckMark = -60 // show check mark masking
    
    
    var body: some View {
        
        VStack {
            HStack{Spacer()}
            ForEach(0..<10) {_ in
                VStack{
                   
                    HStack {
                        VStack {
                            
                            // This HStack for Drug Name
                            HStack {
                                
                                    Text("Ashwagandha")
                                        .foregroundColor(.black)
                                        .font(Font.custom("Besley", size: 14))
                                        
                                        .padding(.leading, 12)
                                        .padding(.top, 12)
                                        .padding(.bottom, 8)
                                
                                Spacer()
                               
                                
     
                            }
                            
                            // This HStack for notification tag
                            HStack {
                                Text("afternoon")
                                    .foregroundColor(MyColor.lavender)
                                    .font(Font.custom("Besley", size: 14))
                                    .padding(.top, 1)
                                    .padding(.bottom, 1)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                    .background(MyColor.maroon)
                                    .clipShape(
                                        Capsule()
                                    )
                                    .padding(.leading, 12)
                                    .padding(.bottom, 12)
                                    .padding(.top, 8)
                                Spacer()
                            }
                        }
                        VStack {
                            
                            ZStack {
                                
                                Circle() // Inactive circle
                                   
                                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .padding(.top, 36)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                    .foregroundColor(Color.gray)
                                    
                                
                                
                                Circle() // Active circle
                                    .trim(from: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, to: CGFloat(drawCheckRing))
                                    .stroke(style: StrokeStyle(lineWidth: 2, lineCap: .round, lineJoin: .round))
                                    .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                    .rotationEffect(.degrees(-90))
                                    .foregroundColor(MyColor.maroon)
                                    .scaleEffect(CGFloat(showCheckCircle))
                                    .animation(Animation.easeInOut(duration: 1).delay(1))
                                    .padding(.top, 36)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                
                                
                                Circle() // Green Circle
                                    .frame(width: 33, height: 33, alignment: .center)
                                    .foregroundColor(MyColor.maroon)
                                    .scaleEffect(CGFloat(showCheckCircle))
                                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 15).delay(2))
                                    .padding(.top, 36)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                
                                    
                                
                                
                                Image(systemName: "checkmark") // Checkmark
                                    .font(.subheadline)
                                    .clipShape(Rectangle().offset(x: CGFloat(showCheckMark)))
                                    .foregroundColor(MyColor.lavender)
                                    .animation(Animation.interpolatingSpring(stiffness: 170, damping: 15).delay(2.5))
                                    .padding(.top, 36)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                
                            }
                            
                            
                            .onTapGesture {
                                drawCheckRing = 1
                                showCheckCircle = 1
                                showCheckMark = 0
                            }
                            
                            
                            Spacer()
                            
                            
                        }
                    }
                }
                .frame(width: UIScreen.screenWidth - 50, height: 100)
                .background(MyColor.lavender)
                .cornerRadius(10)
                
                
                .padding(.bottom, 10)
                Divider()
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
