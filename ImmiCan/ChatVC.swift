//
//  ChatVC.swift
//  ImmiCan
//
//  Created by Shubhdeep on 2023-04-21.
//

import Foundation
import UIKit

class ChatVC: UIViewController {
    
    private let tableView = UITableView()
    private let textField = UITextField()
    private let sendButton = UIButton()
    
    private var messages = [Message]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sendButton.addTarget(self, action: #selector(sendButtonTapped(_ :)), for: .touchUpInside)
        
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
                    tableView.topAnchor.constraint(equalTo: view.topAnchor),
                    tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                    tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                    tableView.bottomAnchor.constraint(equalTo: textField.topAnchor)
                ])
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.borderStyle = .roundedRect
        view.addSubview(textField)
        
        NSLayoutConstraint.activate([
        
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8),
            textField.trailingAnchor.constraint(equalTo: sendButton.trailingAnchor, constant: -8),
            textField.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8)
        ])
        
        sendButton.translatesAutoresizingMaskIntoConstraints  = false
        sendButton.setTitle("Send", for: .normal)
        sendButton.backgroundColor = .systemBlue
        view.addSubview(sendButton)
        
        NSLayoutConstraint.activate([
        
            sendButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -8),
            sendButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            sendButton.widthAnchor.constraint(equalToConstant: 80),
            sendButton.heightAnchor.constraint(equalTo: textField.heightAnchor)
            
        ])
    
    }
    
}

extension ChatVC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MessageCell", for: indexPath) as! MessageCell
        let message = messages[indexPath.row]
       // cell.configure(with: message)
        return cell
        
     
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        let message = messages[indexPath.row]
               let size = CGSize(width: tableView.bounds.width - 16, height: .infinity)
               let options = NSStringDrawingOptions.usesFontLeading.union(.usesLineFragmentOrigin)
               let estimatedSize = NSString(string: message.text).boundingRect(with: size, options: options, attributes: [.font: UIFont.systemFont(ofSize: 18)], context: nil)
               return estimatedSize.height + 20
    }
    
    @objc func sendButtonTapped(_ sender: UIButton) {
        guard let text = textField.text, !text.isEmpty else { return }
        let message = Message(text: text, sender: "User")
        messages.append(message)
        textField.text = ""
        tableView.reloadData()
    }
    
}

extension ChatVC: UITableViewDataSource {
    
        
}




class MessageCell: UITableViewCell {
    
    private let messageLabel = UILabel()
 
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
}
