//
//  ViewController.m
//  GraphCodeView-demo
//
//  Created by xjw on 16/4/11.
//  Copyright © 2016年 xjw. All rights reserved.
//

#import "ViewController.h"
#import "GraphCodeView.h"//图形验证码
#import "NSString+random.h"
@interface ViewController ()
<GraphCodeViewDelegate>
@property (weak, nonatomic) IBOutlet GraphCodeView *graphCodeView;
@property (weak, nonatomic) IBOutlet UITextField *codeTextField;
@property (weak, nonatomic) IBOutlet UILabel *verifyLabel;

@property(nonatomic,copy)NSString * str;
@end

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
 _str =[NSString randomStringWithLength:4];
    [_graphCodeView setCodeStr:_str];//设置验证码
    [_graphCodeView setDelegate:self];
//    [self.view addSubview:self.graphCodeView];
}

//图形验证码
- (GraphCodeView *)graphCodeView{
    if (!_graphCodeView) {
        
    
    }
    return _graphCodeView;
}
- (IBAction)getCode:(id)sender {
    _str =[NSString randomStringWithLength:4];
       [_graphCodeView setCodeStr:_str];
    [_graphCodeView setNeedsDisplay];
}
- (IBAction)ensureBtnClick:(id)sender {
    
//    不区分大小写
    BOOL result = [_str compare:_codeTextField.text
                             options:NSCaseInsensitiveSearch |NSNumericSearch] == NSOrderedSame;
    // 区分大小写
 //   BOOL result2 = [_str isEqualToString:_codeTextField.text];
    if (result) {
        
       _verifyLabel.text = @"验证成功";
        
        
    }
    
}

#pragma mark - GraphCodeView delegate
- (void)didTapGraphCodeView:(GraphCodeView *)graphCodeView{

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
