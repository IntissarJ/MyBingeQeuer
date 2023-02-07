//
//  BingeRow.swift
//  MyBingeQeuer
//
//  Created by Intissar Jamal on 07/02/2023.
//

import SwiftUI

struct BingeRow: View {
    @State var series: Series
    var body: some View {
        HStack{
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
        }
    }
}

struct BingeRow_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            BingeRow(series: seriesSourceList[2])
            BingeRow(series: seriesSourceList[4])
        }.previewLayout(.sizeThatFits)
        
    }
}
