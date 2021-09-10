//
//  HomeCardView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 8/27/21.
//

import SwiftUI

struct HomeCardView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing: 10) {
                ForEach(0..<10) {_ in
                    VStack {
                        
                        HStack {
                            Text("Ashwagandha")
                                .foregroundColor(.white)
                                .font(Font.custom("Besley", size: 18))
                                
                                .padding(.top, 12)
                                .padding(.leading, 12)
                                
                            Spacer()
                            
                    
                        }
                        
                        
                        HStack {
    
                            Text("multivitamin")
                                .foregroundColor(.yellow)
                                .font(Font.custom("Besley", size: 16))
                                .padding(.top, 1)
                                .padding(.bottom, 1)
                                .padding(.leading, 12)
                                .padding(.trailing, 12)
                                .overlay (
                                    Capsule(style: .circular)
                                        .stroke(Color.yellow, lineWidth: 1)
                                        
                            )
                                .padding(.leading, 7)
                                .padding(.bottom, 7)
                                
                                .padding(.top, 10)
                                
                            Spacer()
                        }
                        
                        .padding(.bottom, 0)
                        
                       
                        HStack {
                            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                               Image(systemName: "ellipsis")
                                .foregroundColor(MyColor.thistle)
                                .font(.largeTitle)
                            })
                            .padding(.leading, 12)
                            Spacer()
                            Text("3x")
                                .foregroundColor(.white)
                                .font(Font.custom("Besley", size: 16))
                                .padding()
                                .padding()
                    
                                .overlay(
                                    Circle()
                                        .stroke(MyColor.thistle, lineWidth: 1.3)
                                        .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                        
                                        
                                )
                            
                        }
                        .padding(.top, 15)
                        
                       
                        
                    }
                    .frame(width: 280, height: 200)
                    .background(MyColor.darkslateBlue)
                    .cornerRadius(10)
                    
                    
                }
            }

        }
        .ignoresSafeArea()
    }
}



struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardView()
    }
}
