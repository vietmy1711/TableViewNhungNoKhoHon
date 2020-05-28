//
//  SecondCell.swift
//  TableViewNhungNoKhoHon
//
//  Created by MM on 5/25/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class SecondCell: UITableViewCell {
    
    var isFirst = false
    
    var isLast = false
    
    let vwView: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor(red: 97/255, green: 140/255, blue: 234/255, alpha: 1)
        vw.layer.cornerRadius = 4
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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        contentView.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        contentView.addSubview(vwView)
    }
    
    func setupCell() {
        if isFirst == true {
            vwView.layer.maskedCorners = [ .layerMaxXMinYCorner,.layerMinXMinYCorner]

            vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 6).isActive = true
            vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
            vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
            vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
            
            vwView.addSubview(lblTop)
            
            lblTop.topAnchor.constraint(equalTo: vwView.topAnchor, constant: 6).isActive = true
            lblTop.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 20).isActive = true
            lblTop.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -20).isActive = true
            
            customView1.setImage(img: UIImage(named: "imgCheckRed")!)
            vwView.addSubview(customView1)
            
            customView1.topAnchor.constraint(equalTo: lblTop.bottomAnchor, constant: 4).isActive = true
            customView1.bottomAnchor.constraint(equalTo: vwView.bottomAnchor).isActive = true
            customView1.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
            customView1.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
            return
        }
        if isLast == true {
            vwView.layer.maskedCorners = [.layerMinXMaxYCorner, .layerMaxXMaxYCorner]

            vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
            vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -6).isActive = true
            vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
            vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
            
            vwView.addSubview(customView1)
            customView1.setImage(img: UIImage(named: "imgCheckWhite")!)
            customView1.topAnchor.constraint(equalTo: vwView.topAnchor).isActive = true
            customView1.bottomAnchor.constraint(equalTo: vwView.bottomAnchor, constant: -2).isActive = true
            customView1.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
            customView1.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
            return
        }
        vwView.layer.cornerRadius = 0

        vwView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 0).isActive = true
        vwView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: 0).isActive = true
        vwView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 6).isActive = true
        vwView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(customView1)
        customView1.setImage(img: UIImage(named: "imgCheckWhite")!)
        customView1.topAnchor.constraint(equalTo: vwView.topAnchor).isActive = true
        customView1.bottomAnchor.constraint(equalTo: vwView.bottomAnchor).isActive = true
        customView1.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
        customView1.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
        return
        
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    
}

extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
