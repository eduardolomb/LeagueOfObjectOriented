//
//  JogadorBuilder.h
//  LeagueOfObjectOriented
//
//  Created by EDUARDO LOMBARDI on 12/11/13.
//  Copyright (c) 2013 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Arma.h"
@interface JogadorBuilder : NSObject {

    @protected
    Jogador *jogador_;
}
@property (nonatomic, readonly) Jogador *jogador;

- (JogadorBuilder *) buildNewCharacter;
- (JogadorBuilder *)withNome:(NSString *)aNome;
- (JogadorBuilder *)withRaca:(int) aRaca;
- (JogadorBuilder *)withVida:(float)aVida;
- (JogadorBuilder *)withForcaescudo:(int) aForcaescudo;
- (JogadorBuilder *)withArma:(Arma *) aArmap e:(Arma *) aArmas;
-(JogadorBuilder *)withPlusdef:(int) aPlusdef;
-(JogadorBuilder *)withPlusatk:(int) aPlusatk;
@end
