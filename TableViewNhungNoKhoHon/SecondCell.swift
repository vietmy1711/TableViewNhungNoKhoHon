//
//  SecondCell.swift
//  TableViewNhungNoKhoHon
//
//  Created by MM on 5/25/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {
    
    let vwView: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor(red: 97/255, green: 140/255, blue: 234/255, alpha: 1)
        vw.layer.cornerRadius = 5
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOpacity = 0.2
        vw.layer.shadowOffset = .zero
        vw.layer.shadowRadius = 0.8
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let lblTop: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        lbl.textAlignment = .center
        lbl.textColor = .white
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 2
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalCentering
        stackView.spacing = 0
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let customView1 = CustomView()
    let customView2 = CustomView()
    let customView3 = CustomView()
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        contentView.addSubview(vwView)
        
        vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
        vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6).isActive = true
        vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
        vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lblTop)
        
        lblTop.topAnchor.constraint(equalTo: vwView.topAnchor, constant: 6).isActive = true
        lblTop.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 20).isActive = true
        lblTop.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -20).isActive = true
        
        vwView.addSubview(stackView)
        
        stackView.topAnchor.constraint(equalTo: lblTop.bottomAnchor, constant: 0).isActive = true
        stackView.bottomAnchor.constraint(equalTo: vwView.bottomAnchor).isActive = true
        stackView.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
        
        customView1.lbl4.text = "stackView.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true"
        
        customView2.lblTop.text = "stackView.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true nqiuwehqwuyegqweygqw"

        
        stackView.addArrangedSubview(customView1)
        stackView.addArrangedSubview(customView2)
        stackView.addArrangedSubview(customView3)
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
