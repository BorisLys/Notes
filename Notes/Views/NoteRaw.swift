//
//  NoteRaw.swift
//  Notes
//
//  Created by Boris Lysikov on 15.03.2022.
//

import SwiftUI

struct NoteRaw: View {
    
    var note: Note
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(note.title)
                .bold()
                .font(.title)
            Text(note.description)
                .font(.title2)
        }
        
    }
}

struct NoteRaw_Previews: PreviewProvider {
    static var previews: some View {
        NoteRaw(note: .init(title: "My text", description: "ffasdf fasdf fasd"))
            .previewLayout(.fixed(width: 300, height: 70))
    }
}
