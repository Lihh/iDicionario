//
//  Alphabet.h
//  Navigation
//
//  Created by Lidia Chou on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Letters.h"

@interface Alphabet : NSObject{
    NSMutableArray *alphabet;
}

- (void) addAlphabetLetter: (NSString *)l andWord: (NSString *)w andImage: (NSString *)i;

@end
