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
    DYQRCodeDecoderViewController *vc = [[DYQRCodeDecoderViewController alloc] initWithCompletion:^(BOOL succeeded, NSString *result) {
        if (succeeded) {
            [_label setText:result];
        } else {
            [_label setText:@"failed"];
        }
    }];
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:vc] animated:YES completion:NULL];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
