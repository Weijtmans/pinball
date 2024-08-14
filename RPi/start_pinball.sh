#!/bin/bash

    # Clear the screen and hide the cursor
    clear
    setterm -cursor off

    # Load pyenv
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="$PYENV_ROOT/bin:$PATH"
    eval "$(pyenv init -)"

    # Activate the correct environment
    pyenv activate 3.9.18/envs/mpf

    # Change to the pinball directory
    cd /home/Weijtmans/pinball

    # Run the pinball software
    mpf both -X -V