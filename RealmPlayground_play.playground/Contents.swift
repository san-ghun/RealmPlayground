//: A UIKit based Playground for presenting user interface

//reference from https://learnappmaking.com/cocoapods-playground-how-to/

/*
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black

        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
*/

import RealmSwift

class Bookmark: Object{
    @objc dynamic var url: String = ""
    @objc dynamic var title: String = ""
    @objc dynamic var desc: String = ""
    @objc dynamic var createDate: Date = Date.init()
    @objc dynamic var image: Data = Data()
    @objc dynamic var character: Character?
    @objc dynamic var isTemp: Bool = true
    
    let tags: List<Tag> = List<Tag>()
}

class Character: Object {
    @objc dynamic var character: String = ""
}

class Tag: Object {
    @objc dynamic var tag: String = ""
    @objc dynamic var character: Character?
}


