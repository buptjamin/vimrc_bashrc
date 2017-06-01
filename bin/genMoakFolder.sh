#!/bin/bash

declare -a source_path

current_folder_path=`dirname $0`

find_Source_dir(){
    src_path=$1
    pushd ${src_path} >/dev/null
    all_source_path=(`find . -type d -name 'Source'`)
    i=0
    for p in ${all_source_path[@]}
    do
        echo $p | grep -q -E '[rR]elease|[dD]ebug'
        if [ $? != 0 ]
        then
            #echo YES: ${p}
            for p2 in `find ${p} -type d`
            do
                echo $p2 | grep -q -E '.git'
                if [ $? == 0 ]
                then
                    #echo "ommit dir: $p2"
                    continue
                fi
                isDirInArray="NO"
                for srcItem in ${source_path[@]}
                do
                    if [ $srcItem == $p2 ]
                    then
                        isDirInArray="YES"
                        break
                    fi
                done
                if [ $isDirInArray == "NO" ]
                then
                    #echo "add dir: ${p2}"
                    echo $p2 | grep -q -E 'include|source'
                    if [ $? == 0 ]
                    then
                        source_path[$i]=${p2}
                        let i++
                    fi
                fi
            done
        fi
    done
}

make_Source_dir(){
    pushd $current_folder_path >/dev/null
    for path in ${source_path[@]}
    do
        the_make_path=${current_folder_path}/${path:1}
        echo "make dir: ${the_make_path}"
    done
}

find_Source_dir $@

make_Source_dir
