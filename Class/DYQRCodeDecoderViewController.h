//
//  DYQRCodeDecoderViewController.h
//  QRCode-Decoder
//
//  Created by Dwarven on 16/7/5.
//  Copyright © 2016 Dwarven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DYQRCodeDecoderViewController : UIViewController

@property (nonatomic, strong, readonly) UIBarButtonItem * leftBarButtonItem;
@property (nonatomic, strong, readonly) UIBarButtonItem * rightBarButtonItem;

- (id)initWithCompletion:(void(^)(BOOL succeeded, NSString * result))completion;

@end
