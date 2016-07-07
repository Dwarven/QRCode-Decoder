//
//  ViewController.m
//  QRCode-Decoder
//
//  Created by Dwarven on 16/6/3.
//  Copyright © 2016年 Dwarven. All rights reserved.
//

#import "ViewController.h"
#import "DYQRCodeDecoderViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)scan:(id)sender {
    [_label setText:nil];
    DYQRCodeDecoderViewController *vc = [[DYQRCodeDecoderViewController alloc] init];
    [vc setCompletion:^(NSString *result) {
        if ([result isKindOfClass:[NSString class]]) {
            [_label setText:result];
        }
    }];
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:vc] animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
