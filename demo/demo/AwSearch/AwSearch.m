//
//  AwSearch.m
//  demo
//
//  Created by 裴波波 on 2018/9/14.
//  Copyright © 2018年 裴波波. All rights reserved.
//

#import "AwSearch.h"
#import "Masonry.h"

@interface AwSearch ()
@property (nonatomic, strong) UIView * viewSearchBarBackground;
@property (nonatomic, strong) UIImageView * imgSearchIcon;
@property (nonatomic, strong) UIButton * btnRight;
@property (nonatomic, strong) UITextField * txtField;
@property (nonatomic, assign) CGSize sizeIconDefault;

@end

@implementation AwSearch

-(instancetype)initWithFrame:(CGRect)frame{
    if (self = [super initWithFrame:frame]) {
        [self initUI];
    }
    return self;
}

-(void)initUI{
    
    // 默认颜色
    self.backgroundColor = [UIColor whiteColor];
    UIView * viewSearchBarBackground = [UIView new];
    viewSearchBarBackground.layer.cornerRadius = 5;
    viewSearchBarBackground.layer.masksToBounds = YES;
    self.viewSearchBarBackground = viewSearchBarBackground;
    viewSearchBarBackground.backgroundColor = [UIColor lightGrayColor];
    [self addSubview:viewSearchBarBackground];
    self.userInteractionEnabled = YES;
    viewSearchBarBackground.userInteractionEnabled = YES;
    [viewSearchBarBackground mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(self.mas_centerY);
        make.left.equalTo(self).with.offset(15);
        make.right.equalTo(self).with.offset(-60);
        make.height.equalTo(@(self.bounds.size.height - 10));
    }];
    
    UIImageView * imgSearchIcon = [[UIImageView alloc] init];
    self.imgSearchIcon = imgSearchIcon;
    imgSearchIcon.userInteractionEnabled = YES;
    [viewSearchBarBackground addSubview:imgSearchIcon];
    self.sizeIconDefault = CGSizeMake(self.bounds.size.height - 20, self.bounds.size.height - 20);
    [imgSearchIcon mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(viewSearchBarBackground.mas_centerY);
        make.left.equalTo(viewSearchBarBackground).with.offset(5);
        make.width.equalTo(@(self.sizeIconDefault.width));
        make.height.equalTo(@(self.sizeIconDefault.height));
    }];
    
    UIButton * btnRight = [UIButton new];
    [btnRight setTitle:@"取消" forState:UIControlStateNormal];
    [btnRight setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    self.btnRight = btnRight;
    [self addSubview:btnRight];
    [btnRight addTarget:self action:@selector(clickRightBtn:) forControlEvents:UIControlEventTouchUpInside];
    [btnRight mas_makeConstraints:^(MASConstraintMaker *make) {
        make.centerY.equalTo(viewSearchBarBackground.mas_centerY);
        make.right.equalTo(self).with.offset(-5);
        make.left.equalTo(viewSearchBarBackground.mas_right).with.offset(5);
        make.height.equalTo(self.mas_height);
    }];
    
    UITextField * txtField = [UITextField new];
    
    [txtField becomeFirstResponder];
    txtField.clearButtonMode = UITextFieldViewModeWhileEditing;
    self.txtField = txtField;
    txtField.returnKeyType = UIReturnKeySearch;
    [txtField addTarget:self action:@selector(textFieldDidChange:) forControlEvents:UIControlEventEditingChanged];
    [viewSearchBarBackground addSubview:txtField];
    [txtField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(imgSearchIcon.mas_right).with.offset(5);
        make.centerY.equalTo(viewSearchBarBackground.mas_centerY);
        make.right.equalTo(viewSearchBarBackground).with.offset(-5);
    }];
}

- (void)textFieldDidChange:(UITextField *)textField{
    if (textField.markedTextRange == nil && self.txtfieldEditingCallback) {
        self.txtfieldEditingCallback(textField.text);
    }
}

#pragma mark - events
-(void)clickRightBtn:(UIButton *)sender{
    
    if (self.clickRightBtnCallback) {
        self.clickRightBtnCallback();
    }
}

#pragma mark - getter & setter

-(void)setColorSearchBg:(UIColor *)colorSearchBg{
    _colorSearchBg = colorSearchBg;
    self.viewSearchBarBackground.backgroundColor = colorSearchBg;
}

-(void)setIconName:(NSString *)iconName{
    _iconName = iconName;
    self.imgSearchIcon.image = [UIImage imageNamed:iconName];
}

-(void)setPlaceHolder:(NSString *)placeHolder{
    _placeHolder = placeHolder;
    self.txtField.placeholder = placeHolder;
}

-(void)setColorPlaceholder:(UIColor *)colorPlaceholder{
    _colorPlaceholder = colorPlaceholder;
    [self.txtField setValue:colorPlaceholder forKeyPath:@"_placeholderLabel.textColor"];
}

-(void)setCusFontPlaceHolder:(CGFloat)cusFontPlaceHolder{
    _cusFontPlaceHolder = cusFontPlaceHolder;
    [self.txtField setValue:[UIFont boldSystemFontOfSize:cusFontPlaceHolder] forKeyPath:@"_placeholderLabel.font"];
}

