
# Colors allias
RED='\033[0;31m'
GREEN='\033[0;32m' 
STOP_COLOR='\033[0m'

printf "\nPlease enter a valid password 10 charecters long including\n
-Length – minimum of 10 characters.
-Contain both alphabet and number.
-Include both the small and capital case letters.\n\n"

read password

len="${#password}"

    if test $len -ge 10 ; then
        echo "$password" | grep -q [0-9]
        if test $? -eq 0 ; then
            echo "$password" | grep -q [A-Z]
            if test $? -eq 0 ; then
                echo "$password" | grep -q [a-z]   
                if test $? -eq 0 ; then
                    printf "${GREEN}Strong password${STOP_COLOR}"
                else
                    printf "${RED}please include lower case char${STOP_COLOR}"
                fi
            else
                printf "${RED}please include capital chars${STOP_COLOR}" 
            fi
        else
            printf "${RED}please include numbers in password${STOP_COLOR}"   
        fi
    else
        printf "${RED}password lenght should be greater than or equal 10 characters. You entered weak password${STOP_COLOR}"
    fi