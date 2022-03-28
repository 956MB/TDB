//
//  Product3DView.swift
//  TDB
//
//  Created by Trevor Bays on 7/9/21.
//

import SwiftUI

struct Product3DView: View {
    var body: some View {
        HStack {
            Spacer()
            Image(uiImage: UIImage(named: "MODEL3_PERFORMANCE_RED_GRAYPERFORMANCE")!)
                .resizable()
                .scaledToFit()
                .clipped()
                .cornerRadius(20.0)
            Spacer()
        }
        .frame(height: 160)
        .cornerRadius(20.0)
        .listRowBackground(Color(UIColor.systemBackground))
//        .background(Color.yellow)
    }
}

struct Product3DView_Previews: PreviewProvider {
    static var previews: some View {
        Product3DView()
    }
}
