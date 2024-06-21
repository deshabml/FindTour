//
//  MapScreenViewModel.swift
//  FindTour
//
//  Created by Лаборатория on 21.06.2024.
//

import Foundation
import MapKit

final class MapScreenViewModel: ObservableObject {

    let routePoints = [RoutePoint(name: "One",
                                  coordinates: CLLocationCoordinate2D(latitude: 41.8902,
                                                                      longitude: 12.4922)),
                       RoutePoint(name: "Two",
                                  coordinates: CLLocationCoordinate2D(latitude: 41.8986,
                                                                      longitude: 12.4769))]

    var mapRegion: MKCoordinateRegion = MKCoordinateRegion()
    var routePoint: RoutePoint = RoutePoint(name: "One",
                                            coordinates: CLLocationCoordinate2D(latitude: 41.8902,
                                                                                longitude: 12.4922)) {
        didSet {
            updateRoutePoint(routePoint: routePoint)
        }
    }
    let mapSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)

    init() {
        self.updateRoutePoint(routePoint: routePoint)
    }

    private func updateRoutePoint(routePoint: RoutePoint) {
        mapRegion = MKCoordinateRegion(
            center: routePoint.coordinates,
            span: mapSpan)
    }
}
