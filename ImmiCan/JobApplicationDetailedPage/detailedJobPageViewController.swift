//
//  detailedJobPage.swift
//  ImmiCan
//
//  Created by Saijal Arora  on 2023-03-30.
//


import Foundation
import UIKit

class detailedJobPageViewController : UIViewController{
    
   
//    var details : JobPage?
//    var details2 : JobSpecifications?
    var details : SingleJobPage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()
        
    }
    
    //company logo
    lazy var companyLogo: UIImageView = {
        let  logo = UIImageView()
        logo.translatesAutoresizingMaskIntoConstraints = false
        logo.heightAnchor.constraint(equalToConstant: 81).isActive = true
        logo.widthAnchor.constraint(equalToConstant: 84).isActive = true
        logo.image = details?.companyLogo
        return logo
    }()
    
    //companyName create label
    lazy var companyNameLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto",size: 21.0)
        title.text = details?.companyName
        title.font = UIFont.boldSystemFont(ofSize: 21.0)
        title.widthAnchor.constraint(equalToConstant: 180).isActive = true
        title.numberOfLines = .max
        title.sizeToFit()
        
        return title
    }()
    
    //job title label
    
    lazy var jobTitleLabel: UILabel = {
        let title = UILabel()
        title.translatesAutoresizingMaskIntoConstraints = false
        title.font = UIFont(name: "Roboto", size: 20)
        title.font = UIFont.boldSystemFont(ofSize: 20.0)
        title.text = details?.jobTitle
        title.widthAnchor.constraint(equalToConstant: 214).isActive = true
        title.numberOfLines = .max
        title.sizeToFit()
        return title
    }()
    
    //Employment Type Label
    lazy var employmentTypeLabel: UILabel = {
        let type = UILabel()
        type.translatesAutoresizingMaskIntoConstraints = false
        type.font = UIFont(name: "Roboto", size: 16)
        type.textColor = UIColor.lightGray
        type.text = details?.employmentType
        type.font = UIFont.boldSystemFont(ofSize: 16.0)
        return type
    }()
    
    //Employment Type Label
    lazy var employmentType1Label: UILabel = {
        let type1 = UILabel()
        type1.translatesAutoresizingMaskIntoConstraints = false
        type1.font = UIFont(name: "Roboto", size: 16)
        type1.textColor = UIColor.lightGray
        type1.text = details?.employmentType2
        type1.font = UIFont.boldSystemFont(ofSize: 16.0)
        return type1
    }()
    
    //stack of companyname and Job title
    
    lazy var companyAndJobName : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(companyNameLabel)
        stack.addArrangedSubview(jobTitleLabel)
        stack.alignment = .leading
        stack.sizeToFit()
        return stack
    
    }()
       
        
