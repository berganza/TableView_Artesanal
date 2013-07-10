//
//  ViewController.m
//  TableViewArtesana
//
//  Created by LLBER on 10/07/13.
//  Copyright (c) 2013 LLBER. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () {
    
    int posicionY;
}

-(void)celdasScroll:(int)numeroDeCeldas;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Margen superior de la primera celda
    posicionY = 5;
    
    // Color de fonde del scrollView
    self.tablaScroll.backgroundColor = [UIColor colorWithWhite:0.800 alpha:1.000];
    
    // Número de celdas
    [self celdasScroll:30];
}

-(void)celdasScroll:(int)numeroDeCeldas {
    
    for (int i=0; i<numeroDeCeldas; i++) {
        
        // Márgenes, posición y tamaño de la celda
        UILabel * celda = [[UILabel alloc] initWithFrame:CGRectMake(10, posicionY, 300, 30)];
        
        // Texto de la celda
        [celda setText:[NSString stringWithFormat:@"  %d   Celda ",i+1]];
        
        // Color de la celda
        [celda setBackgroundColor:[UIColor whiteColor]];
        
        // Insertar celdas en la vista
        [self.tablaScroll addSubview:celda];
        // Margen entre celdas
        posicionY += 35;
    }
    
    // Tamaño de las celdas
    [self.tablaScroll setContentSize:CGSizeMake(self.tablaScroll.frame.size.width, posicionY)];
    
    // Insertar tabla en la vista
    [self.view addSubview:self.tablaScroll];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

@end











