//
//  ViewController.m
//  23-block的回顾
//
//  Created by ld on 2023/2/21.
//

#import "ViewController.h"
#import "HttpTool.h"
@interface ViewController ()

@property (nonatomic,strong) HttpTool *tools;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tools = [[HttpTool alloc] init];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    /*
     __weak修饰的弱引用,如果指向的对象销毁,那么指针会立马指向nil(0x0)
     __unsafe_unretained修饰的弱引用,如果指向的对象销毁,那么指针依然指向之前的内存地址,很容易产生'野指针'/'僵尸对象'
     */
    
    __weak ViewController *weakSelf = self;
    [self.tools loadData:^(NSString * _Nonnull jsonData) {
         NSLog(@"在ViewController拿到数据:%@", jsonData);
        weakSelf.view.backgroundColor = [UIColor redColor];
    }];
}

- (void)dealloc {
    NSLog(@"ViewController -- dealloc");
}

@end
