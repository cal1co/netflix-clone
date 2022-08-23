//
//  ViewController.swift
//  Netflix Clone
//
//  Created by Alex King on R 4/08/22.
//

import UIKit

class MainTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemYellow 
        
        let vc1 = UINavigationController( rootViewController: HomeViewController() )
        let vc2 = UINavigationController( rootViewController: UpcommingViewController() )
        let vc3 = UINavigationController( rootViewController: SearchViewController() )
        let vc4 = UINavigationController( rootViewController: DownloadsViewController() )
    
        
        vc1.tabBarItem.image = UIImage( systemName: "house" )
        vc2.tabBarItem.image = UIImage( systemName: "play.circle" )
        vc3.tabBarItem.image = UIImage( systemName: "magnifyingglass" )
        vc4.tabBarItem.image = UIImage( systemName: "bookmark" )
        
        vc1.title = "Home"
        vc2.title = "Coming"
        vc3.title = "Search"
        vc4.title = "Watchlist"
        
        tabBar.tintColor = .label
        
        setViewControllers( [vc1, vc2, vc3, vc4], animated: true ) 
    }


}

