//
//  AnswerViewCell.swift
//  iQuiz3
//
//  Created by Kevin Ly on 11/23/15.
//  Copyright © 2015 Kevin Ly. All rights reserved.
//

import UIKit

class AnswerViewCell: UITableViewCell {
    
    @IBOutlet var answerText: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
