//
//  ModelCellList.swift
//  TDB
//
//  Created by Trevor Bays on 3/20/22.
//

import SwiftUI

struct ModelCellList: View {

    @StateObject var newContentNotif = NewContentNotif.shared
    
    private let productList: ProductList
    @State var cellDisabled: Bool
    @State var cellDot: Bool
    @State var cellIndex: Int

    init(index: Int, list: ProductList, disabled: Bool, dot: Bool) {
        self.cellIndex = index
        self.productList = list
        self.cellDisabled = disabled
        self.cellDot = dot
    }

    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 5) {
                HStack(alignment: .center, spacing: 15) {
                    HStack {
                        Image(systemName: self.productList.categoryImage)
                            .foregroundColor(.primary)
                            .font(.system(size: 20))
                    }
                    .frame(width: 20)
//                    .debugBackground()

                    HStack {
                        Text(self.productList.products[0].title.nameShort)
                            .foregroundColor(.primary)
                            .fontWeight(.semibold)
                    }
                }

                Spacer()

                /// NOTIFICATION DOT
                if (!self.cellDisabled && self.newContentNotif.containsProduct(self.cellIndex)) {
                    VStack(alignment: .trailing) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 8, height: 8)
                    }
                    .padding(.trailing, 10)
                }

                if (!self.cellDisabled) {
                    Image(systemName: "chevron.right")
                        .font(.system(size: 17))
                        .foregroundColor(.white)
                }
            }
//            .debugBackground()
            .opacity(self.cellDisabled ? 0.35 : 1.0)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 46, maxHeight: 46, alignment: .center)
            .listRowBackground(Color.black)
            .listRowInsets(EdgeInsets())
        }
    }
}

struct ModelCellList_Previews: PreviewProvider {
    static var previews: some View {
        ModelCellList(index: 0, list: MODEL_3_PRODUCTS, disabled: false, dot: false)
    }
}
