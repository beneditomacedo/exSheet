//
//  ContentView.swift
//  exSheet
//
//  Created by Benedito Macedo on 11/12/20.
//
// https://www.simpleswiftguide.com/how-to-present-sheet-modally-in-swiftui/
//

import SwiftUI

struct ContentView: View {
    @State var showingDetail = false
    
    var body: some View {
        VStack {
            Button(action: {
                self.showingDetail = true
            }) {
                Text("Show Modal")
            }.sheet(isPresented: $showingDetail) {
                DetailView(showingDetail: self.$showingDetail)
            }
            .padding()
            .border(Color.blue)

            Button(action: {
                self.showingDetail = true
            }) {
                Text("On Dismiss")
            }.sheet(isPresented: $showingDetail, onDismiss: {
                print("Code executed after modal is closed")
            }) {
                DetailView(showingDetail: self.$showingDetail)
            }
            .padding()
            .border(Color.blue)
        }
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
