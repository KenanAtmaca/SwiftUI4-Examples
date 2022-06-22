//
//  AnyLayoutExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct AnyLayoutExample: View {

    @State private var changeLayout: Bool = false

    var body: some View {
        VStack {
            let layout = changeLayout ? AnyLayout(HStack()) : AnyLayout(VStack())

            layout {
                Image("swiftui")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .clipped()

                Image("swiftui")
                    .resizable()
                    .scaledToFill()
                    .frame(maxWidth: 200, maxHeight: 200)
                    .clipped()
            }
            .padding()
            .animation(.spring(), value: changeLayout)
            .onTapGesture {
                changeLayout.toggle()
            }
        }
    }
}

struct AnyLayoutExample_Previews: PreviewProvider {
    static var previews: some View {
        AnyLayoutExample()
    }
}
