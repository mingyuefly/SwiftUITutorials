//
//  FeatureCard.swift
//  MyLandMarks
//
//  Created by gmy on 2023/7/12.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: MyLandMark
    var body: some View {
        landmark.featureImage?
            .resizable()
            .aspectRatio(3 / 2, contentMode: .fit)
            .overlay {
               TextOverlay(landmark: landmark)
            }
    }
}

struct TextOverlay: View {
    var landmark: MyLandMark
    var gradient: LinearGradient {
        .linearGradient(colors:[.black.opacity(0.6), .black.opacity(0)], startPoint: .bottom, endPoint: .center)
    }
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            gradient
            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                    .bold()
                Text(landmark.park)
            }
            .padding()
        }
        .foregroundColor(.white)
    }
    
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: ModelData().features[0])
    }
}
