//
//  RequestReviewExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI
import StoreKit

struct RequestReviewExample: View {

    @Environment(\.requestReview) var requestReview

    var body: some View {
        Button("Request review app ⭐️") {
            requestReview()
        }
    }
}

struct RequestReviewExample_Previews: PreviewProvider {
    static var previews: some View {
        RequestReviewExample()
    }
}
