//
//  TitleView.swift
//  TDB
//
//  Created by Trevor Bays on 7/9/21.
//

import SwiftUI

struct TitleView: View {

    private var title: ProductTitle

    init(title: ProductTitle) {
        self.title = title
    }

    var body: some View {
        HStack {
            Text(self.title.nameFull)
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.primary)
            Text(self.title.year)
                .font(.largeTitle)
                .fontWeight(.light)
                .foregroundColor(.primary.opacity(0.6))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .listRowBackground(Color(UIColor.systemBackground))
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: ProductTitle(nameFull: "Model 3", nameShort: "3", year: "2021"))
    }
}
