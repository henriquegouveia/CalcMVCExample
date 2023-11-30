//
//  LoginView.swift
//  SplitFree
//
//  Created by Henrique César Gouveia on 30/11/23.
//

import SwiftUI

struct LoginView: View {
    @State private var isPresentingDestinationView = false

    var body: some View {
        Button("Login") {
            isPresentingDestinationView = true
        }
        .padding()
        .sheet(isPresented: $isPresentingDestinationView) {
            GroupListView()
        }
    }
}

#Preview {
    LoginView()
}
