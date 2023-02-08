//
//  SeriesList.swift
//  MyBingeQeuer
//
//  Created by Intissar Jamal on 07/02/2023.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        NavigationView{
            List(seriesSourceList) { series in
                NavigationLink(destination: SeriesDetail(series: series)){
                    BingeRow(series: series)
                }
            }
        }
    }
}

struct SeriesList_Previews: PreviewProvider {
    static var previews: some View {
        SeriesList()
    }
}
