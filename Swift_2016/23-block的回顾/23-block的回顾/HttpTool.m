//
//  HttpTool.m
//  23-block的回顾
//
//  Created by ld on 2023/2/21.
//

#import "HttpTool.h"

@interface HttpTool ()

@property (nonatomic, copy) void(^CallBack)(NSString *name);
@end


@implementation HttpTool

- (void)loadData:(void (^)(NSString * _Nonnull))callBack {
    
    self.CallBack = callBack;
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        NSLog(@"发送网络请求:%@",[NSThread currentThread]);
        dispatch_sync(dispatch_get_main_queue(), ^{
            NSLog(@"拿到数据,并且进行回调:%@",[NSThread currentThread]);
            callBack(@"json数据");
        });
    });
}

@end