-(void)setReturnType:(KKEYBOARDRETURNTYPE)returnType{
    _returnType = returnType;
    if (returnType == KKEYBOARDRETURNTYPE_SEARCH) {
        self.txtField.returnKeyType = UIReturnKeySearch;
    }else if (returnType == KKEYBOARDRETURNTYPE_DEFAULT){
        self.txtField.returnKeyType = UIReturnKeyDefault;
    }
}

-(void)setCusFontTxt:(CGFloat)cusFontTxt{
    _cusFontTxt = cusFontTxt;
    self.txtField.font = [UIFont systemFontOfSize:cusFontTxt];
}

-(void)setTitleBtn:(NSString *)titleBtn{
    _titleBtn = titleBtn;
    [self.btnRight setTitle:titleBtn forState:UIControlStateNormal];
}

-(void)setColorTitleBtn:(UIColor *)colorTitleBtn{
    _colorTitleBtn = colorTitleBtn;
    [self.btnRight setTitleColor:colorTitleBtn forState:UIControlStateNormal];
}

-(void)setRaidus:(float)raidus{
    _raidus = raidus;
    self.viewSearchBarBackground.layer.cornerRadius = raidus;
    self.viewSearchBarBackground.layer.masksToBounds = YES;
}

-(void)setInsetsIcon:(UIEdgeInsets)insetsIcon{
    
    _insetsIcon = insetsIcon;
    [self.imgSearchIcon mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.viewSearchBarBackground).with.offset(insetsIcon.left);
        make.centerY.equalTo(self.viewSearchBarBackground.mas_centerY);
        make.height.equalTo(@(self.sizeIconDefault.height));
        make.width.equalTo(@(self.sizeIconDefault.width));
    }];
}

-(void)setIconSize:(CGSize)iconSize{
    _iconSize = iconSize;
    [self.imgSearchIcon mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.width.equalTo(@(iconSize.width));
        make.height.equalTo(@(iconSize.height));
        make.centerY.equalTo(self.viewSearchBarBackground.mas_centerY);
        make.left.equalTo(self.viewSearchBarBackground).with.offset(5);
    }];
}

-(void)setInsetsSearchBg:(UIEdgeInsets)insetsSearchBg{
    _insetsSearchBg = insetsSearchBg;
    [self.viewSearchBarBackground mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self).with.offset(insetsSearchBg.left);
        make.top.equalTo(self).with.offset(insetsSearchBg.top);
        make.right.equalTo(self).with.offset(-insetsSearchBg.right);
        make.bottom.equalTo(self).with.offset(-insetsSearchBg.bottom);
    }];
}

-(void)setInsetsTxtfield:(UIEdgeInsets)insetsTxtfield{
    _insetsTxtfield = insetsTxtfield;
    [self.txtField mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.imgSearchIcon.mas_right).with.offset(insetsTxtfield.left);
        make.top.equalTo(self.viewSearchBarBackground).with.offset(insetsTxtfield.top);
        make.right.equalTo(self.viewSearchBarBackground).with.offset(-insetsTxtfield.right);
        make.bottom.equalTo(self.viewSearchBarBackground).with.offset(-insetsTxtfield.bottom);
    }];
}

-(void)setColorTxtInput:(UIColor *)colorTxtInput{
    _colorTxtInput = colorTxtInput;
    self.txtField.textColor = colorTxtInput;
}

-(void)setColorBtnBg:(UIColor *)colorBtnBg{
    _colorBtnBg = colorBtnBg;
    [self.btnRight setBackgroundColor:colorBtnBg];
}

-(void)setImgBtn:(NSString *)imgBtn{
    _imgBtn = imgBtn;
    [self.btnRight setImage:[UIImage imageNamed:imgBtn] forState:UIControlStateNormal];
}

- (void)setIsShowRightBtn:(BOOL)isShowRightBtn {
    _isShowRightBtn = isShowRightBtn;
    self.btnRight.hidden = !isShowRightBtn;
}

- (void)setImgBtnBg:(NSString *)imgBtnBg{
    _imgBtnBg = imgBtnBg;
    [self.btnRight setBackgroundImage:[UIImage imageNamed:imgBtnBg] forState:UIControlStateNormal];
}

- (void)setFontBtn:(CGFloat)fontBtn{
    _fontBtn = fontBtn;
    self.btnRight.titleLabel.font = [UIFont systemFontOfSize:fontBtn];
}

-(void)setInsetsBtn:(UIEdgeInsets)insetsBtn{
    _insetsBtn = insetsBtn;
    [self.btnRight mas_remakeConstraints:^(MASConstraintMaker *make) {
        make.left.equalTo(self.viewSearchBarBackground.mas_right).with.offset(insetsBtn.left);
        make.right.equalTo(self).with.offset(-insetsBtn.right);
        make.top.equalTo(self).with.offset(insetsBtn.top);
        make.bottom.equalTo(self).with.offset(-insetsBtn.bottom);
    }];
}

@end

