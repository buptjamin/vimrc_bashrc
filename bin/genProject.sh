#!/bin/bash

curDir=`pwd`

appDirList=( build res libs src )
libDirList=( build res libs lib include src )

genApp(){
    for dir in ${appDirList[@]}
    do
        mkdir ${curDir}/$dir
    done
}

genLib(){
    for dir in ${libDirList[@]}
    do
        mkdir ${curDir}/$dir
    done
}

main(){
    cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py ./
    if [ $# -ne 1 ]
    then
        echo "Please input an arg(app or lib)"
    else
        if [[ $1 = app ]]
        then
            genApp
        elif [[ $1 = lib ]]
        then
            genLib
        fi
    fi
}

main $@
