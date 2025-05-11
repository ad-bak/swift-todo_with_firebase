//
//  HeaderView.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let bgColor: Color

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 0)
                .fill()
                .foregroundColor(bgColor)
                .rotationEffect(Angle(degrees: angle))

            VStack {
                Text(title)
                    .foregroundColor(Color.white)
                    .font(.system(size: 50))
                    .bold()
                Text(subtitle)
                    .foregroundColor(Color.white)
                    .font(.system(size: 30))
            }
            .padding(.top, 100)
        }
        .frame(width: UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }

}

#Preview {
    HeaderView(
        title: "Test",
        subtitle: "Subtest",
        angle: 15,
        bgColor: .blue
    )
}
