//
//  TLButton.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 04/05/2025.
//

import SwiftUI

struct TLButton: View {
    let title: String
    let bgColor: Color
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(bgColor)

                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()

            }
        }
        .padding(.vertical)
    }
}

#Preview {
    TLButton(
        title: "Test",
        bgColor: .cyan,
        action: {}
    )
}
