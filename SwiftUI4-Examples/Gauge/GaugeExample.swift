//
//  GaugeExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct GaugeExample: View {
    var body: some View {
        Gauge(value: 0.7) {
            Text("Upload")
        } currentValueLabel: {
            Text("70%")
                .font(.caption)
        }
        .gaugeStyle(.accessoryCircularCapacity)
        .padding()
        .tint(Color.blue.gradient)
    }
}

struct GaugeExample_Previews: PreviewProvider {
    static var previews: some View {
        GaugeExample()
    }
}
