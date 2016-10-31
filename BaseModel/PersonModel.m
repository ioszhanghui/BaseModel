//
//  PersonModel.m
//  BaseModel
//
//  Created by 小飞鸟 on 16/10/29.
//  Copyright © 2016年 小飞鸟. All rights reserved.
//

#import "PersonModel.h"

@implementation PersonModel

-(void)setValue:(id)value forUndefinedKey:(NSString *)key{

    if ([key isEqualToString:@"personname"]) {
        
        self.personName=value;
        
    }
}

@end
