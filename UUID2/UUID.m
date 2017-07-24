//
//  UUID.m
//  UUID2
//
//  Created by 付吉祥 on 16/5/11.
//  Copyright © 2016年 siyucloud. All rights reserved.
//

#import "UUID.h"
#import "KeyChainStore.h"
#import "PCHFile.pch"
@implementation UUID
+(NSString *)getUUID
{
    NSString * strUUID = (NSString *)[KeyChainStore load:@"MyUUID"];
    
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID)
    {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString (kCFAllocatorDefault,uuidRef));
        
        //将该uuid保存到keychain
        [KeyChainStore save:@"MyUUID" data:strUUID];
        
    }
    return strUUID;
}
@end
