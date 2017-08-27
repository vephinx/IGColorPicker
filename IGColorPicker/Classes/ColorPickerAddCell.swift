//
//  ColorPickerAddCell.swift
//  Pods
//
//  Created by Sebastian Ruiz on 27/08/2017.
//
//

import Foundation
import UIKit
//import M13Checkbox

class ColorPickerAddCell: UICollectionViewCell {

    static let cellIdentifier = String(describing: ColorPickerAddCell.self)
    
    init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    fileprivate func commonInit() {
        var addView = AddView()
        addView.backgroundColor = .clear
        addView.isUserInteractionEnabled = false
        
        // Setup of checkbox
//        checkbox.isUserInteractionEnabled = false
//        checkbox.backgroundColor = .clear
//        checkbox.hideBox = true
//        checkbox.setCheckState(.unchecked, animated: false)
        
        self.addSubview(addView)
        
        // Setup constraints to checkbox
        addView.translatesAutoresizingMaskIntoConstraints = false
        self.addConstraint(NSLayoutConstraint(item: addView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 14))
        self.addConstraint(NSLayoutConstraint(item: addView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 14))
        self.addConstraint(NSLayoutConstraint(item: addView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: -14))
        self.addConstraint(NSLayoutConstraint(item: addView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: -14))
    }
    
}
