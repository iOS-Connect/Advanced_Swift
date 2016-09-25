import UIKit

public class MainVC : UIViewController {
    override public func loadView() {
        let v = UIView(frame: UIScreen.main.bounds)
        v.backgroundColor = .white
        view = v
    }
    override public func viewDidLoad() {
        let button = UIButton(type: .system)
        button.addTarget(self,
                         action: #selector(MainVC.buttonClicked(sender:)), for: .touchUpInside)
        button.setTitle("Click Me", for: .normal)
        view.addSubview(button)
        button.frame = CGRect(origin: CGPoint(x: 0, y:0), size: button.intrinsicContentSize)
    }

    func buttonClicked(sender: UIButton) {
        let vc = TableVC(style: .plain)
        present(vc, animated: true, completion: nil)
    }
}

public class TableVC: UITableViewController {
    let data = ["john", "jay", "ralph"]

    override public func viewDidLoad() {
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    override public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    override public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    override public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        dismiss(animated: true, completion: nil)
    }
}
