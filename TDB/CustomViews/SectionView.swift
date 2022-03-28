//
//  SectionView.swift
//  TDB
//
//  Created by Trevor Bays on 7/8/21.
//

import SwiftUI

struct SectionView: View {

    @Binding var pickerIndex: Int
    private var sectionHeader: String
    private var sectionRows: [ProductRow]
    @State var matchProductIdx: Int
    @State var matchYearIdx: Int
    private var currentRow: Int

    init(_ index: Binding<Int>, matchProd: Int, matchYear: Int, curRow: Int, header: String, rows: [ProductRow]) {
        self._pickerIndex = index
        self._matchProductIdx = State(initialValue: matchProd)
        self._matchYearIdx = State(initialValue: matchYear)
        self.sectionHeader = header
        self.sectionRows = rows
        self.currentRow = curRow
    }

    var body: some View {
        var rowCount = self.currentRow

        Section(header: SectionHeader(useText: sectionHeader)) {
            ForEach(0..<self.sectionRows.count) { (index) in
                if (index >= 1) {
                    Divider()
//                        .padding(.leading, 15)
                }
                RowView(self.$pickerIndex, matchProd: self.matchProductIdx, matchYear: self.matchYearIdx, rowIdx: rowCount, title: self.sectionRows[index].title, values: self.sectionRows[index].values)
                Execute {
                    rowCount += 1
                }
            }
        }
        .padding(.trailing, 15)
        .padding(.leading, 15)
        .cornerRadius(15)
    }
}

struct SectionHeader: View {

    let useText: String

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(useText)
                .font(.system(size: 14))
                .foregroundColor(.secondary)
        }
//        .padding(.leading, 15)
        .padding(.top, 25)
        .padding(.bottom, 5)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(Binding.constant(0), matchProd: 0, matchYear: 0, curRow: 0, header: "Header", rows: [ProductRow(title: "Title", values: ["Value1", "Value2"])])
    }
}
