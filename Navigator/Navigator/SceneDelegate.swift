//
//  SceneDelegate.swift
//  Navigator
//
//  Created by Эля Корельская on 20/08/22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


 
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead)
        self.window = UIWindow(windowScene: windowScene)
        //1 навигационный контроллер
        let navController = UINavigationController(rootViewController: FeedViewController())
        //2 навигационный контроллер
        let secondItemController = ProfileViewController()
        //создание панели вкладок
        let tabBarController = UITabBarController()
        
        tabBarController.viewControllers = [
            navController, secondItemController
        ]
        //navController.tabBarItem = UITabBarItem(title:"Feed",image:UIImage(systemName: "image.jpeg"), tag: 0)
        //secondItemController.tabBarItem = UITabBarItem(title:"Profile",image:UIImage(systemName: "image.2jpeg"), tag: 1)

        tabBarController.viewControllers?.enumerated().forEach {
            UITabBar.appearance().backgroundColor = UIColor(red: 0.74,green: 0.38,blue:0.23, alpha: 1)
            UITabBar.appearance().tintColor = .black
            $1.tabBarItem.title = $0 == 0 ? "Feed" : "Profile"
            $1.tabBarItem.image = $0 == 0
            ? UIImage(systemName: "calendar")
            : UIImage(systemName: "homekit")
           
        }
        self.window?.rootViewController = tabBarController
        self.window?.makeKeyAndVisible()
    
    }
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

