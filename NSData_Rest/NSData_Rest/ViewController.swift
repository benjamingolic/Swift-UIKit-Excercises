import UIKit

class ViewController: UIViewController {
  var model = Model()
  let queue = DispatchQueue(label: "background")
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
    //loadData()
    demo()
  }
  
  func demo() {
    queue.async {
      self.loadData()
    }
  }
  
  func loadData() {
    if let url = URL(string: "https://jsonplaceholder.typicode.com/posts") {
      if let data = try? Data(contentsOf: url) {
        parse(data: data)
      }
    }
  }
  
  func parse(data: Data!) {
    let model = Model()
    if let array = try? JSONSerialization.jsonObject(with: data, options: []) as? [ Any ] {
      for obj in array {
        if let jsonObject = obj as? [String: Any] {
          let post = Post()
          post.id = jsonObject["id"] as! Int
          post.userId = jsonObject["userId"] as! Int
          post.title = jsonObject["title"] as! String
          post.body = jsonObject["body"] as! String
          model.posts.append(post)
        }
      }
      DispatchQueue.main.async {
        self.model = model
        print("model fertig \(model)")
      }
    }
  }
  @IBAction func onClickShowTable(_ sender: Any) {
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    let tableViewController = segue.destination as! TableViewController
    tableViewController.model = self.model
  }
}
