//
//  ViewController.swift
//  MultipleSelection
//
//  Created by BridgeLabz on 27/07/17.
//  Copyright © 2017 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    var profileViewModel = ProfileViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileViewModel.reloadSections = { [weak self] (section: Int) in
            self?.tableView?.beginUpdates()
            self?.tableView?.reloadSections([section], with: .fade)
            self?.tableView?.endUpdates()
        }
        
        tableView.dataSource = profileViewModel
        tableView.delegate = profileViewModel
        // Do any additional setup after loading the view, typically from a nib.
        tableView?.estimatedRowHeight = 100
        tableView?.rowHeight = UITableViewAutomaticDimension
        tableView?.sectionHeaderHeight = 70
        tableView?.separatorStyle = .none
        
        tableView?.register(AboutCell.nib, forCellReuseIdentifier: AboutCell.identifier)
        tableView?.register(NameAndPictureCell.nib, forCellReuseIdentifier: NameAndPictureCell.identifier)
        tableView?.register(FriendsCell.nib, forCellReuseIdentifier: FriendsCell.identifier)
        tableView?.register(AttributesCell.nib, forCellReuseIdentifier: AttributesCell.identifier)
        tableView?.register(EmailCell.nib, forCellReuseIdentifier: EmailCell.identifier)
        tableView.register(HeaderView.nib, forHeaderFooterViewReuseIdentifier: HeaderView.identifier)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

