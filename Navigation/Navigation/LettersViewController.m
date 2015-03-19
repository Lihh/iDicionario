//
//  LettersViewController.m
//  Navigation
//
//  Created by Lidia Chou on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "LettersViewController.h"
#import "Letters.h"
#import "Alphabet.h"

@interface LettersViewController () {
    Alphabet *alphabet;
    
}

@end

@implementation LettersViewController {
    NSMutableArray *todasLetras;
    NSMutableArray *arrayAlph;
    Letters *letraAtual;
}
//Declara fora do DidLoad pq quando chama a view, não reinicializa como 0
int indexAlphabet = 0;

@synthesize letterLabel, wordLabel, wordImage;


- (void)viewDidLoad {
    [super viewDidLoad];
    
    alphabet = [Alphabet sharedInstance];
    todasLetras = [alphabet getAlphabet];

    arrayAlph = [[NSMutableArray alloc] initWithArray:self.navigationController.viewControllers];
    
    //inicializando e ajustando a Letra na tela
    letterLabel = [[UILabel alloc] init];
    letterLabel.textAlignment = NSTextAlignmentCenter;
    letterLabel.backgroundColor = [UIColor blueColor];
    letterLabel.textColor = [UIColor whiteColor];
    letterLabel.frame = CGRectMake(self.view.bounds.size.width/2 - 25, 100, 50, 50);
    
    //inicializando e ajustando a palavra na tela
    wordLabel = [[UILabel alloc] init];
    wordLabel.textAlignment = NSTextAlignmentCenter;
    wordLabel.frame = CGRectMake(self.view.bounds.size.width/2 - 100, 160, 200, 30);
    
    //inicializando e ajustando a imagem na tela
    wordImage = [[UIImageView alloc] initWithFrame:CGRectMake(self.view.bounds.size.width/2 - 100, 230, 200, 200)];
    
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    //adicionando as Labels e a imagem
    [self.view addSubview:letterLabel];
    [self.view addSubview:wordLabel];
    [self.view addSubview:wordImage];
    
}

-(void)viewWillAppear:(BOOL)animated{
    
    letraAtual = [todasLetras objectAtIndex:indexAlphabet];
    
    [self.letterLabel setText:letraAtual.letter];
    [self.wordLabel setText:letraAtual.word];
    [self.wordImage setImage:[UIImage imageNamed:letraAtual.image]];
    
    NSLog(@"index: %i", indexAlphabet);
    NSLog(@"letra: %@", letterLabel.text);
    NSLog(@"palavra: %@", wordLabel.text);
    
    self.title = letterLabel.text;
    
    
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UIBarButtonItem *back = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemRewind target:self action:@selector(back:)];
    self.navigationItem.leftBarButtonItem=back;

    UIButton *botao = [UIButton buttonWithType:UIButtonTypeSystem];
    [botao setTitle:wordLabel.text forState:UIControlStateNormal];
    [botao sizeToFit];
    [self.view addSubview:botao];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next:(id)sender {
        if (indexAlphabet == 25) {
            [self.navigationController popToRootViewControllerAnimated:YES];
            indexAlphabet = 0;
            
    
        } else {
            
            indexAlphabet ++;
            LettersViewController *proximo = [[LettersViewController alloc]
                                              initWithNibName:nil
                                              bundle:NULL];
            [self.navigationController pushViewController:proximo
                                                 animated:YES];
            //tira a instancia anterior da pilha
            [self.navigationController popViewControllerAnimated:NO];
        }
    NSLog(@"%i", indexAlphabet);
    
}


-(void)back:(id)sender {
    
    if (indexAlphabet == 0) {
        [self.navigationController popToRootViewControllerAnimated:YES];
        
        
    } else {
        
        indexAlphabet --;
        LettersViewController *proximo = [[LettersViewController alloc]
                                          initWithNibName:nil
                                          bundle:NULL];
        [self.navigationController pushViewController:proximo
                                             animated:YES];
        //tira a instancia anterior da pilha
        [self.navigationController popViewControllerAnimated:NO];
        
    }
    
    
    NSLog(@"%i", indexAlphabet);

    
}

@end
