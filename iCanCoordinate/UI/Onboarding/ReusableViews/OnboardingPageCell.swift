//
//  OnboardingPageCell.swift
//  iCanCoordinate
//
//  Created by Mark Dominick Flores on 09/09/2019.
//  Copyright © 2019 MarkTheiOSGuy. All rights reserved.
//

import UIKit

final class OnboardingPageCell: UICollectionViewCell {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func configureCell(with page: OnboardingPage) {
        self.imageView.image = page.image
        self.titleLabel.text = page.description
        
        self.titleLabel.font = UIFont.playfairDisplay.regular
    }
}
