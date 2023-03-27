//
//  TabView.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct TabViewDemo: View {
    var body: some View {
        TabView {
            NavViewNavLink()
                .tabItem {
                    Label("NavigationView", systemImage: "note")
                        .symbolRenderingMode(.multicolor)
                }
            
            PantallaCompleta()
                .tabItem {
                    Label("PantallaCompleta", systemImage: "square.fill")
                        .symbolRenderingMode(.multicolor)
                }
            
            VistaModal()
                .tabItem {
                    Label("Vista Modal", systemImage: "square.split.1x2.fill")
                        .symbolRenderingMode(.multicolor)
                }
            
            NavigationBarButton()
                .tabItem {
                    Label("NavB But", systemImage: "square.split.1x2.fill")
                        .symbolRenderingMode(.multicolor)
                }
        }
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabViewDemo()
    }
}
