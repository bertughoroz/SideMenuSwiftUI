//
//  SideMenuOptionMenu.swift
//  SideMenuSwiftUI
//
//  Created by Bertuğ Horoz on 12.12.2022.
//

import SwiftUI

struct SideMenuOptionMenu: View {
    // MARK: - PROPERTIES
    let viewModel : SideMenuViewModel
    // MARK: - BODY
    var body: some View {
        HStack(spacing: 16){
            //IMAGE
            Image(systemName: viewModel.images)
                .frame(width: 24, height: 24)
            // TEXT
            Text(viewModel.title)
                .font(.system(size: 15, weight: .semibold))
            Spacer()
        } // : HSTACK
        .padding()
    }
}

struct SideMenuOptionMenu_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionMenu(viewModel: .messages)
    }
}
