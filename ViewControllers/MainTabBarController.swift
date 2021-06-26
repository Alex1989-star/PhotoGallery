//
//  MainTabBarController.swift
//  PhotoGallery
//
//  Created by Леся on 25.06.2021.
//

import UIKit

class MainTabBarController: UITabBarController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generalNavigationController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photo.png")),
            generalNavigationController(rootViewController: ViewController(), title: "Favourites", image: #imageLiteral(resourceName: "wedding-photo.png"))
        ]
    }
    
    //MARK: TabBarController Settings
    
    private func generalNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        return navigationVC
    }
}



