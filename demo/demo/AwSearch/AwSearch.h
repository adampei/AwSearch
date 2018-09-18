//
//  AwSearch.h
//  demo
//
//  Created by 裴波波 on 2018/9/14.
//  Copyright © 2018年 裴波波. All rights reserved.
//
/*
 * 搜索控件
 * 依赖masonry
 */

#import <UIKit/UIKit.h>

/// 键盘返回按钮
typedef NS_ENUM(NSUInteger, KKEYBOARDRETURNTYPE) {
    /// 默认样式
    KKEYBOARDRETURNTYPE_DEFAULT,
    /// 返回按钮是'搜索'
    KKEYBOARDRETURNTYPE_SEARCH,
};

@interface AwSearch : UIView

/// 键盘返回按钮样式
@property (nonatomic, assign) KKEYBOARDRETURNTYPE returnType;
/// 搜索框背景色
@property (nonatomic, strong) UIColor *colorSearchBg;
/// 搜索框背景圆角大小
@property (nonatomic, assign) float raidus;
/// 背景insets
@property (nonatomic, assign) UIEdgeInsets insetsSearchBg;

/// icon
@property (nonatomic, copy) NSString *iconName;
/// icon 边距 left 可用
@property (nonatomic, assign) UIEdgeInsets insetsIcon;
/// icon 的size
@property (nonatomic, assign) CGSize iconSize;

/// txtfield字体大小
@property (nonatomic, assign) CGFloat cusFontTxt;
/// textfield的边距 上下左(距离icon)右可用
@property (nonatomic, assign) UIEdgeInsets insetsTxtfield;
/// textfield字体颜色
@property (nonatomic, strong) UIColor *colorTxtInput;
/// placeholder
@property (nonatomic, copy) NSString *placeHolder;
/// placehodler 颜色
@property (nonatomic, strong) UIColor *colorPlaceholder;
/// placeholder 字体大小
@property (nonatomic, assign) CGFloat cusFontPlaceHolder;
/// 是否作为键盘第一响应者,默认是
@property (nonatomic, assign) BOOL isFirstResponser;

/// 按钮标题
@property (nonatomic, copy) NSString *titleBtn;
/// 按钮标题颜色
@property (nonatomic, strong) UIColor *colorTitleBtn;
/// 右侧按钮边距
@property (nonatomic, assign) UIEdgeInsets insetsBtn;
/// 按钮背景色
@property (nonatomic, strong) UIColor *colorBtnBg;
/// 设置按钮背景图
@property (nonatomic, copy) NSString *imgBtnBg;
/// 设置按钮图片
@property (nonatomic, copy) NSString *imgBtn;
/// 设置按钮字体大小
@property (nonatomic, assign) CGFloat fontBtn;
/// 是否显示右侧btn
@property (nonatomic, assign) BOOL isShowRightBtn;

#pragma mark - events
/// 键盘隐藏事件
@property (nonatomic, copy) void(^keyboardHideCallback)(void);
/// 键盘唤起事件
@property (nonatomic, copy) void(^touchSearchTextCallabck)(void);
/// 键盘上点击搜索事件
@property (nonatomic, copy) void(^clickSearchCallback)(NSString *keyword);
/// txtfield编辑回调
@property (nonatomic, copy) void(^txtfieldEditingCallback)(NSString *text);
/// 右侧按钮点击事件回调
@property (nonatomic, copy) void(^clickRightBtnCallback)(void);


@end

