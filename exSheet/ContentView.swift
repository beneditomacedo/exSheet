//
//  ContentView.swift
//  exSheet
//
//  Created by Benedito Macedo on 11/12/20.
//

import SwiftUI

struct ContentView: View {
    @State var showingDetail = false
    
    var body: some View {
        Button(action: {
            self.showingDetail = true
        }) {
            Text("Show detail")
        }.sheet(isPresented: $showingDetail) {
            DetailView(showingDetail: self.$showingDetail)
        }
        .padding()
        .border(Color.blue)
    }
}

struct DetailView: View {
    @Binding var showingDetail: Bool
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingDetail = false
            }) {
                Text("Close")
            }
            .padding()
            .border(Color.blue)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
