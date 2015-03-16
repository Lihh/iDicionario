//
//  Letters.h
//  Navigation
//
//  Created by Lidia Chou on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Letters : NSObject{
    NSString *letter;
    NSString *word;
    UIImage *image;
}

-(instancetype)initWithLetter: (NSString *)l andWord: (NSString *)w andImage: (UIImage *)i;

@property NSString *letter;
@property NSString *word;
@property UIImage *image;

@end
