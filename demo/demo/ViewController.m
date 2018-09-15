//
//  ViewController.m
//  demo
//
//  Created by 裴波波 on 2018/9/14.
//  Copyright © 2018年 裴波波. All rights reserved.
//

#import "ViewController.h"
#import "AwSearch.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    AwSearch * searchView = [[AwSearch alloc] initWithFrame:CGRectMake(0, 100, [UIScreen mainScreen].bounds.size.width, 55)];
    searchView.iconName = @"icon_search";
    searchView.iconSize = CGSizeMake(18, 18);
    searchView.fontBtn = 10;
    
    [searchView setClickSearchCallback:^(NSString *keyword) {
        NSLog(@"点击键盘搜索: %@",keyword);
    }];
    
    [searchView setClickRightBtnCallback:^{
        NSLog(@"点击了取消");
    }];
    
    [searchView setTxtfieldEditingCallback:^(NSString *text) {
        NSLog(@"输入的内容: %@", text);
    }];
    
    [self.view addSubview:searchView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
