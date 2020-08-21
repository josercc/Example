import UIKit
import ControllerCenter

/**
 标识符 ModuleB
 参数
    - parameter didPushModuleCBlock:(() -> Void) 点击前往ModuleC的回掉
 */
public class ModuleB: UIViewController, Module {
    public static func make(_ parameter: [String : Any]) -> Module {
        let moduleB = ModuleB()
        moduleB.didPushModuleCBlock = parameter["didPushModuleCBlock"] as? (() -> Void)
        return moduleB
    }
    
    private var didPushModuleCBlock:(() -> Void)?
    
    public static var identifier: String = "ModuleB"
    
    
    public override func viewDidLoad() {
        let pushButton = UIButton(type: .custom)
        pushButton.setTitle("前往ModuleC", for: .normal)
        pushButton.frame = CGRect(x: 0, y: 0, width: pushButton.intrinsicContentSize.width, height: pushButton.intrinsicContentSize.height)
        pushButton.addTarget(self, action: #selector(self.pushModuleC), for: .touchUpInside)
        pushButton.center = self.view.center
        self.view.addSubview(pushButton)
        self.view.backgroundColor = UIColor.green
    }
    
    @objc func pushModuleC() {
        didPushModuleCBlock?()
        let modify = ControllerCenter.make("ModuleC")
                                     .parameter("name", value: "君赏")
        modify.present(in: self, animated: true, completion: nil)
    }
    
}
