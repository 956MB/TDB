//
//  RowView.swift
//  TDB
//
//  Created by Trevor Bays on 7/8/21.
//

import SwiftUI

struct RowView: View {

    @StateObject var newContentNotif = NewContentNotif.shared
    
    @Binding var pickerIndex: Int
    private var rowIndex: Int
    private var rowTitle: String
    private var rowValues: [String]
    @State var matchProductIdx: Int
    @State var matchYearIdx: Int

    init(_ pickerIdx: Binding<Int>, matchProd: Int, matchYear: Int, rowIdx: Int, title: String, values: [String]) {
        self._pickerIndex = pickerIdx
        self._matchProductIdx = State(initialValue: matchProd)
        self._matchYearIdx = State(initialValue: matchYear)
        self.rowTitle     = title
        self.rowIndex     = rowIdx
        self.rowValues    = values
    }

    var body: some View {
        HStack(alignment: .top, spacing: 0) {
            HStack(spacing: 0) {
                /// NOTIFICATION DOT
                VStack(alignment: .center) {
                    if (self.newContentNotif.containsProductAndYearAndRow(self.matchProductIdx, self.matchYearIdx, self.rowIndex)) {
                        Circle()
                            .fill(Color.red)
                            .frame(width: 8, height: 8)
                            .padding(.trailing, 8)
                    }
                }
//                .frame(width: 15)
//                .debugBackground()

                Text(self.rowTitle.localized())
                    .foregroundColor(.primary)
                    .font(.system(size: 16))

            }

            Spacer()

            let idx = self.pickerIndex <= self.rowValues.count - 1 ? self.pickerIndex : 0
            Text(self.rowValues[idx])
                .foregroundColor(.secondary)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .multilineTextAlignment(.trailing)
                .font(.system(size: 16))
        }
        .padding([.top, .bottom], 10)
//        .debugBackground()
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView(Binding.constant(0), matchProd: 0, matchYear: 0, rowIdx: 0, title: "Title", values: ["Value1", "Value2"])
    }
}
