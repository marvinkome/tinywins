//
//  Home.swift
//  TinyWins
//
//  Created by Marvin Kome on 05.09.23.
//

import SwiftUI

struct Home: View {
    @State private var quantity = 0
    let backgroundColor = Color(red: 0.95, green: 0.95, blue: 0.85)
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            ScrollView {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "gearshape")
                            .font(.system(size: 22, weight: .bold))
                            .foregroundColor(
                                Color(red: 0.56, green: 0.56, blue: 0.67)
                            )
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 20) {
                        Button {
                            
                        } label: {
                            Image(systemName: "plus.circle")
                                .font(.system(size: 25, weight: .medium))
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(
                                    Color(red: 0.51, green: 0.54, blue: 0.65),
                                    Color(red: 0.8, green: 0.8, blue: 0.8)
                                )
                                
                        }
                        
                        Button {
                            
                        } label: {
                            Image(systemName: "calendar")
                                .font(.system(size: 25, weight: .medium))
                                .foregroundColor(Color(red: 0.51, green: 0.54, blue: 0.65))
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.vertical)
                
                VStack(spacing: 8) {
                    Text("2023")
                        .font(.largeTitle)
                        .bold()
                    
                    Text("68% of the year has passed")
                        .textCase(.uppercase)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                .padding(.top, 100)
                
                
                VStack(spacing: 0) {
                    ForEach(0...6, id: \.self) { _ in
                        HStack {
                            Text("Going to the movies 🍿")
                                .foregroundColor(Color(red: 0.22, green: 0.22, blue: 0.22))
                            
                            Spacer()
                            
                            ItemStepper(quantity: .constant(10))
                        }
                        .padding(.horizontal)
                        .padding(.vertical, 16)
                    }
                }
                .background(.white)
                .cornerRadius(12)
                .padding()
                .shadow(radius: 1, x: 0, y: 1)
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
