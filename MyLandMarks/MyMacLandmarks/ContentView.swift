//
//  ContentView.swift
//  MyMacLandmarks
//
//  Created by gmy on 2023/7/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
                    .frame(minWidth: 700, minHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}
