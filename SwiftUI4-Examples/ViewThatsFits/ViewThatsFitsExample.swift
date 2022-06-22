//
//  ViewThatsFitsExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct ViewThatsFitsExample: View {

    var body: some View {
        VStack {
            CustomFitView()
                .frame(width: 100)
        }
    }

    @ViewBuilder
    func CustomFitView() -> some View {
        ViewThatFits(in: .horizontal) {
            HStack {
                Rectangle()
                    .frame(width: 150, height: 15)
                Text("Rectangle")
            }

            Rectangle()
                .frame(width: 80, height: 15)
        }
    }
}

struct ViewThatsFitsExample_Previews: PreviewProvider {
    static var previews: some View {
        ViewThatsFitsExample()
    }
}
