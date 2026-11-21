#!/bin/bash
sleep 3
# Lanzar btop (panel izquierdo)
kitty --title "dash_btop" -e btop &
sleep 0.3

# Lanzar unimatrix con letras japonesas y color cyan (panel superior derecho)
kitty --title "dash_matrix" -e unimatrix -c cyan -l o -s 95 &
sleep 0.3

# Lanzar tty-clock (panel inferior derecho)
kitty --title "dash_clock" -e tty-clock -c -C 6 -s -B &
