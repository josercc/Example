import UIKit
import ControllerCenter

public class ModuleC: UIViewController,Module {
    public static func make(_ parameter: [String : Any]) -> Module {
        let moduleC = ModuleC(name: parameter["name"] as? String)
        return moduleC
    }
    
    public static var identifier: String = "ModuleC"
    private let name:String?
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel(frame: .zero)
        label.text = "我的名字叫做:\(self.name ?? "默认名称")"
        label.frame = CGRect(x: 0, y: 0, width: label.intrinsicContentSize.width, height: label.intrinsicContentSize.height)
        label.center = self.view.center
        self.view.backgroundColor = UIColor.yellow
        self.view.addSubview(label)
    }
    
    init(name:String?) {
        self.name = name
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
