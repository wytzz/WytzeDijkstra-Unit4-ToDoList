//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Wytze Dijkstra on 28/11/2018.
//  Copyright © 2018 Wytze Dijkstra. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    @IBAction func checkmarkTapped(_ sender: UIButton) {
        delegate?.checkmarkTapped(sender: self)
    }
    
    var delegate : ToDoCellDelegate?
}
