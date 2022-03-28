//
//  Utils.swift
//  TDB
//
//  Created by Trevor Bays on 3/21/22.
//

import SwiftUI

/// Empty view for running whatever code
struct Execute : View {
    init( _ exec: () -> () ) {
        exec()
    }

    var body: some View {
        return EmptyView()
    }
}

struct BackButtonCustom: View {

    var size: CGFloat
    var text: String
    var action : () -> Void

    init(size: CGFloat, text: String = "", action: @escaping () -> Void) {
        self.size = size
        self.text = text
        self.action = action
    }

    var body: some View {
        Button(action: {
            self.action()
        }) {
            HStack(spacing: 5) {
                Image(systemName: "chevron.left")
                    .foregroundColor(.primary)
                    .font(.system(size: self.size))

                if (!self.text.isEmpty) {
                    Text(self.text)
                        .foregroundColor(.white)
                        .fontWeight(.regular)
                }
            }
            .frame(minWidth: 55, minHeight: 40, alignment: .leading)
//            .debugBackground()
        }
    }
}

struct BackButtonCustom_Previews: PreviewProvider {
    static var previews: some View {
        BackButtonCustom(size: 17, action: {})
    }
}
