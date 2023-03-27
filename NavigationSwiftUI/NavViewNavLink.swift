//
//  NavViewNavLink.swift
//  NavigationSwiftUI
//
//  Created by Marco Alonso Rodriguez on 26/03/23.
//

import SwiftUI

struct NavViewNavLink: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: NextView()) {
                Text("Go to Next View")
                    .font(.system(size: 40))
                    .foregroundColor(.white)
                    .background(
                        Color.blue
                    )
                    .cornerRadius(12)
            }
        }
    }
}

struct NavViewNavLink_Previews: PreviewProvider {
    static var previews: some View {
        NavViewNavLink()
    }
}
