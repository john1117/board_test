import pygame, sys, os
from pygame.locals import *
from time import sleep
os.environ["SDL_FBDEV"] = "/dev/fb1"

pygame.init()

# set up the window
DISPLAYSURF = pygame.display.set_mode((320, 240), 0, 32)
pygame.display.set_caption('Drawing')

# set up the colors
BLACK = (  0,   0,   0)
WHITE = (255, 255, 255)
RED   = (255,   0,   0)
GREEN = (  0, 255,   0)
BLUE  = (  0,   0, 255)

# draw on the surface object
pygame.draw.rect(DISPLAYSURF, RED, (0, 0, 320, 240))
pygame.display.update()
sleep(2)
pygame.draw.rect(DISPLAYSURF, GREEN, (0, 0, 320, 240))
pygame.display.update()
sleep(2)
pygame.draw.rect(DISPLAYSURF, BLUE, (0, 0, 320, 240))
pygame.display.update()
sleep(2)
pygame.draw.rect(DISPLAYSURF, WHITE, (0, 0, 320, 240))
pygame.display.update()
sleep(2)
