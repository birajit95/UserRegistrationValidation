#! /bin/bash -x

echo "Welcome to User Registration Program"

validate(){
    local input=$1
    local pat=$2

    if [[ $input =~ $pat ]]
    then
        echo "Valid"
    else
        echo "Invalid"
    fi   
}


read -p "Enter the first name : " firstName
firstNamePattern='^[A-Z]{1}[a-zA-Z]{2,}$'
validate $firstName $firstNamePattern