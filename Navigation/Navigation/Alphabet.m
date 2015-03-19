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

static Alphabet *inst = nil;

- (instancetype) init {
    self = [super init];
    if (self){
        alphabet = [[NSMutableArray alloc] init];
    }
    [self addAlphabetLetter:@"A" andWord:@"Abacaxi"     andImage:@"abacaxi"];
    [self addAlphabetLetter:@"B" andWord:@"Bola"        andImage:@"bola"];
    [self addAlphabetLetter:@"C" andWord:@"Cachorro"    andImage:@"cachorro"];
    [self addAlphabetLetter:@"D" andWord:@"Dinossauro"  andImage:@"dinossauro"];
    [self addAlphabetLetter:@"E" andWord:@"Elefante"    andImage:@"elefante"];
    [self addAlphabetLetter:@"F" andWord:@"Foca"        andImage:@"foca"];
    [self addAlphabetLetter:@"G" andWord:@"Gato"        andImage:@"gato"];
    [self addAlphabetLetter:@"H" andWord:@"Hipopotamo"  andImage:@"hipopotamo"];
    [self addAlphabetLetter:@"I" andWord:@"Iguana"      andImage:@"iguana"];
    [self addAlphabetLetter:@"J" andWord:@"Jacare"      andImage:@"jacare"];
    [self addAlphabetLetter:@"K" andWord:@"Kiwi"        andImage:@"kiwi"];
    [self addAlphabetLetter:@"L" andWord:@"Lobo"        andImage:@"lobo"];
    [self addAlphabetLetter:@"M" andWord:@"Macaco"      andImage:@"macaco"];
    [self addAlphabetLetter:@"N" andWord:@"Navio"       andImage:@"navio"];
    [self addAlphabetLetter:@"O" andWord:@"Orca"        andImage:@"orca"];
    [self addAlphabetLetter:@"P" andWord:@"Pato"        andImage:@"pato"];
    [self addAlphabetLetter:@"Q" andWord:@"Quati"       andImage:@"quati"];
    [self addAlphabetLetter:@"R" andWord:@"Rato"        andImage:@"rato"];
    [self addAlphabetLetter:@"S" andWord:@"Sapo"        andImage:@"sapo"];
    [self addAlphabetLetter:@"T" andWord:@"Tigre"       andImage:@"tigre"];
    [self addAlphabetLetter:@"U" andWord:@"Urso"        andImage:@"urso"];
    [self addAlphabetLetter:@"V" andWord:@"Vaca"        andImage:@"vaca"];
    [self addAlphabetLetter:@"W" andWord:@"Waffle"      andImage:@"waffle"];
    [self addAlphabetLetter:@"X" andWord:@"Xilofone"    andImage:@"xilofone"];
    [self addAlphabetLetter:@"Y" andWord:@"Yakult"      andImage:@"yakult"];
    [self addAlphabetLetter:@"Z" andWord:@"Zebra"       andImage:@"zebra"];
    
    return self;
}

+ (Alphabet *) sharedInstance{
    if (inst == nil){
        inst = [[Alphabet alloc] init];
    }
    return inst;
}


-(void)addAlphabetLetter:(NSString *)l andWord:(NSString *)w andImage:(NSString *)i{
    Letters *a = [[Letters alloc] initWithLetter:l andWord:w andImage:i];
    [alphabet addObject:a];
}


- (Alphabet *) letterAtIndex:(NSUInteger) i
{
    return [alphabet objectAtIndex:i];
}


- (NSNumber *)count{
    return [NSNumber numberWithInteger:[alphabet count]];
}

-(NSMutableArray *) getAlphabet
{
    return alphabet;
}


- (Letters *) getLetter {
    Letters *letra = [[Letters alloc] init];
    return letra.letter;
    return letra.word;
    return letra.image;
    
}

@end
