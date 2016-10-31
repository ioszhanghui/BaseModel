//
//  ViewController.m
//  BaseModel
//
//  Created by 小飞鸟 on 16/10/29.
//  Copyright © 2016年 小飞鸟. All rights reserved.
//

#import "ViewController.h"
#import "PersonModel.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    PersonModel * model =[PersonModel modelWithDictionary:@{@"personName":@"<null>",@"personSex":@"男",@"familyNum":@"10"}];
    
    
    NSLog(@"%@~~~性别**%@~~~%@",model.personName,model.personSex,model.family);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
