//
//  ToolbarShare.swift
//  TDB
//
//  Created by Trevor Bays on 3/19/22.
//

import SwiftUI
import Foundation

struct ToolbarButton: View {

    var isMenu       : Bool = false
    var buttonImage  : String
    var buttonSize   : CGFloat
    var buttonAction : () -> Void
    var shareLink    : String = ""

    var body: some View {
        if (self.isMenu) {
//            Menu {
//                Button(action: {
//                    self.buttonAction()
//                }) {
//                    Label("Copy Link", systemImage: "doc.on.doc")
//                }
//            } label: {
//                Image(systemName: self.buttonImage)
//                    .foregroundColor(.primary)
//                    .font(.system(size: buttonSize))
//            }

            Button(action: actionSheet) {
                Image(systemName: self.buttonImage)
                    .foregroundColor(.primary)
                    .font(.system(size: buttonSize))
            }
        } else {
            Button(action: {
                self.buttonAction()
            }) {
                Image(systemName: self.buttonImage)
                    .foregroundColor(.primary)
                    .font(.system(size: buttonSize))
            }
        }

    }

    func actionSheet() {
        guard let urlShare = URL(string: self.shareLink) else { return }
        let activityVC = UIActivityViewController(activityItems: [urlShare], applicationActivities: nil)
        UIApplication.shared.windows.first?.rootViewController?.present(activityVC, animated: true, completion: nil)
    }
}

struct ToolbarShare_Previews: PreviewProvider {
    static var previews: some View {
        ToolbarButton(buttonImage: "square.and.arrow.up", buttonSize: 17, buttonAction: {})
    }
}
