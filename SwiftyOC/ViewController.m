//
//  ViewController.m
//  SwiftyOC
//
//  Created by kemchenj on 21/06/2017.
//  Copyright © 2017 kemchenj. All rights reserved.
//

#import "ViewController.h"
#import "FastEnumeration.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

        // 变量直接 var 出来，不用再写 emptyViewArray 的类型
    var emptyViewArray = [[NSMutableArray alloc] init];

    var subviews = self.view.subviews;

        // foreach 直接循环，不用声明 view 的类型
    foreach(view, subviews) {
        [emptyViewArray addObject:view];
    }

    NSLog(@"%@", emptyViewArray);

        // 类型安全，可以自动补全的 keypath
    [emptyViewArray addObserver:self
                     forKeyPath:KEYPATH(emptyViewArray, count)
                        options:NSKeyValueObservingOptionNew
                        context:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
