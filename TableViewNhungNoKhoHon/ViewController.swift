//
//  ViewController.swift
//  TableViewNhungNoKhoHon
//
//  Created by MM on 5/25/20.
//  Copyright © 2020 MM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView: UITableView = {
        let tableView = UITableView()
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    let btnBottom: UIButton = {
        let btn = UIButton()
        btn.setTitle("Lorem ipsum", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.titleLabel?.font = UIFont(name: "Helvetica-Bold", size: 14)
        btn.backgroundColor = UIColor(red: 97/255, green: 140/255, blue: 234/255, alpha: 1)
        btn.translatesAutoresizingMaskIntoConstraints = false
        return btn
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "FirstCell", bundle: nil), forCellReuseIdentifier: "FirstCell")
        tableView.register(UINib(nibName: "SecondCell", bundle: nil), forCellReuseIdentifier: "SecondCell")

        setupUI()
    }

    func setupUI() {
        view.addSubview(tableView)
        view.addSubview(btnBottom)
        
        tableView.backgroundColor = UIColor(red: 246/255, green: 248/255, blue: 251/255, alpha: 1)
        tableView.separatorStyle = .none
        
        tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        tableView.bottomAnchor.constraint(equalTo: btnBottom.topAnchor, constant: -10).isActive = true
        tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        
        btnBottom.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 6).isActive = true
        btnBottom.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -6).isActive = true
        btnBottom.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10).isActive = true
        btnBottom.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        btnBottom.layer.cornerRadius = 25

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "FirstCell", for: indexPath)
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondCell", for: indexPath) as! SecondCell
        if indexPath.row == 1 {
            cell.isFirst = true
        }
        if indexPath.row == 3 {
            cell.isLast = true
        }
        cell.setupCell()
        return cell
    }
    
}
