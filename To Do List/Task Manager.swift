
import UIKit

var taskMgr:Task_Manager = Task_Manager()

struct task{
    var name = "Un-Named"
    var desc = "Un-Described "
    
}

class Task_Manager: NSObject {
    
    var tasks = [task]()
    
    func addTaks(name: String, desc: String){
        tasks.append(task(name: name,desc: desc))
    }

}
