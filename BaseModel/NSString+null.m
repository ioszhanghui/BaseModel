//
//  NSString+null.m
//  WeiZaZhi
//
//  Created by 联动 on 15/5/30.
//  Copyright (c) 2015年 liandongzaixian. All rights reserved.
//

#import "NSString+null.h"

@implementation NSString (null)

+(NSString*)stringWithRequestDicValue:(id)dicValue defultValue:(NSString*)defultValue
{
    
    NSString* str=[NSString stringWithFormat:@"%@",dicValue];

    if ([str isEqualToString:@"<null>"]||str==nil||[str isEqualToString:@"null"]||[str isEqualToString:@""]||[str isEqualToString:@"(null)"]||[str isEqualToString:@"\"<null>\""]) {
        
        [defultValue stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        return defultValue;
        
        
    }else{
        

        
        return str;

    }


}

+(NSString *)stringWithFashionRequestDicValue:(id)dicValue defultValue:(NSString *)defultValue {

    NSString* str=[NSString stringWithFormat:@"%@",dicValue];
    
    if ([str isEqualToString:@"<null>"]||str==nil||[str isEqualToString:@"null"]||[str isEqualToString:@""]||[str isEqualToString:@"(null)"]) {
        
        [defultValue stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding];
        
        return defultValue;
        
        
    }else{
        
        //过滤nsstring中html标签
        NSArray *components = [str componentsSeparatedByCharactersInSet:[NSCharacterSet characterSetWithCharactersInString:@"&;"]];
        
        NSMutableArray *componentsToKeep = [NSMutableArray array];
        
        for (int i = 0; i < [components count]; i = i + 2) {
            
            [componentsToKeep addObject:[components objectAtIndex:i]];
            
        }
        
        NSString *plainText = [componentsToKeep componentsJoinedByString:@""];
        
        return plainText;
        
    }

}



//用于数字
+(NSString*)stringWithRequestDicValueForNumberStr:(id)dicValue
{
    
    NSString* str=[NSString stringWithFormat:@"%@",dicValue];
    
    
    
    if ([str isEqualToString:@"<null>"]||str==nil||[str isEqualToString:@"null"]) {
        
        
        return @"0";
        
        
    }else{
        
        return str;
    }
    
    
}

//数组

+(BOOL)stringWithRequestDicValue:(id)dicValue
{
    if ([[dicValue class] isSubclassOfClass:[NSArray class]]) {
        
        return YES;
    }
    
    NSString* str=[NSString stringWithFormat:@"%@",dicValue];
    
    if ([str isEqualToString:@"<null>"]||str==nil||[str isEqualToString:@"null"]||[str isEqualToString:@""]||[str isEqualToString:@"(null)"]) {
        
        
        return NO;
        
        
    }else{
        
        return YES;
    }
}



@end
