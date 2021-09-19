//
//  OnboardingView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 9/18/21.
//

import SwiftUI

struct OnboardingView: View {
    @State var offset: CGFloat = 0
    
    
    var body: some View {
       
        OffsetPageTabView(offset: $offset) {
            
            HStack(spacing: 0) {
                
                ForEach(boardingScreens) { screen in
                    
                    VStack(spacing: 15) {
                        Image("humans")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getScreenBounds().width - 100, height: getScreenBounds().width - 100)
                        
                        VStack(spacing: 12) {
                            
                            Text(screen.title)
                                .font(.largeTitle.bold())
                                .foregroundColor(.white)
                            
                            Text(screen.description)
                                .fontWeight(.semibold)
                                .foregroundColor(.white)
                            
                        }.frame(maxWidth: .infinity, alignment: .leading)
                    }
                    .padding()
                    .frame(width: getScreenBounds().width)
                    .frame(maxHeight: .infinity)
                    
                  
                    
                }
                
                
            }
            
            .ignoresSafeArea(.container, edges: .all)
        }
        .background(
            Color("screen\(Int(getIndex().rounded() + 1))")
                .animation(.easeInOut, value: getIndex())
        )
        .ignoresSafeArea(.container, edges: .all)
        
       
    }
    
    func getIndex() -> CGFloat {
        let progress = offset / getScreenBounds().width
        return progress
    }
    
    
    
}

extension View {
    func getScreenBounds() -> CGRect {
        return UIScreen.main.bounds
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
