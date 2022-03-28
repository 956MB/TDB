//
//  ProductCell.swift
//  TDB
//
//  Created by Trevor Bays on 7/9/21.
//

import SwiftUI

struct ProductCell: View {

    @StateObject var newContentNotif = NewContentNotif.shared

    private let product: Product
    @State var matchProductIdx: Int
    @State var cellIndex: Int

    init(matchIndex: Int, cellIndex: Int, product: Product) {
        self.matchProductIdx = matchIndex
        self.cellIndex = cellIndex
        self.product = product
    }

    var body: some View {
            HStack(spacing: 5) {
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text(self.product.title.nameFull)
                            .foregroundColor(.primary)
                            .fontWeight(.semibold)
                        Text(self.product.title.year)
                            .foregroundColor(.white)
                            .fontWeight(.light)
                    }

                    HStack {
                        Text(self.product.sections[0].rows[1].values[0])
                            .foregroundColor(.secondary)
                            .fontWeight(.light)
                            .font(.system(size: 13))
                    }
                }
                .padding(.leading, 15)

                Spacer()

                /// NOTIFICATION DOT
                if (self.newContentNotif.containsProductAndYear(self.matchProductIdx, self.cellIndex)) {
                    VStack(alignment: .trailing) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 8, height: 8)
                    }
                    .padding(.trailing, 10)
                }

                Image(systemName: "chevron.right")
                    .font(.system(size: 17))
                    .padding(.trailing, 15)
                    .foregroundColor(.white)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 56, maxHeight: 56, alignment: .center)
            .listRowBackground(Color.black)
            .listRowInsets(EdgeInsets())
//            .navigationTitle("Back")
//            .navigationBarBackButtonHidden(true)
    }
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(matchIndex: 0, cellIndex: 0, product: MODEL_3_2021_PRODUCT)
            .preferredColorScheme(.dark)
    }
}
