//
//  FullContactList.swift
//  ContactList_SwiftUI_App
//
//  Created by Константин Кириллов on 14.11.2021.
//

import SwiftUI

struct FullContactList: View {
    let personsData: [Person]
    
    var body: some View {
        NavigationView {
            List(personsData, id: \.phone) { person in
                Section(header: Text(person.fulName).font(.headline)) {
                    TextView(dataValue: person.phone, systemName: "phone")
                    TextView(dataValue: person.email, systemName: "mail")
                }
                .textCase(.none)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Contact list")
        }
    }
}

struct FullContactList_Previews: PreviewProvider {
    static var previews: some View {
        FullContactList(personsData: Person.getPersons())
    }
}
