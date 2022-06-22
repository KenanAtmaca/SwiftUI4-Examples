//
//  DatePickerExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 21.06.2022.
//

import SwiftUI

struct DatePickerExample: View {

    @State var selectedDates: Set<DateComponents> = []

    var body: some View {
        MultiDatePicker("", selection: $selectedDates)
            .frame(height: 300)
            .padding()
            .background {
                RoundedRectangle(cornerRadius: 14)
                    .fill(Color.black.opacity(0.05))
            }
            .padding()
    }
}

struct DatePickerExample_Previews: PreviewProvider {
    static var previews: some View {
        DatePickerExample()
    }
}
