//
//  BoldItalicExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct BoldItalicExample: View {

    @State private var changeStyle: Bool = false

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 55))
            .bold(changeStyle)
            .italic(!changeStyle)
            .onTapGesture {
                changeStyle.toggle()
            }
    }
}

struct BoldItalicExample_Previews: PreviewProvider {
    static var previews: some View {
        BoldItalicExample()
    }
}
