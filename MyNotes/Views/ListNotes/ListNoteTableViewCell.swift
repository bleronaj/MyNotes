//
//  ListNoteTableViewCell.swift
//  MyNotes
//
//  Created by blerona on 27.2.24.

import UIKit

class ListNoteTableViewCell: UITableViewCell {

    static let identifier = "ListNoteTableViewCell"
    
    @IBOutlet weak private var titleLbl: UILabel!
    @IBOutlet weak private var descriptionLbl: UILabel!
    
    func setup(note: Note) {
        titleLbl.text = note.title
        descriptionLbl.text = note.desc
    }
}
