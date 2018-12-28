//
//  ViewController.m
//  MasonryChain
//
//  Created by Gustin Lau on 2018/12/28.
//  Copyright © 2018 GustinLau. All rights reserved.
//

#import "ViewController.h"
#import "MASConstraintMaker+XsChain.h"
#import "View+MASAdditions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *view1 = [[UIView alloc] init];
    view1.backgroundColor = [UIColor redColor];

    UIView *view2 = [[UIView alloc] init];
    view2.backgroundColor = [UIColor greenColor];

    [self.view addSubview:view1];
    [self.view addSubview:view2];

    [view1 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.xs_sizeEqualTo(CGSizeMake(200, 100))
                .xs_topEqualTo(self.view, 100)
                .xs_centerXEqualTo(self.view);
    }];
    [view2 mas_makeConstraints:^(MASConstraintMaker *make) {
        make.xs_sizeEqualTo(view1)
                .xs_topEqualTo(view1.mas_bottom)
                .xs_centerXEqualTo(self.view);
    }];

    // Do any additional setup after loading the view, typically from a nib.
}


@end
