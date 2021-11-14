//
//  ContentView.swift
//  ContactList_SwiftUI_App
//
//  Created by Константин Кириллов on 14.11.2021.
//

import SwiftUI

struct ContentView: View {
    let personsData = Person.getPersons()
    
    var body: some View {
        TabView {
            ShortContacrList(personsData: personsData)
                .tabItem {
                    Image(systemName: "person.3.sequence.fill")
                    Text("Contacts")
                }
            FullContactList(personsData: personsData)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11")
    }
}
