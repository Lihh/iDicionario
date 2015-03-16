//
//  InitialViewController.m
//  Navigation
//
//  Created by Lidia Chou on 3/16/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "InitialViewController.h"
#import "LettersViewController.h"

@interface InitialViewController ()

@end

@implementation InitialViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"iDicionario";
    UIBarButtonItem *next = [[UIBarButtonItem alloc]
                             initWithBarButtonSystemItem:UIBarButtonSystemItemFastForward target:self action:@selector(next:)];
    self.navigationItem.rightBarButtonItem=next;
    
    UILabel *label = [[UILabel alloc] init];
    [label setTextColor:[UIColor blueColor]];
    [label setText:@"Bem vindo ao iDicionario!\nAperte o botao no topo da tela para começar!"];
    [label setFont:[UIFont systemFontOfSize:13]];
    label.numberOfLines = 2;
    [label sizeToFit];
    label.center = self.view.center;
    
    [self.view addSubview:label];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)next:(id)sender {
    LettersViewController *start = [[LettersViewController alloc]
                                      initWithNibName:nil
                                      bundle:NULL];
    [self.navigationController pushViewController:start
                                         animated:YES];
    
}

@end
