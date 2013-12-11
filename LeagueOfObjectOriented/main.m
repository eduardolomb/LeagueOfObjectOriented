//
//  main.m
//  LoOO
//
//  Created by DANIEL CARVALHO on 11/18/13.
//  Copyright (c) 2013 DANIEL CARVALHO. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jogador.h"
#import "Espada.h"
#import "Magia.h"
#import "Machado.h"
#import "ArcoeFlecha.h"
#import "LeagueOfOrientedObject.h"
#import <time.h>


void retornarMsg(int player, NSString *tipoArma){
    NSLog(@"\nPlayer %d: Escolha uma arma %@:", player, tipoArma);
    NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");
}

void retornarMsgRaca(int player){
    NSLog(@"\nPlayer %d: Escolha uma raca:", player);
    NSLog(@"\n0-ELFO \n1-HUMANO\n2-ORC\n3-ANAO");
}



    int main(int argc, const char * argv[])
    {
        
        @autoreleasepool {
            srand((unsigned) time(NULL));
            int raca, armap,armas;
            Arma *arma1 = [Arma new];
            Arma *arma2 = [Arma new];
            Arma *arma3 = [Arma new];
            Arma *arma4 = [Arma new];
            
            retornarMsg(1, @"principal");
            scanf("%d",&armap);
            arma1 = [Arma obterFactory:armap];
            
            retornarMsg(1, @"secundaria");
            scanf("%d",&armas);
            arma2 = [Arma obterFactory:armas];
     
            retornarMsgRaca(1);
            scanf("%d",&raca);
            
            Jogador *player1 = [[Jogador alloc] initWithnome:@"Daniel" andRaca:raca andVida:100 andEscudo:10 andArma1:arma1  andArma2:arma2];
            
            retornarMsg(2, @"principal");
            scanf("%d",&armap);
            arma3 = [Arma obterFactory:armap];
            
            retornarMsg(2, @"secundaria");
            scanf("%d",&armas);
            arma4 = [Arma obterFactory:armas];

            retornarMsgRaca(2);
            scanf("%d",&raca);
            
            
            Jogador *player2 = [[Jogador alloc] initWithnome:@"Barbara" andRaca:raca andVida:100 andEscudo:10 andArma1:arma3 andArma2:arma4];
            LeagueOfOrientedObject *l1 = [[LeagueOfOrientedObject alloc] init];
            
            [l1 jogar:player1 andWith:player2];
            
            
        }
        return 0;
    }




