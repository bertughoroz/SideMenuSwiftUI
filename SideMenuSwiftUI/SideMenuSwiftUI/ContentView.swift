//
//  ContentView.swift
//  SideMenuSwiftUI
//
//  Created by Bertuğ Horoz on 12.12.2022.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    @State private var isShowing = false
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ZStack {
                if isShowing{
                    SideMenuView(isShowing: $isShowing)
                }
                HomeView()
                    .cornerRadius(isShowing ? 20 : 10)
                    .offset(x: isShowing ? 300 : 0 , y: isShowing ? 44 : 0 )
                    .scaleEffect(isShowing ? 0.8 : 1)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowing.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.white)
                    }))
                    .navigationTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
            } // : ZSTACK
        } // : NAVIGATIONVIEW
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color(.black)
            Text("Home View")
        } // : ZSTACK
    }
}
