//
//  LeagueOfOrientedObject.h
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//


#import <Foundation/Foundation.h>
#import "JogadorBuilder.h"

@interface LeagueOfOrientedObject : NSObject
    
-(void) jogar:(Jogador *) j1 andWith:(Jogador *)j2;
-(Jogador *) createPlayer:(JogadorBuilder *) builder com:(Arma *) arma e:(Arma *) armaDois;
-(Jogador *) createEnemy:(JogadorBuilder *) builder com: (Arma *) arma e:(Arma *) armaDois;
@end

