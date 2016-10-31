//
//  PersonModel.h
//  BaseModel
//
//  Created by 小飞鸟 on 16/10/29.
//  Copyright © 2016年 小飞鸟. All rights reserved.
//

#import "JZBaseModel.h"

@interface PersonModel : JZBaseModel
//名字
@property(nonatomic,copy)NSString *personName;

//性别
@property(nonatomic,copy)NSString * personSex;

//家庭
@property(nonatomic,copy)NSString *family;


@end
