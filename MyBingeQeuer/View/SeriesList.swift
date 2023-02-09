//
//  SeriesList.swift
//  MyBingeQeuer
//
//  Created by Intissar Jamal on 07/02/2023.
//

import SwiftUI

struct SeriesList: View {
    @State var SeriesDataList = seriesSourceList
    var body: some View {
        NavigationView{
            List {
                ForEach(SeriesDataList, id: \Series.id) {
                    series in NavigationLink(destination: SeriesDetail(series: series)) {
                        BingeRow(series: series)
                    }
                }.onDelete(perform: delete)
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func delete(at offsets: IndexSet) {
    seriesSourceList.remove(atOffsets: offsets)
    }
}

struct SeriesList_Previews: PreviewProvider {
    static var previews: some View {
        SeriesList()
    }
}