//stack of employment type
    
    lazy var employmentTypes : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 10
        stack.addArrangedSubview(employmentTypeLabel)
        stack.addArrangedSubview(employmentType1Label)
        stack.alignment = .leading
        return stack
        
    }()
    //combined stack of companyname, job title and employment types
    lazy var labelsStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 15
        stack.addArrangedSubview(companyAndJobName)
        stack.addArrangedSubview(employmentTypes)
        stack.alignment = .leading
        return stack
        
    }()
    
    //full top stack with company logo
    lazy var topStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 59
        stack.addArrangedSubview(labelsStack)
        stack.addArrangedSubview(companyLogo)
        stack.alignment = .leading
        stack.distribution = .equalSpacing
        return stack
        
    }()
    
    //salary label
    
    lazy var salaryLabel: UILabel = {
        let salary = UILabel()
        salary.translatesAutoresizingMaskIntoConstraints = false
        salary.font = UIFont(name: "Roboto", size: 2)
        salary.textColor = UIColor.lightGray
        salary.text = "Salary"
        return salary
    }()
    
    //salary value label
    
    lazy var salaryValue: UILabel = {
        let value = UILabel()
        value.translatesAutoresizingMaskIntoConstraints = false
        value.font = UIFont(name: "Roboto", size: 2)
        value.textColor = UIColor.black
        value.text = details?.salary
        return value
    }()
    
    //salary stack
    
    lazy var salaryStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(salaryLabel)
        stack.addArrangedSubview(salaryValue)
        stack.alignment = .leading
        return stack
        
    }()
    
    //Applicants label
    
    lazy var applicationLabel: UILabel = {
        let application = UILabel()
        application.translatesAutoresizingMaskIntoConstraints = false
        application.font = UIFont(name: "Roboto", size: 2)
        application.textColor = UIColor.lightGray
        application.text = "Applicants"
        return application
    }()
    
    //Application number value label
    
    lazy var applicationNumber : UILabel = {
        let number = UILabel()
        number.translatesAutoresizingMaskIntoConstraints = false
   
        number.font = UIFont(name: "Roboto", size: 2)
        number.textColor = UIColor.black
        number.text = details?.applicationNumber
        return number
    }()
    
    //application number  stack
    
    lazy var applicationStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(applicationLabel)
        stack.addArrangedSubview(applicationNumber)
        stack.alignment = .center
        return stack
        
    }()

    
    
    //Date label
    
    lazy var dateLabel : UILabel = {
        let date = UILabel()
        date.translatesAutoresizingMaskIntoConstraints = false
        date.widthAnchor.constraint(equalToConstant: 82).isActive = true
        date.font = UIFont(name: "Roboto", size: 2)
        date.textColor = UIColor.lightGray
        date.textAlignment = .right
        date.text = "Date"
        return date
    }()
    
    //Expiry Date value label
    
    lazy var dateValueNumber : UILabel = {
        let number = UILabel()
        number.translatesAutoresizingMaskIntoConstraints = false
        number.font = UIFont(name: "Roboto", size: 2)
        number.textColor = UIColor.black
        number.text = details?.expiryDate
        return number
    }()
    
    //Expiry Date  stack
    
    lazy var dateStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.widthAnchor.constraint(equalToConstant: 109).isActive = true
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(dateLabel)
        stack.addArrangedSubview(dateValueNumber)
        stack.alignment = .trailing
        return stack
        
    }()
    
    
    //middle stack of salary, application and expiry date
    lazy var firstMiddleStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 60
        stack.addArrangedSubview(salaryStack)
        stack.addArrangedSubview(applicationStack)
        stack.alignment = .leading
        stack.distribution = .equalSpacing
        return stack
        
    }()
    
    lazy var fullMiddleStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 45
        stack.addArrangedSubview(firstMiddleStack)
        stack.addArrangedSubview(dateStack)
       // stack.addArrangedSubview(dateStack)
        stack.alignment = .leading
        stack.distribution = .equalSpacing
        return stack
        
    }()
    
    //Job  discription heading Label
    
    lazy var jobLabel : UILabel = {
        let job = UILabel()
        job.translatesAutoresizingMaskIntoConstraints = false
        job.font = UIFont(name: "Roboto", size: 20)
        job.textColor = UIColor.lightGray
        job.text = "Job Discription"
        return job
    }()
    
    
    
    lazy var jobdiscription : UILabel = {
        let discription = UILabel()
        discription.translatesAutoresizingMaskIntoConstraints = false
        discription.widthAnchor.constraint(equalToConstant: 344).isActive = true
        discription.font = UIFont(name: "Roboto", size: 20)
        discription.textColor = UIColor.black
        discription.numberOfLines = .max
        discription.text = details?.discription
        return discription
    }()
    
    //job stack
    
    lazy var jobStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 10
        stack.addArrangedSubview(jobLabel)
        stack.addArrangedSubview(jobdiscription)
        stack.alignment = .leading
        return stack
        
    }()
    
    // resposnibilities label
    lazy var label : UILabel = {
        let job = UILabel()
        job.translatesAutoresizingMaskIntoConstraints = false
//        job.heightAnchor.constraint(equalToConstant: 25).isActive = true
//        job.widthAnchor.constraint(equalToConstant: 160).isActive = true
        job.font = UIFont(name: "Roboto", size: 20)
        job.textColor = UIColor.lightGray
        job.text = "Responsibilities"
        return job
    }()


    
    lazy var responsibilityLabel : UILabel = {
        let jobResponsibility = UILabel()
        jobResponsibility.translatesAutoresizingMaskIntoConstraints = false
        jobResponsibility.widthAnchor.constraint(equalToConstant: 338).isActive = true
        jobResponsibility.font = UIFont(name: "Roboto", size: 20)
        jobResponsibility.text = details?.responsibility
        jobResponsibility.numberOfLines = .max
        return jobResponsibility
    }()
    

    
    
    
    
    lazy var  bottomStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 5
        stack.addArrangedSubview(label)
        stack.addArrangedSubview(responsibilityLabel)
        stack.alignment = .leading
        return stack
        
    }()
    
    lazy var  applyButton : UIButton = {
        let  button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Apply", for: .normal)
        button.setTitleColor(UIColor.black, for: UIControl.State.normal)
        button.addTarget(self, action:#selector(self.imageButtonTapped(_:)), for: .touchUpInside)
        button.layer.backgroundColor = UIColor(red: 1, green: 1, blue: 1, alpha: 1).cgColor
        button.heightAnchor.constraint(equalToConstant: 47).isActive = true
        button.widthAnchor.constraint(equalToConstant: 341).isActive = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 15)
        button.titleLabel?.textAlignment = .center
        button.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        button.layer.shadowOffset = CGSize(width: 0.0, height: 4.0)
        button.layer.shadowOpacity = 1
        button.layer.cornerRadius = 29
        return button
    }()

    lazy var  fullStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 40
        stack.addArrangedSubview(topStack)
        stack.addArrangedSubview(fullMiddleStack)
        stack.alignment = .leading
        return stack
        
    }()
    
    lazy var  fullStack1 : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 20
        stack.addArrangedSubview(jobStack)
        stack.addArrangedSubview(bottomStack)
        stack.addArrangedSubview(applyButton)
        stack.alignment = .center
        return stack
        
    }()
    
    
    
    lazy var  completeStack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 50
        stack.addArrangedSubview(fullStack)
        stack.addArrangedSubview(fullStack1)
       // stack.addArrangedSubview(applyButton)
        stack.alignment = .leading
        return stack
        
    }()
    
   
    @objc func imageButtonTapped(_ sender:UIButton!){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "updateddetailView") as! ApplyingToJobViewElements
        self.navigationController?.pushViewController(vc, animated: true)
        print("My image button tapped")
        
        let jobApplication = JobApplicationStructure(jobTitle: jobTitleLabel.text ?? "Default Application")
        vc.details = jobApplication
    }
    
    
    
    
    
    private let scrollView: UIScrollView = {
    let view = UIScrollView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()
    
    private let scrollStackViewContainer: UIStackView = {
    let view = UIStackView()
    view.translatesAutoresizingMaskIntoConstraints = false
    return view
    }()

    private func setupScrollView() {
        let margins = view.layoutMarginsGuide
        view.addSubview(scrollView)
        scrollView.addSubview(scrollStackViewContainer)
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor,constant: 30).isActive = true
        scrollView.topAnchor.constraint(equalTo: margins.topAnchor,constant: 30).isActive = true
   scrollView.bottomAnchor.constraint(equalTo: margins.bottomAnchor, constant: -1).isActive = true
        scrollStackViewContainer.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        scrollStackViewContainer.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        scrollStackViewContainer.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        scrollStackViewContainer.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -8).isActive = true
        scrollStackViewContainer.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        configureContainerView()
        }
    
        private func configureContainerView() {
        scrollStackViewContainer.addArrangedSubview(completeStack)
    
        }
    }

    

