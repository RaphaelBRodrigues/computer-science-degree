import pygame
from pygame.locals import *

from OpenGL.GL import *
from OpenGL.GLU import *

vertice = (
    (0,1),
    (-1,0),
    (1,0)
  )

aresta = (
    (0,1),
    (1,2),
    (2,0)
  )


def Triangulo():
    glBegin(GL_LINES)

    for temp_aresta in aresta:
        for vertex in temp_aresta:
            glVertex2iv(vertice[vertex])
    glEnd()


def main():
    pygame.init() #Inicialize todos os módulos pygame importados
    display = (700, 700) #Define o tamanho da tela (Plano)
    pygame.display.set_mode(display, DOUBLEBUF|OPENGL) #insere o código do pygame dentro do display de demonstração
    gluPerspective(80, #quantos graus o objeto será posicinado
                   (display[0]/display[1]), #tamanho da dela, no caso 700x700,
                   1, #o qual distante o objeto será renderizado
                   20 #Distância a ser desenhado.
    )

    glTranslatef(
        1, #X
        1, #Y
        -3  #Z
    )

    glRotatef(80,  # angulo de retação
              2,  # x
              0,  # y
              0  # z
              )  # Transformação geometrica de rotação



    glColor3f(1,1,0)

    while True:
        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                pygame.quit()
                quit()


        glClear(GL_COLOR_BUFFER_BIT|GL_DEPTH_BUFFER_BIT)
        Triangulo()
        pygame.display.flip()
        # pygame.time.wait(10)


main()