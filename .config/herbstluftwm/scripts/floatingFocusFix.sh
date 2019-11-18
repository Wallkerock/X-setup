#!/usr/bin/env bash

focus=()

while read -r event ; do
    case $event in
        tag_flags*)
            focusedTag="$(herbstclient attr tags.focus.name)"
            clientCount="$(herbstclient attr tags.by-name.fl.client_count)"

            if [[ $clientCount -eq 0 && "$focusedTag" == "fl" ]] ; then
                echo switch now ${focus[@]}
                for (( idx=${#focus[@]}-2 ; idx>=0 ; idx-- )) ; do
                    client=$(echo "${focus[$idx]}")
                    xdotool getwindowname $client

                    if [[ $? -eq 0 ]] ; then
                        echo switching to $client
                        herbstclient jumpto $client
                        focus=()
                        break
                    fi
                done
            fi
        ;;
        focus_changed*)
            client="$(echo $event | cut -d ' ' -f2)"
            focus+=("$client")
            echo ${focus[@]}
        ;;
    esac
done < <(herbstclient --idle)
