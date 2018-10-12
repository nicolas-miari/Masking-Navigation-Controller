//
//  TableViewController.swift
//  DemoApp
//
//  Created by Nicolás Miari on 2018/10/12.
//  Copyright © 2018 Nicolás Miari. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Remove separators for empty cells:
        self.tableView.tableFooterView = UIView(frame: .zero)

        // Blurred background:
        tableView.backgroundColor = UIColor.clear
        let blurEffect = UIBlurEffect(style: .dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        tableView.backgroundView = blurEffectView
        tableView.separatorEffect = UIVibrancyEffect(blurEffect: blurEffect)
    }

    @IBAction func done(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

}
