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

    var emptyViewArray = [[NSMutableArray alloc] init];

    var subviews = self.view.subviews;

    foreach(view, subviews) {
        [emptyViewArray addObject:view];
    }

    NSLog(@"%@", emptyViewArray);
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
