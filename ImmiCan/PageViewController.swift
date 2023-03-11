//
//  PageViewController.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-02-06.
//


import UIKit

class PageViewController: UIPageViewController, UIPageViewControllerDataSource, UIPageViewControllerDelegate {
    
    var pages = [UIViewController]()
    
    
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

//COMMENT
//comment
//Final merge
