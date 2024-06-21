//
//  MainView.swift
//  FindTour
//
//  Created by Лаборатория on 21.06.2024.
//

import SwiftUI

struct MainView: View {

    @EnvironmentObject var coordinator: Coordinator

    var body: some View {
        NavigationStack(path: $coordinator.path) {
            coordinator.getPage(MyPage.mapScreen)
                .navigationDestination(for: MyPage.self) { page in
                    coordinator.getPage(page)
                }
        }
    }
}
