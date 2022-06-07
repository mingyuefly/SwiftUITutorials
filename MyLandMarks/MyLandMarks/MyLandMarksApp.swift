//
//  MyLandMarksApp.swift
//  MyLandMarks
//
//  Created by guomingyue on 2022/5/1.
//

import SwiftUI

@main
struct MyLandMarksApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(modelData)
        }
    }
}
