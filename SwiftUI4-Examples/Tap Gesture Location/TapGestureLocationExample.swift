//
//  TapGestureLocationExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct TapGestureLocationExample: View {
    var body: some View {
        Rectangle()
            .fill(.orange)
            .frame(height: 250)
            .padding()
            .onTapGesture { location in
                print(location)
            }
    }
}

struct TapGestureLocationExample_Previews: PreviewProvider {
    static var previews: some View {
        TapGestureLocationExample()
    }
}
