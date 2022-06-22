//
//  CartExample.swift
//  SwiftUI4-Examples
//
//  Created by Kenan Atmaca on 20.06.2022.
//

import SwiftUI
import Charts

struct DownloadModel: Identifiable {
    var id = UUID().uuidString
    var name: String
    var downloadCount: Double
}

struct CartView: View {

    let downloadList: [DownloadModel] = [
        DownloadModel(name: "Diablo Immortal", downloadCount: 15),
        DownloadModel(name: "Pubg", downloadCount: 8),
        DownloadModel(name: "Candy Crush", downloadCount: 4)
    ]

    let barColors: [Color] = [.red, .yellow, .blue]

    var body: some View {
        Chart(downloadList) { item in
           BarMark(x: .value("Name", item.name), y: .value("Download", item.downloadCount))
                .foregroundStyle(by: .value("Name", item.name))

//            LineMark(x: .value("Name", item.name), y: .value("Download", item.downloadCount))
//                .symbol(by: .value("Name", item.name))
//                .interpolationMethod(.catmullRom)
//                .foregroundStyle(.red)
        }
        .frame(height: 300)
    }
}

struct CartExample: View {
    var body: some View {
        CartView()
    }
}

struct CartExample_Previews: PreviewProvider {
    static var previews: some View {
        CartExample()
    }
}
