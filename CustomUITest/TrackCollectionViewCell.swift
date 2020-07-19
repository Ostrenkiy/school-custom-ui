//
//  TrackCollectionViewCell.swift
//  CustomUITest
//
//  Created by Ostrenkiy on 19.07.2020.
//  Copyright © 2020 Ostrenkiy. All rights reserved.
//

import UIKit
import Nuke

class TrackCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func update(track: Track) {
        if let url = URL(string: track.imagePath) {
            Nuke.loadImage(with: url, into: imageView)
        }
        titleLabel.text = track.title
    }
}
