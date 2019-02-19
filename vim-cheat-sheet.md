# Vim Cheat Sheet

## Enter Insert Mode: 
    i - insert
    I - insert at first non-blank character
    a - append
    A - append at end of line
    o - add new line below
    O - add new line above
    s - delete character under cursor and enter insert mode
    S - delete line and enter insert mode
    c<motion> - delete in direction of motion and enter insert mode
    C - delete line from the cursor position

## Commands:
    d<motion> - cut
    dd - cut line
    dj - cut current and line below
    y - yank, copy
    yy - yank line
    p - paste at cursor
    P - paste after cursor
    u - undo last command
    Ctrl+R - redo
    #* - search word under cursor forward or backward
    /<regexp> - search for regular expression, nN to cycle
    q<register> - start recording a macro into a register, @<register> to paste from register
    zz - center screen
    ZZ - write and quit

    :tabnew - create a new tab
    :gt, gT - cycle through tabs
    :e <filename> open file in a new tab
    :tabc - close current tab
    :tabo - close all other tabs
