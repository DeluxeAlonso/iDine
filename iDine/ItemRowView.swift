//
//  ItemRowView.swift
//  iDine
//
//  Created by Alonso on 12/03/23.
//

import SwiftUI

struct ItemRowView: View {
    let item: MenuItem

    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

struct ItemRowView_Previews: PreviewProvider {
    static var previews: some View {
        ItemRowView(item: MenuItem.example)
    }
}
