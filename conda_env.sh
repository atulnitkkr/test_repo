
#!/bin/bash

if [[ $1 == "activate" ]]; then
    export PATH="/Users/atulanand/turing_conda/miniconda3/bin:/Users/atulanand/turing_conda/miniconda3/condabin:$PATH"
    source /Users/atulanand/turing_conda/miniconda3/bin/activate $2
else
    conda deactivate
    PATH=$(REMOVE_PART="/Users/atulanand/turing_conda/miniconda3/bin" sh -c 'echo ":$PATH:" | sed "s@:$REMOVE_PART:@:@g;s@^:\(.*\):\$@@"')
    PATH=$(REMOVE_PART="/Users/atulanand/turing_conda/miniconda3/condabin" sh -c 'echo ":$PATH:" | sed "s@:$REMOVE_PART:@:@g;s@^:\(.*\):\$@@"')
fi
