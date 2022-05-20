//
//  TDBApp.swift
//  TDB
//
//  Created by Trevor Bays on 7/8/21.
//

import SwiftUI

@main
struct TDBApp: App {

    @StateObject var deeplinkNotif = DeeplinkNotif.shared
    @State private var splashActive = true

    init() {
//        let appearance = UINavigationBarAppearance()
//        appearance.configureWithOpaqueBackground()
//        appearance.backgroundColor          = .clear
//        appearance.shadowColor              = .clear
////        appearance.bartint
//        appearance.titleTextAttributes      = [.foregroundColor: UIColor.label]
//        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.label]
//
//        UINavigationBar.appearance().standardAppearance   = appearance
//        UINavigationBar.appearance().compactAppearance    = appearance
//        UINavigationBar.appearance().scrollEdgeAppearance = appearance
//
        UINavigationBar.appearance().tintColor   = UIColor.label
//        UITableView.appearance().backgroundColor = .black
//
//        let selected                                        = UIView()
//        selected.backgroundColor                            = UIColor.black
//        UITableViewCell.appearance().selectedBackgroundView = selected
    }

    var body: some Scene {
        WindowGroup {
            if (self.splashActive) {
                SplashView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2.5) {
                            withAnimation() {
                                self.splashActive = false
                            }
                        }
                    }
            } else {
                ContentView()
                    .environment(\.colorScheme, .dark)
                    .onOpenURL { url in
                        if case .modelYearTrimItem(let model, let year, let trim) = url.modelYearIdentifier {
                            self.deeplinkNotif.model = model
                            self.deeplinkNotif.year = year
                            self.deeplinkNotif.trim = trim

                            /// Reset all to -1 so no bug happens
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.4) {
                                self.deeplinkNotif.model = -1
                                self.deeplinkNotif.year = ""
                                self.deeplinkNotif.trim = -1
                            }
                        }
                    }
            }
        }
    }
}
