//
//  RowViewHyperlink.swift
//  TDB
//
//  Created by Trevor Bays on 7/8/21.
//

import SwiftUI

struct RowViewHyperlink: View {

    private var rowTitle:     String
    private var rowValue:     String
    private var rowValueLink: String

    init(title: String, value: String, link: String) {
        rowTitle     = title
        rowValue     = value
        rowValueLink = link
    }

    var body: some View {
        HStack(alignment: .top) {
            Text(rowTitle)
                .foregroundColor(.primary)
//            Spacer(minLength: 55)
            Spacer()
            Link(rowValue, destination: URL(string: rowValueLink)!)
                .accentColor(Color(UIColor.secondaryLabel))
                .frame(maxWidth: .infinity, alignment: .trailing)
                .multilineTextAlignment(.trailing)
        }
    }
}

struct RowViewHyperlink_Previews: PreviewProvider {
    static var previews: some View {
        RowViewHyperlink(title: "Title", value: "3.2 GHz (high-performance) 2.1 GHz (high-effiency)", link: "")
    }
}
