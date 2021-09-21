//
//  HomeHeaderView.swift
//  Inhale
//
//  Created by Buka Cakrawala on 8/27/21.
//

import SwiftUI

struct HomeHeaderView: View {
    
    @State private var addMedicationIsPresented = false
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Hello there,")
                    .font(Font.custom("Besley", size: 28))
                    .fontWeight(.ultraLight)
                    .foregroundColor(.black)
                    .padding()
            }
            Spacer()
            Button(action: {
                addMedicationIsPresented.toggle()
            }, label: {
                Image(systemName: "plus")
                    .foregroundColor(MyColor.maroon)
            })
            .padding()
            .buttonStyle(FloatingButtonStyle())
            .fullScreenCover(isPresented: $addMedicationIsPresented, content: {
                AddNewMedicationView.init()
            })
        }
    }
}

struct FloatingButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .contentShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .background(
                Group {
                    if configuration.isPressed {
                        Circle()
                            .fill(MyColor.lavender)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: -5, y: -5)
                            .shadow(color: MyColor.lavender.opacity(0.7), radius: 10, x: -10, y: -10)
                    } else {
                        Circle()
                            .fill(MyColor.lavender)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: MyColor.lavender.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                    
                    
                    
                }
            )
    }
}

extension LinearGradient {
    init(_ colors: Color...) {
        self.init(gradient: Gradient(colors: colors), startPoint: .topLeading, endPoint: .bottomTrailing)
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
