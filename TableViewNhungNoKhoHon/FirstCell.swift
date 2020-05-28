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
    
    let lblTop: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        lbl.textAlignment = .left
        lbl.textColor = .black
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl1: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 79/255, green: 90/255, blue: 99/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl2: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum dolor sit."
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl3: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum dolor sit amet."
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl4: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 79/255, green: 90/255, blue: 99/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl5: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
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
        
        vwView.addSubview(lblTop)
        
        lblTop.topAnchor.constraint(equalTo: vwView.topAnchor, constant: 6).isActive = true
        lblTop.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lblTop.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lbl1)
        
        lbl1.topAnchor.constraint(equalTo: lblTop.bottomAnchor, constant: 6).isActive = true
        lbl1.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl1.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lbl2)
        
        lbl2.topAnchor.constraint(equalTo: lbl1.bottomAnchor, constant: 4).isActive = true
        lbl2.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl2.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lbl3)
        
        lbl3.topAnchor.constraint(equalTo: lbl2.bottomAnchor, constant: 6).isActive = true
        lbl3.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl3.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lbl4)
        
        lbl4.topAnchor.constraint(equalTo: lbl3.bottomAnchor, constant: 4).isActive = true
        lbl4.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl4.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lbl5)
        
        lbl5.topAnchor.constraint(equalTo: lbl4.bottomAnchor, constant: 4).isActive = true
        lbl5.bottomAnchor.constraint(equalTo: vwView.bottomAnchor, constant: -10).isActive = true
        lbl5.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl5.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
    }
    
    
}
