//
//  GradientShadowExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct GradientShadowExample: View {
    var body: some View {
        Image(systemName: "star.fill")
            .frame(width: 150, height: 150)
            .background(in: RoundedRectangle(cornerRadius: 8))
            .backgroundStyle(.orange.gradient)
            .foregroundStyle(.white.shadow(.drop(radius: 1, y: 3)))
            .font(.system(size: 70))
    }
}

struct GradientShadowExample_Previews: PreviewProvider {
    static var previews: some View {
        GradientShadowExample()
    }
}
