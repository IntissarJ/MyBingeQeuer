//
//  SeriesDetail.swift
//  MyBingeQeuer
//
//  Created by Intissar Jamal on 08/02/2023.
//

import SwiftUI

struct SeriesDetail: View {
    @State var series: Series
    var body: some View {
        ScrollView {
            Text(series.title).
        }.navigationTitle(series.title).navigationBarTitleDisplayMode(.inline)
    }
}

struct SeriesDetail_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            SeriesDetail(series: seriesSourceList[0])
        }
    }
}
