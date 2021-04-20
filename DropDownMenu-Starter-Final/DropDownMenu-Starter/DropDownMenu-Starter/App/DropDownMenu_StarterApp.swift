//
//  DropDownMenu_StarterApp.swift
//  DropDownMenu-Starter
//
//  Created by Marlon Raskin on 3/29/21.
//

import SwiftUI

@main
struct DropDownMenu_StarterApp: App {

    let appearance = UINavigationBarAppearance()

    // MARK: - Init

    init() {
        setNavBarAppearance()
    }


    // MARK: - Body

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }

    // MARK: - Setup

    func setNavBarAppearance() {
        appearance.configureWithTransparentBackground()
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().tintColor = UIColor(.primary)
        appearance.backgroundColor = UIColor(.bg).withAlphaComponent(0.95)
    }
}
