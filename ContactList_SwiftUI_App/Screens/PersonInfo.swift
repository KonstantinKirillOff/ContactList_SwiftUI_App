//
//  PersonInfo.swift
//  ContactList_SwiftUI_App
//
//  Created by Константин Кириллов on 14.11.2021.
//

import SwiftUI

struct PersonInfo: View {
    let personData: Person
    
    var body: some View {
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 150, height: 150)
                .padding()
            VStack(alignment: .leading) {
                List {
                TextView(dataValue: personData.phone, systemName: "phone")
                TextView(dataValue: personData.email, systemName: "mail")
                }
                .listStyle(.inset)
            }
            Spacer()
        }
        .navigationTitle(personData.fulName)
    }
}

struct PersonInfo_Previews: PreviewProvider {
    static var previews: some View {
        PersonInfo(personData: Person.getPersons()[0])
    }
}
