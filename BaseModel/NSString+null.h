//
//  NSString+null.h
//  WeiZaZhi
//
//  Created by 联动 on 15/5/30.
//  Copyright (c) 2015年 liandongzaixian. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (null)


+(NSString*)stringWithRequestDicValue:(id)dicValue defultValue:(NSString*)defultValue;


+(BOOL)stringWithRequestDicValue:(id)dicValue;

//过滤
+(NSString *)stringWithFashionRequestDicValue:(id)dicValue defultValue:(NSString *)defultValue;

@end
