//
//  CustomLayoutExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct CustomLayoutExample: View {
    var body: some View {
        CustomStackView {
            ForEach(1...3, id: \.self) { index in
                Circle()
                    .fill(.blue)
                    .frame(width: 50, height: 50)
                    .overlay {
                        Text("\(index)")
                    }
            }
        }
        .padding()
    }
}

struct CustomStackView: Layout {
    func sizeThatFits(proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) -> CGSize {
        return .init(width: proposal.width ?? 120, height: proposal.height ?? 120)
    }

    func placeSubviews(in bounds: CGRect, proposal: ProposedViewSize, subviews: Subviews, cache: inout ()) {
        var origin = bounds.origin
        for subView in subviews {
            subView.place(at: origin, anchor: .topLeading, proposal: proposal)
            origin.x += subView.sizeThatFits(.unspecified).width
        }
    }
}

struct CustomLayoutExample_Previews: PreviewProvider {
    static var previews: some View {
        CustomLayoutExample()
    }
}
