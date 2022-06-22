//
//  NavigationStackExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct NavigationStackExample: View {

    @State private var viewsStack: [String] = []

    var body: some View {
        NavigationStack(path: $viewsStack) {
            VStack {
                Button("Push Push") {
                    viewsStack.append("Camera")
                }
                //NavigationLink("Push Push", value: "Camera")
                .navigationDestination(for: String.self) { value in
                    SecondScreen(stack: $viewsStack, screen: value)
                }
                .navigationTitle("Navigation")
            }
        }
    }
}

struct SecondScreen: View {

    @Binding var stack: [String]
    var screen: String

    var body: some View {
        VStack(spacing: 14) {
            Text(screen)
            Button("Pop to Root") {
                stack.removeAll()
            }
        }
        .padding()
    }
}

struct NavigationStackExample_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStackExample()
    }
}
