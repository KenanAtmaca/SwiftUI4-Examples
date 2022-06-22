//
//  NavigationSplitViewExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct NavigationSplitViewExample: View {

    @State private var users: [String] = ["Kenan", "John", "Susan"]
    @State private var selectedUser: String?

    var body: some View {
        NavigationSplitView {
            List(users, id: \.self, selection: $selectedUser, rowContent: Text.init)
        } detail: {
            Text(selectedUser ?? "Choose a user.")
        }
    }
}

struct NavigationSplitViewExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitViewExample()
    }
}
