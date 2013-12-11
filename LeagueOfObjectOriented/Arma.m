//
//  Arma.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import "Arma.h"
#import "ArcoeFlecha.h"
#import "Espada.h"
#import "Machado.h"
#import "Magia.h"

@implementation Arma
@synthesize nome;
-(double)calcularForcaAtaque:(Jogador *)j{
    return 0;
}

-(float) getPrecisaoAtk{
    precisaoAtaque = rand()%40 + 60;
    return (precisaoAtaque/100);
}

+(id)obterFactory:(int)codArma
{
    if (codArma == ARCO_E_FLEXA) {
        return [[ArcoeFlecha alloc] initWithflechas:100];
    } else if (codArma == ESPADA){
        return [[Espada alloc] initWithForca:100 andDesgaste:0];
    } else if (codArma == MACHADO) {
        return [[Machado alloc] initWithForca:130 andDesgaste:20];
    } else if (codArma == MAGIA) {
        return [[Magia alloc] initWithSkill:10];
    }
    return nil;
}

@end
