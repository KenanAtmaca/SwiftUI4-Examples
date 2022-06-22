//
//  CustomPresentation.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct CustomPresentationExample: View {

    @State private var showDetailScreen: Bool = false

    var body: some View {
        Button("Show Detail") {
            showDetailScreen.toggle()
        }
        .sheet(isPresented: $showDetailScreen) {
            Text("Hello SwiftUI 4 🎉")
                .presentationDetents([.medium, .large])
        }
    }
}

struct CustomPresentation_Previews: PreviewProvider {
    static var previews: some View {
        CustomPresentationExample()
    }
}
