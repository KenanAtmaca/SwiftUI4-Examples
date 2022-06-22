//
//  TextAnimationExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct TextAnimationExample: View {

    @State private var changeStyle: Bool = false

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.system(size: 30))
            .fontWeight(changeStyle ? .heavy : .medium)
            .onTapGesture {
                withAnimation {
                    changeStyle.toggle()
                }
            }
    }
}

struct TextAnimationExample_Previews: PreviewProvider {
    static var previews: some View {
        TextAnimationExample()
    }
}
