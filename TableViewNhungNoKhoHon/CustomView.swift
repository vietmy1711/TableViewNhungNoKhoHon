//
//  CustomView.swift
//  TableViewNhungNoKhoHon
//
//  Created by MM on 5/25/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

protocol CustomViewDelegate {
    func checkButtonClicked(index: Int)
}

class CustomView: UIView {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    var delegate: CustomViewDelegate?
    
    var isChecked = false
    
    var index = -1
    
    let vwContainer: UIView = {
        let vw = UIView()
        vw.backgroundColor = .white
        vw.layer.masksToBounds = false
        vw.layer.cornerRadius = 2
        vw.layer.shadowColor = UIColor.black.cgColor
        vw.layer.shadowOpacity = 0.2
        vw.layer.shadowOffset = .zero
        vw.layer.shadowRadius = 0.8
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwView: UIView = {
        let vw = UIView()
        //vw.backgroundColor = .red
        vw.layer.masksToBounds = true
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwSeperator: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor(red: 227/255, green: 228/255, blue: 228/255, alpha: 1)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let vwBottomView: UIView = {
        let vw = UIView()
        vw.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        vw.translatesAutoresizingMaskIntoConstraints = false
        return vw
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let btnCheck: UIButton = {
        let imv = UIButton()
        imv.addTarget(self, action: #selector(imageTapped), for: .touchUpInside)
        imv.translatesAutoresizingMaskIntoConstraints = false
        return imv
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
        lbl.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl3: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 79/255, green: 90/255, blue: 99/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl4: UILabel = {
        let lbl = UILabel()
        lbl.text = "Lorem ipsum dolor sit amet"
        lbl.textAlignment = .left
        lbl.textColor = UIColor(red: 169/255, green: 169/255, blue: 169/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 14)
        lbl.numberOfLines = 0
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lbl5: UILabel = {
           let lbl = UILabel()
           lbl.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
           lbl.textAlignment = .left
           lbl.textColor = UIColor(red: 73/255, green: 73/255, blue: 73/255, alpha: 1)
           lbl.font = UIFont(name: "Helvetica-Bold", size: 14)
           lbl.numberOfLines = 0
           lbl.translatesAutoresizingMaskIntoConstraints = false
           return lbl
       }()
    
    let lblLeft: UILabel = {
        let lbl = UILabel()
        lbl.text = "12:00~12:20"
        lbl.textAlignment = .center
        lbl.textColor = UIColor(red: 75/255, green: 75/255, blue: 77/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 12)
        lbl.numberOfLines = 1
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    let lblRight: UILabel = {
        let lbl = UILabel()
        lbl.text = "200 N"
        lbl.textAlignment = .center
        lbl.textColor = UIColor(red: 75/255, green: 75/255, blue: 77/255, alpha: 1)
        lbl.font = UIFont(name: "Helvetica", size: 12)
        lbl.numberOfLines = 1
        lbl.translatesAutoresizingMaskIntoConstraints = false
        return lbl
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupView() {
        self.addSubview(vwContainer)
        
        
        vwContainer.topAnchor.constraint(equalTo: self.topAnchor, constant: 4).isActive = true
        vwContainer.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -4).isActive = true
        vwContainer.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 4).isActive = true
        vwContainer.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -4).isActive = true
        

        vwContainer.addSubview(vwView)
        
        vwView.topAnchor.constraint(equalTo: vwContainer.topAnchor).isActive = true
        vwView.bottomAnchor.constraint(equalTo: vwContainer.bottomAnchor).isActive = true
        vwView.leftAnchor.constraint(equalTo: vwContainer.leftAnchor).isActive = true
        vwView.rightAnchor.constraint(equalTo: vwContainer.rightAnchor).isActive = true

        
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
        
        lbl3.topAnchor.constraint(equalTo: lbl2.bottomAnchor, constant: 4).isActive = true
        lbl3.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl3.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true
        
        vwView.addSubview(lbl4)
        
        lbl4.topAnchor.constraint(equalTo: lbl3.bottomAnchor, constant: 4).isActive = true
        lbl4.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl4.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true

        vwView.addSubview(lbl5)
        vwView.addSubview(vwSeperator)
        vwView.addSubview(vwBottomView)
        
        lbl5.topAnchor.constraint(equalTo: lbl4.bottomAnchor, constant: 16).isActive = true
        lbl5.bottomAnchor.constraint(equalTo: vwSeperator.topAnchor, constant: -16).isActive = true
        lbl5.leftAnchor.constraint(equalTo: vwView.leftAnchor, constant: 6).isActive = true
        lbl5.rightAnchor.constraint(equalTo: vwView.rightAnchor, constant: -6).isActive = true

        
        vwSeperator.bottomAnchor.constraint(equalTo: vwBottomView.topAnchor).isActive = true
        vwSeperator.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
        vwSeperator.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
        vwSeperator.heightAnchor.constraint(equalToConstant: 1).isActive = true
        
        vwBottomView.leftAnchor.constraint(equalTo: vwView.leftAnchor).isActive = true
        vwBottomView.rightAnchor.constraint(equalTo: vwView.rightAnchor).isActive = true
        vwBottomView.bottomAnchor.constraint(equalTo: vwView.bottomAnchor).isActive = true

        vwBottomView.addSubview(stackView)
        stackView.addArrangedSubview(lblLeft)
        stackView.addArrangedSubview(lblRight)
        
        stackView.topAnchor.constraint(equalTo: vwBottomView.topAnchor, constant: 4).isActive = true
        stackView.bottomAnchor.constraint(equalTo: vwBottomView.bottomAnchor, constant: -4).isActive = true
        stackView.leftAnchor.constraint(equalTo: vwBottomView.leftAnchor).isActive = true
        stackView.rightAnchor.constraint(equalTo: vwBottomView.rightAnchor).isActive = true

        
        self.addSubview(btnCheck)
        
        btnCheck.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        btnCheck.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        btnCheck.heightAnchor.constraint(equalToConstant: 30).isActive = true
        btnCheck.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
    
    func setImage(img: UIImage) {
        DispatchQueue.main.async {
            self.btnCheck.setImage(img, for: .normal)
        }
    }
    
    @objc func imageTapped() {
        if isChecked == true {
            isChecked = false
            DispatchQueue.main.async {
                self.btnCheck.setImage(UIImage(named: "imgCheckWhite"), for: .normal)
            }
        }
        else if isChecked == false {
            delegate?.checkButtonClicked(index: index)
            isChecked = true
            DispatchQueue.main.async {
                self.btnCheck.setImage(UIImage(named: "imgCheckRed"), for: .normal)
            }
        }
    }
}
