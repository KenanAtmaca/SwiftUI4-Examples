//
//  GridExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI

struct ColorSquare: View {

    let color: Color

    var body: some View {
        color
            .frame(width: 50, height: 50)
    }
}

struct GridExample: View {

    var body: some View {
        Grid {
            GridRow {
                Color.clear
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                ForEach(0..<3) { _ in
                    ColorSquare(color: .pink)
                }
            }

            GridRow {
                ColorSquare(color: .yellow)
                Color.clear
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                ColorSquare(color: .yellow)
                Color.clear
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                ColorSquare(color: .yellow)
            }

            GridRow {
                ForEach(0..<5) { _ in
                    ColorSquare(color: .mint)
                }
            }

            GridRow {
                Color.clear
                    .gridCellUnsizedAxes([.horizontal, .vertical])
                ForEach(0..<3) { _ in
                    ColorSquare(color: .pink)
                }
            }
        }
    }
}

struct GridExample_Previews: PreviewProvider {
    static var previews: some View {
        GridExample()
    }
}
