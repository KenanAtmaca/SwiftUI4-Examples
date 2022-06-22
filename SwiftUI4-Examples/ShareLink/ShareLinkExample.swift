//
//  ShareLink.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct ShareLinkExample: View {

    private var folderImage = ImageFile(image: Image("swiftui"))

    var body: some View {
        VStack(spacing: 14) {
            ShareLink(item: URL(string: "kenanatmaca.com")!) {
                Text("Share Blog 🥰")
            }
            .presentationDetents([.medium, .large])

            ShareLink(item: folderImage, preview: SharePreview("SwiftUI", image: folderImage)) {
                Text("Share Image 📸")
            }
            .presentationDetents([.medium, .large])
        }
    }
}

struct ImageFile: Transferable {
    var image: Image
    static var transferRepresentation: some TransferRepresentation {
        ProxyRepresentation(exporting: \.image)
    }
}

struct ShareLink_Previews: PreviewProvider {
    static var previews: some View {
        ShareLinkExample()
    }
}
