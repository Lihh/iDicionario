//
//  Letters.m
//  Navigation
//
//  Created by Lidia Chou on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Letters.h"

@implementation Letters

@synthesize letter, word, image;

-(instancetype)initWithLetter:(NSString *)l andWord:(NSString *)w andImage:(UIImage *)i{
    self = [super init];
    if (self){
        letter = l;
        word = w;
        image = i;
    }
    return self;
}

@end
