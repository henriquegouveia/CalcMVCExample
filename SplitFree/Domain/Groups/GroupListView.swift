//
//  GroupListView.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import SwiftUI

struct GroupListView: View {
    @Environment(\.modelContext) private var modelContext
    @State var selectedGroupId: Group.ID?

    var body: some View {
        NavigationSplitView {
            List(groupFixtures, selection: $selectedGroupId) { group in
                Text(group.name)
            }
            .navigationTitle("Select an item")
        } detail: {
            if let selectedGroupId, let bills = groupFixtures.first(where: { $0.id == selectedGroupId })?.expenses {
                let _ = print("olha o bil: \(bills)")
                VStack {
                    List(bills) { bill in
                        Text(bill.name)
                    }
                }
                .listStyle(.plain)
                .navigationBarTitleDisplayMode(.inline)
            } else {
                Text("Please select a category")
            }
        }
    }

    private func addItem() {
        withAnimation {
//            let newItem = Item(timestamp: Date())
//            modelContext.insert(newItem)
        }
    }

    private func deleteItems(offsets: IndexSet) {
        withAnimation {
            for index in offsets {
                modelContext.delete(groupFixtures[index])
            }
        }
    }
}

#Preview {
    GroupListView()
}

let timestamp = Date()
let personFixture1 = Person(name: "John", dateOfBirth: Date(), id: "123", phoneNumber: 1234567890, email: "john@example.com")
let personFixture2 = Person(name: "Emma", dateOfBirth: Date(), id: "456", phoneNumber: 9876543210, email: "emma@example.com")


let splitedBill1 = SplitedBill(person: personFixture1, amount: 25.0)
let splitedBill2 = SplitedBill(person: personFixture2, amount: 25.0)
let splitedBill3 = SplitedBill(person: personFixture1, amount: 35.0)
let splitedBill4 = SplitedBill(person: personFixture2, amount: 15.0)

let billFixture1 = Bill(timestamp: Date(), name: "Electricity Bill", amount: 100.0, splitedBill: [splitedBill1, splitedBill2])
let billFixture2 = Bill(timestamp: Date(), name: "Internet Bill", amount: 150.0, splitedBill: [splitedBill3, splitedBill4])
let billFixture3 = Bill(timestamp: Date(), name: "Water Bill", amount: 75.0, splitedBill: [splitedBill1, splitedBill3])
let billFixture4 = Bill(timestamp: Date(), name: "Rent", amount: 2000.0, splitedBill: [splitedBill2, splitedBill4])


let groupFixture1 = Group(timestamp: timestamp,
                          name: "Friends",
                          people: [personFixture1, personFixture2],
                          expenses: [billFixture1, billFixture2])

let groupFixture2 = Group(timestamp: timestamp,
                          name: "Family",
                          people: [personFixture1],
                          expenses: [billFixture3])

let groupFixture3 = Group(timestamp: timestamp,
                          name: "Colleagues",
                          people: [personFixture2],
                          expenses: [billFixture4])

var groupFixtures = [groupFixture1, groupFixture2, groupFixture3]
