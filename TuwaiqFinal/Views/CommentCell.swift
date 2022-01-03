//
//  CommentCell.swift
//  TuwaiqFinal
//
//  Created by Abdulmalik on 10/05/1443 AH.
//

import UIKit

class CommentCell: UITableViewCell {

    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var commentMessageLabel: UILabel!
    @IBOutlet weak var hiddenButtonDelete: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        hiddenButtonDelete.isHidden = true
        if UserManager.loggedInUser != nil {
            for user in UserManager.postUser! {
                if user.owner.id == UserManager.loggedInUser?.id {
                    hiddenButtonDelete.isHidden = false
                }
            }
        }
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    


}
