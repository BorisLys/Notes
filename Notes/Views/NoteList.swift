//
//  NoteList.swift
//  Notes
//
//  Created by Boris Lysikov on 15.03.2022.
//

import SwiftUI

struct NoteList: View {
    
    var list:[Note] = [
        .init(title: "title", description: "das das  gfa dasd "),
        .init(title: "title2", description: "das das  gfa dasd ")
    ]
    
    var body: some View {
        NavigationView {
            List(list) { note in
                NavigationLink {
                    NoteDetails(note: note)
                } label: {
                    NoteRaw(note: note)
                }
            }.navigationTitle("Notes")
        }.toolbar {
            ToolbarItemGroup(placement: .bottomBar) {
                Text("\(list.count) notes")
            }
        }
    }
}

struct NoteList_Previews: PreviewProvider {
    static var previews: some View {
        NoteList()
    }
}
