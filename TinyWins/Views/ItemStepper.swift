//
//  ItemStepper.swift
//  TinyWins
//
//  Created by Marvin Kome on 05.09.23.
//

import SwiftUI

struct ItemStepper: View {
    @Binding var quantity: Int;
    
    var body: some View {
        HStack(spacing: 14) {
            Button {
                if quantity > 0 {
                    quantity -= 1
                }
            } label: {
                Image(systemName: "minus")
                    .font(.caption)
                    .bold()
                    .foregroundColor(.secondary)
                    .frame(width: 24, height: 24)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.sRGB, red: 0.85, green: 0.85, blue: 0.85))
                    }
            }
            .disabled(quantity == 0)

            
            Text("\(quantity)")
                .font(.body)
                .foregroundColor(Color(red: 0.22, green: 0.22, blue: 0.22))
            
            Button {
                quantity += 1
            } label: {
                Image(systemName: "plus")
                    .font(.caption)
                    .bold()
                    .foregroundColor(
                        Color(.sRGB, red: 0.25, green: 0.29, blue: 0.53))
                    .frame(width: 24, height: 24)
                    .overlay {
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(Color(.sRGB, red: 0.85, green: 0.85, blue: 0.85))
                    }
            }
        }
    }
}

struct ItemStepper_Previews: PreviewProvider {
    static var previews: some View {
        ItemStepper(quantity: .constant(1))
    }
}
