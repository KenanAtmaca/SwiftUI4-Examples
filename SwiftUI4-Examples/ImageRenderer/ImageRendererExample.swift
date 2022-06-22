//
//  ImageRendererExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct ImageRendererExample: View {

    @State private var generatedImage: UIImage?

    var body: some View {
        VStack {
            Button("Convert Image") {
                let renderer = ImageRenderer(content: exampleImageView())
                if let image = renderer.uiImage {
                    generatedImage = image
                }
            }

            if let finalImage = generatedImage {
                Image(uiImage: finalImage)
            }
        }
    }

    @ViewBuilder
    func exampleImageView() -> some View {
        VStack {
            Image("swiftui")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200)
        }
    }
}

struct ImageRendererExample_Previews: PreviewProvider {
    static var previews: some View {
        ImageRendererExample()
    }
}
