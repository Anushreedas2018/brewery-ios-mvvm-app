//
//  ContentView.swift
//  Breweries
//
//  Created by Anushree Das on 23/07/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var vm = BreweryViewModel()

    var body: some View {
        NavigationView {
            ZStack{
                List{
                    ForEach(vm.breweries, id: \.id) {brewery in
                        NavigationLink {
                                            BreweryDetail(brewery: brewery)
                                        } label: {
                                            BreweryRow(brewery: brewery)
                                        }
                    BreweryRow(brewery: brewery)
                        .listRowSeparator(.hidden)
                    }
                }
                .listStyle(.plain)
                .navigationTitle("Breweries")
//                .alert(isPresented: $vm.hasError,
//                       error: vm.error) {
//                    Button(action: vm.fetchBrewery){
//                              Text("Retry")
//                   }
//                }
                
            }
            .onAppear(perform: vm.fetchBrewery)
            
            }
            
        }
    
    }

            



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
