//
//  NoteDetails.swift
//  Notes
//
//  Created by Boris Lysikov on 15.03.2022.
//

import SwiftUI

struct NoteDetails: View {
    
    @State private var fullText: String = "This is some editable text..."
    var note: Note
    
    var body: some View {
        NavigationView{
            ScrollView {
                VStack(alignment: .leading) {
                    Text(note.title)
                        .bold()
                        .font(.title)
                    TextEditor(text: $fullText)
                    
                }
            }
        }
    }
}

struct NoteDetails_Previews: PreviewProvider {
    static var previews: some View {
        NoteDetails(note: .init(title: "title", description: "fa das da"))
    }
}
