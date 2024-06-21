//
//  Coordinator.swift
//  FindTour
//
//  Created by Лаборатория on 21.06.2024.
//

import SwiftUI

@MainActor
final class Coordinator: ObservableObject {

    @Published var path = NavigationPath()
    @Published var page: MyPage = .mapScreen

    func goHome() {
        path.removeLast(path.count)
    }

    @ViewBuilder
    func getPage(_ page: MyPage) -> some View {
        switch page {
            case .mapScreen:
                MapScreenView()
        }
    }
}

