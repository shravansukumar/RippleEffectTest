//
//  TestTableViewCell.swift
//  POC-TableView-Ripple
//
//  Created by shravan on 05/05/17.
//  Copyright © 2017 shravan. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {
    
    @IBOutlet weak var innerView: UIView! {
        didSet {
            makeViewCircular()
            performPulsatingEffect()
            
        }
    }

    var rippleView: SMRippleView?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        
        
    }
    
    private func makeViewCircular() {
        innerView.layer.zPosition = 1111
    innerView.layer.cornerRadius = innerView.frame.width / 2
        self.innerView.clipsToBounds = true
    }
    
    private func performPulsatingEffect() {
        let frame = innerView.frame
        
        rippleView = SMRippleView(frame: frame, rippleColor: .clear, rippleThickness: 0.1, rippleTimer: 0.5, fillColor: .green, animationDuration: 1, parentFrame: CGRect(x: self.bounds.maxX, y: self.bounds.maxX, width: self.bounds.size.width, height: self.bounds.size.width))
        self.clipsToBounds = true

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }
    
}
