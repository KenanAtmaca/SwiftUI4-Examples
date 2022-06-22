//
//  ScrollViewExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct ScrollViewExample: View {

    @State private var fieldText: String = ""

    var body: some View {
        ScrollView {
            VStack {
                TextField("Search..", text: $fieldText)
                    .textFieldStyle(.roundedBorder)

                ForEach(1...30, id: \.self) { _ in
                    Rectangle()
                        .fill(.blue)
                        .frame(height: 200)
                }
            }
            .padding()
        }
        .scrollDismissesKeyboard(.immediately)
    }
}

struct ScrollViewExample_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewExample()
    }
}
