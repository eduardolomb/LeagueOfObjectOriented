//
//  Arena.h
//  LeagueOfObjectOriented
//
//  Created by GREGORY VICTORELLI on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Jogador;

@interface Arena : NSObject{
    int tipo;
    
}

@property int tipo;

+(Arena *) instancia;
-(Arena *) init;
-(NSString *) imprimirmapa;
-(double) calcularBonusArena:(Jogador *)jogador;

@end
