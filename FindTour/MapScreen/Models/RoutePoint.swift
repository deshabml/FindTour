//
//  RoutePoint.swift
//  FindTour
//
//  Created by Лаборатория on 21.06.2024.
//

import Foundation
import MapKit

struct RoutePoint: Identifiable, Equatable {

    let name: String
    let coordinates: CLLocationCoordinate2D

    var id: String {
        name + "\(coordinates)"
    }

    static func == (lhs: RoutePoint, rhs: RoutePoint) -> Bool {
        lhs.id == rhs.id
    }
}
