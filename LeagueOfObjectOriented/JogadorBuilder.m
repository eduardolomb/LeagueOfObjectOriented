//
//  JogadorBuilder.m
//  LeagueOfObjectOriented
//
//  Created by EDUARDO LOMBARDI on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import "JogadorBuilder.h"

@implementation JogadorBuilder
@synthesize jogador=jogador_;

- (JogadorBuilder *) buildNewCharacter
{
    // autorelease the previous character // before creating a new one [character_ autorelease];
    jogador_ = [[Jogador alloc] init];
    return self;
}
- (JogadorBuilder *)withNome:(NSString *)aNome {
    jogador_.nome = aNome;
    return self;
}
- (JogadorBuilder *)withRaca:(int) aRaca {
    jogador_.raca = aRaca;
    return self;
}
- (JogadorBuilder *)withVida:(float)aVida {
    jogador_.vida = aVida;
    return self;
}
- (JogadorBuilder *)withForcaescudo:(int) aForcaescudo {
    jogador_.forcaescudo = aForcaescudo;
    return self;
}
- (JogadorBuilder *)withArma:(Arma *) aArmap e:(Arma *) aArmas {
    jogador_.armaPrimaria = aArmap;
    jogador_.armaSecundaria = aArmas;
    return self;
}
-(JogadorBuilder *)withPlusdef:(int) aPlusdef {
    jogador_.plusdef = aPlusdef;
    return self;
}

-(JogadorBuilder *)withPlusatk:(int) aPlusatk {
    jogador_.plusatk = aPlusatk;
    return self;
}

@end
