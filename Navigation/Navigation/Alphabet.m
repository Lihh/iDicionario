//
//  Alphabet.m
//  Navigation
//
//  Created by Lidia Chou on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Alphabet.h"
#import "Letters.h"

@implementation Alphabet

static Alphabet *sharedInstance = nil;

- (instancetype) init {
    self = [super init];
    if (self){
        alphabet = [[NSMutableArray alloc] init];
    }
    [self addAlphabetLetter:@"A" andWord:@"Abacaxi"     andImage:@""];
    [self addAlphabetLetter:@"B" andWord:@"Bola"        andImage:@""];
    [self addAlphabetLetter:@"C" andWord:@"Cachorro"    andImage:@""];
    [self addAlphabetLetter:@"D" andWord:@"Dinossauro"  andImage:@""];
    [self addAlphabetLetter:@"E" andWord:@"Elefante"    andImage:@""];
    [self addAlphabetLetter:@"F" andWord:@"Falcao"      andImage:@""];
    [self addAlphabetLetter:@"G" andWord:@"Gato"        andImage:@""];
    [self addAlphabetLetter:@"H" andWord:@"Hiena"       andImage:@""];
    [self addAlphabetLetter:@"I" andWord:@"Iguana"      andImage:@""];
    [self addAlphabetLetter:@"J" andWord:@"Jabuti"      andImage:@""];
    [self addAlphabetLetter:@"K" andWord:@"Kiwi"        andImage:@""];
    [self addAlphabetLetter:@"L" andWord:@"Lobo"        andImage:@""];
    [self addAlphabetLetter:@"M" andWord:@"Macaco"      andImage:@""];
    [self addAlphabetLetter:@"N" andWord:@"N"           andImage:@""];
    [self addAlphabetLetter:@"O" andWord:@"Orangotango" andImage:@""];
    [self addAlphabetLetter:@"P" andWord:@"Pato"        andImage:@""];
    [self addAlphabetLetter:@"Q" andWord:@"Abacaxi"     andImage:@""];
    [self addAlphabetLetter:@"R" andWord:@"Rato"        andImage:@""];
    [self addAlphabetLetter:@"S" andWord:@"Sapo"        andImage:@""];
    [self addAlphabetLetter:@"T" andWord:@"Tatu"        andImage:@""];
    [self addAlphabetLetter:@"U" andWord:@"Uva"         andImage:@""];
    [self addAlphabetLetter:@"V" andWord:@"Vaca"        andImage:@""];
    [self addAlphabetLetter:@"W" andWord:@"W"           andImage:@""];
    [self addAlphabetLetter:@"X" andWord:@"X"           andImage:@""];
    [self addAlphabetLetter:@"Y" andWord:@"Y"           andImage:@""];
    [self addAlphabetLetter:@"Z" andWord:@"Zebra"       andImage:@""];
    
    return self;
}

+ (Alphabet *) instance{
    if (sharedInstance == nil){
        sharedInstance = [[Alphabet alloc] init];
    }
    return sharedInstance;
}


-(void)addAlphabetLetter:(NSString *)l andWord:(NSString *)w andImage:(UIImage *)i{
    Letters *a = [[Letters alloc] initWithLetter:l andWord:w andImage:i];
    [alphabet addObject:a];
}

@end
