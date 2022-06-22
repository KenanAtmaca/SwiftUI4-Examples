//
//  SfsymbolVariableExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct SfsymbolVariableExample: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "wifi", variableValue: 0.3)
                Image(systemName: "chart.bar.fill", variableValue: 0.5)
            }
        }
        .font(.system(size: 70))
        .foregroundColor(.blue)
        .padding()
    }
}

struct SfsymbolVariableExample_Previews: PreviewProvider {
    static var previews: some View {
        SfsymbolVariableExample()
    }
}
