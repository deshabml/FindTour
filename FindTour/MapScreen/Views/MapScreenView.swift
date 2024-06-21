//
//  MapScreenView.swift
//  FindTour
//
//  Created by Лаборатория on 21.06.2024.
//

import SwiftUI
import MapKit

struct MapScreenView: View {

    @EnvironmentObject var coordinator: Coordinator
    @StateObject private var viewModel = MapScreenViewModel()

    var body: some View {
        ZStack {
            mapLayer
                .ignoresSafeArea()
        }
    }
}

private
extension MapScreenView {

    var mapLayer: some View {
        Map(coordinateRegion: $viewModel.mapRegion,
            annotationItems: viewModel.routePoints,
            annotationContent: { routePoint in
            MapAnnotation(coordinate: routePoint.coordinates) {
                Image(systemName: "exclamationmark.circle")
                    .scaleEffect(viewModel.routePoint == routePoint ? 1 : 0.7)
            }
        })
    }
}
