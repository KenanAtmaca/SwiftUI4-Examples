//
//  TextFieldExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct TextFieldExample: View {

    @State private var fieldText: String = ""

    var body: some View {
        Form {
            Section("Comment") {
                TextField("...", text: $fieldText, axis: .vertical)
                    .lineLimit(5)
            }
        }
    }
}

struct TextFieldExample_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldExample()
    }
}
