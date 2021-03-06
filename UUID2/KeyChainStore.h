//
//  KeyChainStore.h
//  UUID2
//
//  Created by 付吉祥 on 16/5/11.
//  Copyright © 2016年 siyucloud. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface KeyChainStore : UIViewController
+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyData:(NSString *)service;
@end
