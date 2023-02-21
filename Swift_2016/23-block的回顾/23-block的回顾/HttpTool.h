//
//  HttpTool.h
//  23-block的回顾
//
//  Created by ld on 2023/2/21.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HttpTool : NSObject

- (void)loadData:(void(^)(NSString *jsonData))callBack;

@end

NS_ASSUME_NONNULL_END
