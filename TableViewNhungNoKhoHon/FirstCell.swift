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
    
    let vwYellow: UIView = {
        let vw = UIView()
        vw.layer.cornerRadius = 2
        vw.backgroundColor = UIColor(red: 246/255, green: 194/255, blue: 68/255, alpha: 1)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwBlue: UIView = {
        let vw = UIView()
        vw.layer.cornerRadius = 2
        vw.backgroundColor = UIColor(red: 97/255, green: 140/255, blue: 234/255, alpha: 1)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let lblYellow: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem"
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lblBlue: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum"
        lbl.textAlignment = .left
        lbl.textColor = .white
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
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
    
    let imvCheck: UIImageView = {
        let imv = UIImageView()
        imv.image = UIImage(named: "imgCheckWhite")
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
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
        
        vwView.addSubview(vwYellow)
        
        vwYellow.topAnchor.constraint(equalTo: vwView.topAnchor, constant: 10).isActive = true
        vwYellow.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        
        vwView.addSubview(vwBlue)
        
        vwBlue.topAnchor.constraint(equalTo: vwView.topAnchor, constant: 10).isActive = true
        vwBlue.leftAnchor.constraint(equalTo: vwYellow.rightAnchor, constant: 4).isActive = true
        
        vwYellow.addSubview(lblYellow)
        
        lblYellow.topAnchor.constraint(equalTo: vwYellow.topAnchor, constant: 2).isActive = true
        lblYellow.bottomAnchor.constraint(equalTo: vwYellow.bottomAnchor, constant: -2).isActive = true
        lblYellow.leftAnchor.constraint(equalTo: vwYellow.leftAnchor, constant: 2).isActive = true
        lblYellow.rightAnchor.constraint(equalTo: vwYellow.rightAnchor, constant: -2).isActive = true
        
        vwBlue.addSubview(lblBlue)
        
        lblBlue.topAnchor.constraint(equalTo: vwBlue.topAnchor, constant: 2).isActive = true
        lblBlue.bottomAnchor.constraint(equalTo: vwBlue.bottomAnchor, constant: -2).isActive = true
        lblBlue.leftAnchor.constraint(equalTo: vwBlue.leftAnchor, constant: 2).isActive = true
        lblBlue.rightAnchor.constraint(equalTo: vwBlue.rightAnchor, constant: -2).isActive = true
        
        vwView.addSubview(lblTop)
        
        lblTop.topAnchor.constraint(equalTo: vwYellow.bottomAnchor, constant: 6).isActive = true
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
        
        vwView.addSubview(imvCheck)
        
        imvCheck.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -2).isActive = true
        imvCheck.heightAnchor.constraint(equalToConstant: 30).isActive = true
        imvCheck.widthAnchor.constraint(equalToConstant: 30).isActive = true
        imvCheck.centerYAnchor.constraint(equalTo: vwView.centerYAnchor, constant: 20).isActive = true
    }
    
    
}
