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
    
    self.view.backgroundColor = [UIColor cyanColor];
    
    AwSearch * searchView = [[AwSearch alloc] initWithFrame:CGRectMake(0, 100, self.view.bounds.size.width, 55)];
    searchView.isFirstResponser = NO;
    // 是否展示右侧btn
//    searchView.isShowRightBtn = NO;
    // 设置icon
    // 图片
    searchView.iconName = @"icon_search"; //search_icon_white search_icon
    // icon大小
    searchView.iconSize = CGSizeMake(18, 18);
    // icon 位置
    //    searchView.insetsIcon = UIEdgeInsetsMake(0, 30, 0, 0);
    
    // 设置placehodler
    searchView.placeHolder = @"请输入要搜索的内容";
    /// placeholder 颜色
    //    searchView.colorPlaceholder = [UIColor yellowColor];
    /// placeholder 字体大小
    searchView.cusFontPlaceHolder = 20;
    
    //设置搜索框背景色
    //    searchView.colorSearchBg = [UIColor orangeColor];
    /// 圆角
    //    searchView.raidus = 10;
    /// 设置灰色背景边距
    //    searchView.insetsSearchBg = UIEdgeInsetsMake(0, 0, 0, 0);
    
    /// 设置txtfield边距 左侧距离icon 其他距离灰色背景
    //    searchView.insetsTxtfield = UIEdgeInsetsMake(10, 10, 20, 50);
    // textfield 字体大小
    //    searchView.cusFontTxt = 20;
    // textfield 字体颜色
    //    searchView.colorTxtInput = [UIColor redColor];
    
    /// 按钮设置
    // 标题
    searchView.titleBtn = @"确定";
    /// 颜色
    //    searchView.colorTitleBtn = [UIColor redColor];
    
    /// 按钮图片
    //    searchView.imgBtn = @"search_icon_white";
    /// 按钮背景图片
    //    searchView.imgBtnBg = @"search_icon";
    /// 按钮背景色
//    searchView.colorBtnBg = [UIColor redColor];
    /// 按钮边距
//    searchView.insetsBtn = UIEdgeInsetsMake(5, 10, 10, 20);
    
    [self.view addSubview:searchView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
