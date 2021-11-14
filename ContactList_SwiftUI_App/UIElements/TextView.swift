//
//  TextView.swift
//  ContactList_SwiftUI_App
//
//  Created by Константин Кириллов on 14.11.2021.
//

import SwiftUI

struct TextView: View {
    let dataValue: String
    let systemName: String
    
    var body: some View {
        HStack() {
            Image(systemName: systemName)
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(.blue)
            Text(dataValue)
        }
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(dataValue: "1232424", systemName: "phone")
    }
}
