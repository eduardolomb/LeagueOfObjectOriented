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

            LeagueOfOrientedObject *l1 = [[LeagueOfOrientedObject alloc] init];
            JogadorBuilder * jogadorBuilder = [[JogadorBuilder  alloc]init];

            NSLog(@"\nPlayer 1: Escolha uma arma principal:");
            NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");

            
            retornarMsg(1, @"principal");

            scanf("%d",&armap);
            arma1 = [Arma obterFactory:armap];
            
            retornarMsg(1, @"secundaria");
            scanf("%d",&armas);
            arma2 = [Arma obterFactory:armas];
     
            retornarMsgRaca(1);
            scanf("%d",&raca);
            
            //Jogador *player1 = [[Jogador alloc] initWithnome:@"Daniel" andRaca:raca andVida:100 andEscudo:10 andArma1:arma1  andArma2:arma2];
            
            retornarMsg(2, @"principal");
            scanf("%d",&armap);

            switch (armap) {
                case 0: {
                    arma3 = [[ArcoeFlecha alloc] initWithflechas:10];
                    break;
                }
                case 1: {
                    arma3 = [[Espada alloc] initWithForca:100 andDesgaste:0];
                    break;
                }
                case 2: {
                    arma3  = [[Magia alloc] initWithSkill:10];
                    break;
                }
                case 3: {
                    arma3 = [[Machado alloc] initWithForca:100 andDesgaste:0];
                    break;
                }
                default:
                    break;
            }
            Jogador *player1 = [l1 createPlayer:jogadorBuilder com:arma1 e:arma2];
            //Jogador *player1 = [[Jogador alloc] initWithnome:@"Daniel" andRaca:raca andVida:100 andEscudo:10 andArma1:arma1  andArma2:arma2];
            NSLog(@"\nPlayer 2: Escolha uma arma secundaria:");
            NSLog(@"\n0- Arco e flecha\n1-Espada\n2-Magia\n3-Machado");

            arma3 = [Arma obterFactory:armap];
            
            retornarMsg(2, @"secundaria");

            scanf("%d",&armas);
            arma4 = [Arma obterFactory:armas];

            retornarMsgRaca(2);
            scanf("%d",&raca);
            
            

            
            
//            Jogador *player2 = [[Jogador alloc] initWithnome:@"Barbara" andRaca:raca andVida:100 andEscudo:10 andArma1:arma3 andArma2:arma4];
            
            Jogador *player2 = [l1 createPlayer:jogadorBuilder com:arma3 e:arma4];

            //Jogador *player2 = [[Jogador alloc] initWithnome:@"Barbara" andRaca:raca andVida:100 andEscudo:10 andArma1:arma3 andArma2:arma4];
            //LeagueOfOrientedObject *l1 = [[LeagueOfOrientedObject alloc] init];
            

            [l1 jogar:player1 andWith:player2];
            
            
        }
        return 0;
    }




