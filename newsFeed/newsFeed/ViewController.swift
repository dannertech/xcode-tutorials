//
//  ViewController.swift
//  newsFeed
//
//  Created by Diamonique Danner on 5/1/18.
//  Copyright © 2018 Vmaior, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var tableView: UITableView!
    
    var posts = [
        Post(id: "1", author: "Obama", text: "Outtie 5000 America"),
        Post(id: "2", author: "Drake", text: "In the studio"),
        Post(id: "3", author: "Nicki Minaj", text: "Popping Wheelies")
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView = UITableView(frame: view.bounds, style: .plain)
        
      
        
        let cellNib = UINib(nibName: "PostTableViewCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "postCell")
        view.addSubview(tableView)
        
        var layoutGuide: UILayoutGuide!
        if #available(iOS 11, *){
        
        
        layoutGuide = view.safeAreaLayoutGuide
        } else {
            layoutGuide = view.layoutMarginsGuide
        }
        tableView.leadingAnchor.constraint(equalTo: layoutGuide.leadingAnchor).isActive = true
        
          tableView.trailingAnchor.constraint(equalTo: layoutGuide.trailingAnchor).isActive = true
        
          tableView.bottomAnchor.constraint(equalTo: layoutGuide.bottomAnchor).isActive = true
        
          tableView.topAnchor.constraint(equalTo: layoutGuide.topAnchor).isActive = true
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        tableView.reloadData()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "postCell", for: indexPath) as! PostTableViewCell
        cell.set(post: posts[indexPath.row])
        return cell
    }
}

