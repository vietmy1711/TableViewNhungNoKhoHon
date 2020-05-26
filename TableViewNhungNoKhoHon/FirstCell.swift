//
//  FirstCell.swift
//  TableViewNhungNoKhoHon
//
//  Created by MM on 5/25/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class FirstCell: UITableViewCell {
    
    let vwView: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        vw.layer.cornerRadius = 5
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOpacity = 0.2
        vw.layer.shadowOffset = .zero
        vw.layer.shadowRadius = 0.8
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setupCell()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    func setupCell() {
        contentView.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        contentView.addSubview(vwView)
        
        vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6).isActive = true
        vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
        vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
        vwView.heightAnchor.constraint(equalToConstant: 200).isActive = true

    }
    
}
