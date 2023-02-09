//
//  SeriesDetail.swift
//  MyBingeQeuer
//
//  Created by Intissar Jamal on 08/02/2023.
//

import SwiftUI
import CoreLocation

struct SeriesDetail: View {
    @State var series: Series
    @State var spacerSize = 200.0
    @State var mapHeight = 300.0
    var body: some View {
        ScrollView {
            MapView(coordinate: CLLocationCoordinate2DMake(series.latitude, series.longitude)).frame(height: mapHeight).ignoresSafeArea(edges: .top)
            
            CircleImage(image: Image(series.image).resizable())
            .offset(y: -spacerSize)
            .padding(.bottom, -spacerSize)
            .frame(width:200.0, height: 200.0)
            HStack {
                Text(series.title).fontWeight(.black).font(.system(size:30))
                Spacer()
            }.padding(.horizontal,10).offset(y: -100.0)
                Divider().offset(y: -100.0)
            HStack {
                Text("Seasons: " + String(series.seasons)).fontWeight(.semibold).offset(y: -100.0)
                Spacer()
            }.padding(.horizontal,10)
            Text("About " + series.title + "\n" + series.description).padding(.horizontal,9).offset(y: -100.0)
            
            
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
