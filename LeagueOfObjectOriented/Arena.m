//
//  Arena.m
//  LeagueOfObjectOriented
//
//  Created by GREGORY VICTORELLI on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "Arena.h"
#import "Jogador.h"
@implementation Arena

@synthesize tipo;

static const int FLORESTA = 1;
static const int CAVERNA = 2;
static const int PLANICIE = 3;
static const int CASTELO = 4;
static const int PANTANO = 5;

static Arena * _instancia = nil;
+(Arena *) instancia{
    if (_instancia == nil) {
        _instancia = [[Arena alloc]init];
    }
    return _instancia;
}

-(Arena *) init {
    self = [super init];
    if (self) {
        tipo = rand() % 5 + 1;
        NSLog(@"%@",[self imprimirmapa] );
    }
    return self;
}

-(double) calcularBonusArena:(Jogador *)jogador{
    double bonus = 1;
    if (tipo == FLORESTA) {
        if ([jogador raca] == [Jogador ELFO]) {
            bonus = 1.2;
        }
        else if ([jogador raca] == [Jogador HUMANO]) {
            bonus = 1.1;
        }
    }
    else if (tipo == CAVERNA){
        if ([jogador raca] == [Jogador ANAO]) {
            bonus = 1.2;
        }
        else if ([jogador raca] == [Jogador ORC]) {
            bonus = 1.1;
        }
    }
    else if (tipo == PLANICIE){
        if ([jogador raca] == [Jogador HUMANO] || [Jogador ORC] == [jogador raca]) {
            bonus = 1.1;
        }
        
    }
    else if (tipo == CASTELO){
        
        
        if ([jogador raca] == [Jogador HUMANO]) {
            bonus = 1.2;
        }
        else if ([jogador raca] == [Jogador ELFO]) {
            bonus = 1.1;
        }
        else if ([jogador raca] == [Jogador ANAO]){
            bonus = 1.05;
        }
    }
    else{
        if ([jogador raca] == [Jogador ORC]){
            bonus = 1.2;
        }
    }
    return bonus;
    
    
}

-(NSString *) imprimirmapa{
    if (tipo == FLORESTA)
        //NSLog(@"Floresta");
        return @"Floresta";
    else if (tipo == PANTANO)
        //NSLog (@"Pantano");
        return @"Pantano";
    else if (tipo == CASTELO)
        //NSLog(@"Castelo");
        return @"Castelo";
    else if (tipo == PLANICIE)
        //NSLog(@"Planicie");
        return @"Planicie";
    else
        //NSLog(@"Caverna");
        return @"Caverna";
}


@end
