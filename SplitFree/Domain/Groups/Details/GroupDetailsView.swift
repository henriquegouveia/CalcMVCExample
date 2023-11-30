//
//  GroupDetailsView.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import SwiftUI

struct GroupDetailsView: View {
    @State var group: Group?

    var body: some View {
        VStack {
            ForEach(group?.expenses ?? []) { bill in
                HStack {
                    Text(bill.name)
                    Spacer()
                    Text("R$ \(bill.amount)")
                }
            }
        }
    }
}

//#Preview {
//    GroupDetailsView()
//}
