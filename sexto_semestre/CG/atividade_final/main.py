from ctypes.wintypes import RECT
import pygame
from random import randint, choice
from pygame import display
from pygame.transform import scale
from pygame.image import load
from pygame.sprite import Sprite, Group, GroupSingle, groupcollide
from pygame import event
from pygame.locals import QUIT, KEYUP, K_SPACE
from pygame.time import Clock

pygame.init()
disparo = 0
tamanho = 800, 600  # variável que absorve o tamanho do plano em X e Y
superficie = display.set_mode((tamanho))  # variável que absorve a contrução do plano.
display.set_caption('O  Homem Aranha')  # funcão que escreve o nome da janela.

fundo = scale(load('images/cidade.jpg'),
              tamanho)  # como a imagem é maior que o plano, usamos a função SCALE para transformar a imagem no tamanho do plano.

endGameText = "It's Over"
font = pygame.font.SysFont(None, 48)
textImage = font.render(endGameText, True, (255,0,0))

textRect = textImage.get_rect()
textRect.center = (tamanho[0] / 2, tamanho[1] / 2)

class HomemAranha(Sprite):  # criamos o primeiro sprint que irá compor o jogo, o objeto principal.
    def __init__(self, teia):
        super().__init__()  # defino essa função será usada em outras classes como herança.

        self.image = load('images/homemaranha_small.png')  # carrego a imagem e em seguida tranfiro para uma variável.
        self.rect = self.image.get_rect()  # uso a função get_rect na imagem, onde irá me permitir o movimento no plano.
        self.velocidade = 2
        self.teia = teia

    def update(self):

        keys = pygame.key.get_pressed()  # recebe o movimento

        if keys[pygame.K_LEFT]:
            self.rect.x -= self.velocidade
        if keys[pygame.K_RIGHT]:
            self.rect.x += self.velocidade
        if keys[pygame.K_UP]:
            self.rect.y -= self.velocidade
        if keys[pygame.K_DOWN]:
            self.rect.y += self.velocidade

    def soltarTeia(self):
        if len(self.teia) < 15:
            self.teia.add(
                Teia(*self.rect.center)
            )


class Teia(Sprite):  # criamos o segundo sprint que irá compor o jogo.
    def __init__(self, x, y):
        super().__init__()

        self.image = load('images/teia_small.png')
        self.rect = self.image.get_rect(
            center=(x, y)
        )

    def update(self):
        self.rect.x += 1
        if self.rect.x > tamanho[0]:
            self.kill()


class Inimigo(Sprite):  # criamos o segundo sprint que irá compor o jogo.
    def __init__(self):
        super().__init__()

        self.image = load('images/inimigo_1.png')
        self.rect = self.image.get_rect(
            center=(800, randint(10, 500))  # retorna posição aleatoria.
        )

    def update(self):
        self.rect.x -= 0.1

class Chefao(Sprite):  # criamos o segundo sprint que irá compor o jogo.
    shouldGoBack = False
    def __init__(self):
        super().__init__()

        self.image = load('images/inimigo_2.png')
        self.rect = self.image.get_rect(
            center=(800, 300)  # retorna posição aleatoria.
        )

    def update(self):
        if (self.shouldGoBack == True):
            self.rect.x += 1

            if (self.rect.x > 500):
                self.shouldGoBack = False
        
        if (self.rect.x > 101):
            if (self.shouldGoBack == False):
                self.rect.x -= 1
                print(self.rect.x)
            if (self.rect.x == 101):
                self.shouldGoBack = True

# Espaço do display
grupo_inimigo = Group()
grupo_chefao = Group()
grupo_aranha = Group()
homem_aranha = HomemAranha(grupo_aranha)
grupo_geral = GroupSingle(homem_aranha)
chefao = Chefao();

grupo_inimigo.add(Inimigo())
grupo_chefao.add(chefao)

round = -1
morte = 0
clock = Clock()
boss_hits = 0

while True:
    clock.tick(120)
    round += 1

    for evento in event.get():  # Events
        if evento.type == QUIT:
            pygame.quit()

        if evento.type == KEYUP:
            if evento.key == K_SPACE:
                homem_aranha.soltarTeia()

    if (disparo >= 10):
            superficie.blit(textImage, textRect)   
            grupo_geral.draw(superficie)
            display.update() 

    else:
        if round % 120 == 0:
            grupo_inimigo.add(Inimigo())


        superficie.blit(fundo, (
        0, 0))  # Faço o Bit Blit na imagem no ponto 0,0 do plano definimo, com isso consigo inserir a imagem no jogo.
        grupo_geral.draw(superficie)

        if (morte < 1):
            grupo_inimigo.draw(superficie)
            grupo_inimigo.update()
            disparo = 0
        else:
            grupo_chefao.draw(superficie)
            # if groupcollide(grupo_aranha, grupo_chefao, False, False):
                # grupo_chefao.remove()
                # boss_hits += 1
                # chefao.goBack()

            # if (boss_hits >= 5):
            #     grupo_chefao.remove()

            grupo_chefao.update()

        grupo_aranha.draw(superficie)

        grupo_geral.update()
        grupo_aranha.update()

        if groupcollide(grupo_inimigo, grupo_aranha, True, True):
            morte += 1

        if disparo == 10:
            resposta = True
        else:
            resposta = False

        if groupcollide(grupo_aranha, grupo_chefao, True, resposta):
            disparo += 1

        display.update()  # a função update atualiza os frames.
