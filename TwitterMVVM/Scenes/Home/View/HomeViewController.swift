//
//  HomeViewController.swift
//  TwitterMVVM
//
//  Created by Marcos Alves on 18/10/21.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - UI Elements
    
    @IBOutlet private weak var tableView: UITableView?
    private lazy var avatarImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Avatar"))
        imageView.frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var featureImageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Feature"))
        imageView.frame = CGRect(x: 0, y: 0, width: 22, height: 22)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var navigationItemTitleView: UIImageView = {
        let imageView = UIImageView(image: UIImage(named: "Twitter"))
        imageView.frame = CGRect(x: 0, y: 0, width: 27, height: 22)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    private lazy var navigationItemRightView: UIBarButtonItem = {
        let barItem = UIBarButtonItem(customView: featureImageView)
        return barItem
    }()
    private lazy var navigationItemLeftView: UIBarButtonItem = {
        let barItem = UIBarButtonItem(customView: avatarImageView)
        return barItem
    }()
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.setupNavigationBarItems()
    }
    
    // MARK: - Setup
    
    private func setupNavigationBarItems() {
        navigationItem.titleView = navigationItemTitleView
        navigationItem.leftBarButtonItem = navigationItemLeftView
        navigationItem.rightBarButtonItem = navigationItemRightView
    }
}
