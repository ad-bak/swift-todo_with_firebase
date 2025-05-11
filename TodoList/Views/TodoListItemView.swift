//
//  TodoListItemsView.swift
//  TodoList
//
//  Created by Adnan Bakaev  on 01/05/2025.
//

import SwiftUI

struct TodoListItemView: View {
    @StateObject var viewModel = TodoListItemViewViewModel()
    let item: TodoListItem

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .bold()
                    .font(.title)
                Text(
                    "\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated, time: .shortened))"
                )
                .font(.footnote)
                .foregroundColor(Color.gray)
            }
            Spacer()

            Button {
                viewModel.toggleIsDone(item: item)

            } label: {
                Image(
                    systemName: item.isDone ? "checkmark.circle.fill" : "circle"
                )
                .foregroundColor(.blue)
            }
        }
    }
}

#Preview {
    TodoListItemView(
        item: TodoListItem(
            id: "123",
            title: "Test",
            dueDate: Date().timeIntervalSince1970,
            createdDate: Date().timeIntervalSince1970,
            isDone: true
        )
    )
}
