//
//  LXComponentAModel.swift
//  LXComponentA
//
//  Created by asdc on 2021/1/22.
//

import UIKit
import Tiercel

public class LXComponentAModel: NSObject {
    // 此时的 public 是为了外部能使用
    public static let testString = "这是一个测试字符串"
    
    // 三方库的方法测试
    public func download(model: LXComponentAModel) -> DownloadTask? {
        var configuration = SessionConfiguration()
        configuration.allowsCellularAccess = true
        let sessionManager = SessionManager("default", configuration: configuration)
        
        // 创建下载任务并且开启下载，同时返回可选类型的DownloadTask实例，如果url无效，则返回nil
        let task = sessionManager.download("http://dldir1.qq.com/qqfile/QQforMac/QQ_V4.2.4.dmg")
        
        return task
    }
}
