//
//  ViewController.m
//  HitTestDemo
//
//  Created by 岳云石 on 2018/9/5.
//  Copyright © 2018年 岳云石. All rights reserved.
//

#import "ViewController.h"
#import "UIButton+HitTestExtensions.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *hitTestXibBtn;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = CGRectMake(100, 100, 80, 80);
    button.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:button];
    button.hitTestEdgeInsets = UIEdgeInsetsMake(20, 20, 20, 20);
    [button addTarget:self action:@selector(hitTestXibBtnAction:) forControlEvents:UIControlEventTouchUpInside];
    _hitTestXibBtn.hitTestEdgeInsets = UIEdgeInsetsMake(-20, -20, -20, -20);
}

- (IBAction)hitTestXibBtnAction:(id)sender {
    if (sender == _hitTestXibBtn) {
        NSLog(@"hitTestXibBtn click");
    }else{
        NSLog(@"clickclickclick");
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
