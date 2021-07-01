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
        
        view.backgroundColor = .white
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: WaterfallLayout())
        
        let likesVC = LikesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        
        viewControllers = [
            generateNavigationController(rootViewController: photosVC, title: "Photos", image: #imageLiteral(resourceName: "photo")),
            generateNavigationController(rootViewController: likesVC, title: "Favourites", image: #imageLiteral(resourceName: "wedding-photo"))
        ]
    }
    
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}




