//
//  ShortContacrList.swift.swift
//  ContactList_SwiftUI_App
//
//  Created by Константин Кириллов on 14.11.2021.
//

import SwiftUI

struct ShortContacrList: View {
    let personsData: [Person]
    
    var body: some View {
        NavigationView {
            List(personsData, id: \.phone) { person in
                NavigationLink("\(person.fulName)") {
                    PersonInfo(personData: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact list")
        }
    }
}

struct ShortContacrList_swift_Previews: PreviewProvider {
    static var previews: some View {
        ShortContacrList(personsData: Person.getPersons())
            .previewDevice("iPhone 11")
    }
}
