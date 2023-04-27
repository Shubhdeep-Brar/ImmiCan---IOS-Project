//
//  PageViewController.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-02-06.
//


import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pages = [UIViewController]()
    var tabBarPage = TabBarController()
    
    
    @IBAction func pressedSkipButton(_ sender: UIBarButtonItem) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TabBarController") as! TabBarController
       // self.navigationController?.pushViewController(vc, animated: true)
       // self.navigationController?.push(vc, animated: true)
       // self.tabBarControl
        //self.present(TabBarController(), animated: true, completion: nil)
        self.present(TabBarController(), animated: true)
        
    }
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.delegate = self
        self.dataSource = self
        
        let page1: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "welcomePage")
        let page2: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "sinNumber")
        let page3: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "provincialId")
        let page4: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "driversLicense")
        let page5: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "healthCare")
        let page6: UIViewController! = storyboard?.instantiateViewController(withIdentifier: "bankingInformation")
        
        
        pages.append(page1)
        pages.append(page2)
        pages.append(page3)
        pages.append(page4)
        pages.append(page5)
        pages.append(page6)
        
        setViewControllers([page1], direction: UIPageViewController.NavigationDirection.forward, animated: false)
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = pages.firstIndex(of: viewController)
        let previousIndex = abs((currentIndex! - 1) % pages.count)
        return pages[previousIndex]
    }
    
    
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let currentIndex = pages.firstIndex(of: viewController)
        let nextIndex = abs((currentIndex! + 1) % pages.count)
        return pages[nextIndex]
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return pages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        var subViews: NSArray = view.subviews as NSArray
        var scrollView: UIScrollView? = nil
        var pageControl: UIPageControl? = nil
        
        for view in subViews {
            if (view as AnyObject).isKind(of: UIScrollView.self) {
                scrollView = view as? UIScrollView
            }
            else if (view as AnyObject).isKind(of: UIPageControl.self) {
                pageControl = view as? UIPageControl
            }
        }
        
        if (scrollView != nil && pageControl != nil) {
            scrollView?.frame = view.bounds
            view.bringSubviewToFront(pageControl!)
        }
    }
    
}

//<<<<<<< HEAD
//import Foundation
//import UIKit
//
//class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
//
//
//    var pages = [UIViewController]()
//    let pageControl = UIPageControl()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        self.dataSource = self
//        self.delegate = self
//        let initialPage = 0
//        let page1 = PageVC1()
//        let page2 = PageVC2()
//        let page3 = PageVC3()
//        let page4 = PageVC4()
//
//        // add the individual viewControllers to the pageViewController
//        self.pages.append(page1)
//        self.pages.append(page2)
//        self.pages.append(page3)
//        self.pages.append(page4)
//        setViewControllers([pages[initialPage]], direction: .forward, animated: true, completion: nil)
//
//        // pageControl
//       // self.pageControl.frame = CGRect()
//        self.pageControl.currentPageIndicatorTintColor = UIColor.white
//        self.pageControl.pageIndicatorTintColor = UIColor.lightGray ; self.pageControl.numberOfPages = self.pages.count
//        self.pageControl.currentPage = initialPage
//        self.view.addSubview(self.pageControl)
//
//        self.pageControl.translatesAutoresizingMaskIntoConstraints = false
//        self.pageControl.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -5).isActive = true
//        self.pageControl.widthAnchor.constraint(equalTo: self.view.widthAnchor, constant: -20).isActive = true
//        self.pageControl.heightAnchor.constraint(equalToConstant: 20).isActive = true
//        self.pageControl.centerXAnchor.constraint(equalTo: self.view.centerXAnchor).isActive = true
//    }
//
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
//
//        if let viewControllerIndex = self.pages.firstIndex(of: viewController) {
//            if viewControllerIndex == 0 {
//                // wrap to last page in array
//                return self.pages.last
//            } else {
//                // go to previous page in array
//                return self.pages[viewControllerIndex - 1]
//            }
//        }
//        return nil
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
//
//        if let viewControllerIndex = self.pages.firstIndex(of: viewController) {
//            if viewControllerIndex < self.pages.count - 1 {
//                // go to next page in array
//                return self.pages[viewControllerIndex + 1]
//            } else {
//                // wrap to first page in array
//                return self.pages.first
//            }
//        }
//        return nil
//    }
//
//    func pageViewController(_ pageViewController: UIPageViewController, didFinishAnimating finished: Bool, previousViewControllers: [UIViewController], transitionCompleted completed: Bool) {
//
//    // set the pageControl.currentPage to the index of the current viewController in pages
//        if let viewControllers = pageViewController.viewControllers {
//            if let viewControllerIndex = self.pages.firstIndex(of: viewControllers[0]) {
//                self.pageControl.currentPage = viewControllerIndex
//            }
//        }
//    }
    
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        self.window = UIWindow(frame: UIScreen.main.bounds)
//        if let window = self.window {
//            window.rootViewController = PageViewController()
//            window.makeKeyAndVisible()
//        }
//        return true
//    }
//}
//=======
////COMMENT
////comment
////Final merge
//>>>>>>> parent of b68e042 (Status Drop Down Resolved)
