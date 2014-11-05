//
//  ViewController.m
    //  FontFamliy
//
//  Created by Tongling on 14/11/4.
//  Copyright (c) 2014年 统领得一网络科技（上海）有限公司. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    NSArray *fontsFamliy;
    NSArray *fontsName;
    UITableView *tableViewUI;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self enumerateFonts];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) enumerateFonts {
    fontsFamliy = [UIFont familyNames];
    for (NSString *familyName in [UIFont familyNames]) {
        NSLog(@"Font Family = %@", familyName);
        for (NSString *fontName in [UIFont fontNamesForFamilyName:familyName]){ NSLog(@"\t%@", fontName);
        }
    }
}

#pragma mark - table view delegate
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return fontsFamliy.count;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    NSString *familyName = fontsFamliy[section];
    return [UIFont fontNamesForFamilyName:familyName].count;
}

#pragma mark - table view data delegate
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    static NSString *tableViewCellIdentify = @"fontCell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:tableViewCellIdentify];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:tableViewCellIdentify];
    }
    NSString *familyName = fontsFamliy[indexPath.section];
    NSString *fontName = [UIFont fontNamesForFamilyName:familyName][indexPath.row];
    cell.textLabel.text = fontName;
    cell.textLabel.font = [UIFont fontWithName:fontName size:12.0f];
    
    return cell;
}

@end
