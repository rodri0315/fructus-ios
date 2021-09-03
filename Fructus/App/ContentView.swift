//
//  ContentView.swift
//  Fructus
//
//  Created by Jorge Rodriguez on 7/28/21.
//

import SwiftUI

struct ContentView: View {
  
  var fruits: [Fruit] = fruitsData
  
  var body: some View {
    NavigationView {
      List(fruits, id: \.id) { fruit in
        NavigationLink(
          destination: FruitDetailView(fruit: fruit)) {
          FruitRowView(fruit: fruit)
            .padding(.vertical, 4)          
        }
      }
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
