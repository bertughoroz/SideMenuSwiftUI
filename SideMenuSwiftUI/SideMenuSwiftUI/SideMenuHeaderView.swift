//
//  SideMenuHeaderView.swift
//  SideMenuSwiftUI
//
//  Created by Bertuğ Horoz on 12.12.2022.
//

import SwiftUI

struct SideMenuHeaderView: View {
    // MARK: - PROPERTIES
    @Binding var isShowing : Bool
    // MARK: - BODY
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Button {
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.black)
                    .padding()
            }

            VStack(alignment: .leading){
                // USER IMAGE
                Image("user")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                    .padding(.bottom, 16)
                // FULLNAME
                Text("Bertuğ Horoz")
                    .font(.system(size: 24, weight: .semibold))
                // USERNAME
                Text("@bertughoroz")
                    .font(.system(size: 14))
                    .padding(.bottom, 20)
                // FOLLOWERS AND FOLLOWING SECTION
                HStack(spacing: 12){
                    HStack(spacing: 4){
                        Text("1,241").bold()
                        Text("Following")
                    }
                    HStack(spacing: 4){
                        Text("891").bold()
                        Text("Followers")
                    }
                    Spacer()
                } // : HSTACK
                Spacer()
            } // : VSTACK
            .padding()
        } // :ZSTACK
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowing: .constant(true))
    }
}
