//
//  NavigationBarButton.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct NavigationBarButton: View {
    @State var firstView = false
    @State var secondView = false
    
    var body: some View {
        NavigationView {
            Text("NavigationView y barButtonItems")
                .navigationBarTitle("Navigation")
                .navigationBarItems(leading: Button(" First ") {
                    //Navigate first View
                    firstView = true
                }, trailing: Button(" Second ") {
                    secondView = true
                })
                .sheet(isPresented: $firstView) {
                    NextView()
                }
                .sheet(isPresented: $secondView) {
                    DetailView()
                }
        }
    }
}

struct NavigationBarButton_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarButton()
    }
}
