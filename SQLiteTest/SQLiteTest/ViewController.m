//
//  ViewController.m
//  SQLiteTest
//
//  Created by Tongling on 14/11/5.
//  Copyright (c) 2014年 hanker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self createUIForView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - method for UI
- (void)createUIForView{
    UIButton *insertBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [insertBtn setTitle:@"添加" forState:UIControlStateNormal];
    [insertBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [insertBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    insertBtn.frame = CGRectMake(10, 64, 80, 30);
    [insertBtn addTarget:self action:@selector(actionForInsertBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:insertBtn];
    
    UIButton *delBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [delBtn setTitle:@"删除" forState:UIControlStateNormal];
    [delBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [delBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    delBtn.frame = CGRectMake(100, 64, 80, 30);
    [delBtn addTarget:self action:@selector(actionForDelBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:delBtn];
    
    UIButton *selectBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [selectBtn setTitle:@"查询" forState:UIControlStateNormal];
    [selectBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [selectBtn setTitleColor:[UIColor lightGrayColor] forState:UIControlStateHighlighted];
    selectBtn.frame = CGRectMake(190, 64, 80, 30);
    [selectBtn addTarget:self action:@selector(actionForSelectBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:selectBtn];
}

#pragma mark - action for btn
- (IBAction)actionForInsertBtn:(id)sender{
        NSLog(@"%s",__func__);
}

- (IBAction)actionForDelBtn:(id)sender{
        NSLog(@"%s",__func__);
}

- (IBAction)actionForSelectBtn:(id)sender{
        NSLog(@"%s",__func__);
}

@end
