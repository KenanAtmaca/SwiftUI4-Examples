//
//  ToggleMapExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct SettingsModel: Identifiable {
    var id: String
    var isToggle = false
}

struct ToggleMapExample: View {

    @State private var list = [
        SettingsModel(id: "Share", isToggle: true),
        SettingsModel(id: "Auto Play", isToggle: true)
    ]

    var body: some View {
        Form {
            Section {
                ForEach($list) { $list in
                    Toggle(list.id, isOn: $list.isToggle)
                }
            }

            Section {
                Toggle(isOn: $list.map(\.isToggle)) {
                    Text("Switch All")
                }
            }
        }
    }
}

struct ToggleMapExample_Previews: PreviewProvider {
    static var previews: some View {
        ToggleMapExample()
    }
}
