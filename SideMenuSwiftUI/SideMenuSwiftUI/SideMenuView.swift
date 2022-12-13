//
//  SideMenuView.swift
//  SideMenuSwiftUI
//
//  Created by Bertuğ Horoz on 12.12.2022.
//

import SwiftUI

struct SideMenuView: View {
    // MARK: - PROPERTIES
    @Binding var isShowing : Bool
    // MARK: - BODY
    var body: some View {
        ZStack {
            // BACKGROUND COLOR
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
            VStack {
                //HEADER
                SideMenuHeaderView(isShowing: $isShowing)
                    .frame(height: 240)
                // CELL ITEMS
                // LOOP FOR CELLS
                ForEach(SideMenuViewModel.allCases, id: \.self) { cell in
                    NavigationLink {
                        Text(cell.title)
                    } label: {
                        SideMenuOptionMenu(viewModel: cell)
                    }
                    .foregroundColor(.white)
                } //: FOREACH
                Spacer()
            } // : CSTACK
        } // : ZSTACK
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
