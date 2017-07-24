//
//  ViewController.m
//  UUID2
//
//  Created by 付吉祥 on 16/5/11.
//  Copyright © 2016年 siyucloud. All rights reserved.
//

#import "ViewController.h"
#import "UUID.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    NSString * uuid= [UUID getUUID];
    NSLog(@"uuid=%@",uuid);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
