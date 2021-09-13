//
//  HomeCardView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 8/27/21.
//

import SwiftUI

struct HomeCardView: View {
    var body: some View {
        VStack {
            HStack {}
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    ForEach(0..<10) {_ in
                        VStack {
                            
                            HStack {
                                Text("Ashwagandha")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Besley", size: 18))
                                    
                                    .padding(.top, 12)
                                    .padding(.leading, 12)
                                    
                                Spacer()
                                
                        
                            }
                            HStack {
        
                                Text("multivitamin")
                                    .foregroundColor(MyColor.maroon)
                                    .font(Font.custom("Besley", size: 16))
                                    .padding(.top, 1)
                                    .padding(.bottom, 1)
                                    .padding(.leading, 12)
                                    .padding(.trailing, 12)
                                    .overlay (
                                        Capsule(style: .circular)
                                            .stroke(MyColor.maroon, lineWidth: 1)
                                            
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
                                    .foregroundColor(MyColor.maroon)
                                    .font(.largeTitle)
                                })
                                .padding(.leading, 12)
                                Spacer()
                                Text("3x")
                                    .foregroundColor(.black)
                                    .font(Font.custom("Besley", size: 16))
                                    .padding()
                                    .padding()
                        
                                    .overlay(
                                        Circle()
                                            .stroke(MyColor.maroon, lineWidth: 1.3)
                                            .frame(width: 35, height: 35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                            
                                            
                                    )
                                
                            }
                            .padding(.top, 15)
                        }
                        .frame(width: UIScreen.screenWidth - 110, height: 200)
                        .background(MyColor.offWhite)
                        .cornerRadius(10)
                        .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                        .shadow(color: MyColor.offWhite.opacity(0.7), radius: 10, x: -5, y: -5)
                        .padding([.leading, .trailing], 12)
                        .padding(.top, 17)
                    }
                }.padding(.bottom, 30)
                
            }.edgesIgnoringSafeArea(.horizontal)
        }
    }
}



struct HomeCardView_Previews: PreviewProvider {
    static var previews: some View {
        HomeCardView()
    }
}
