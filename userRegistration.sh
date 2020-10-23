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


read -p "Enter the Last name : " lastName
lastNamePattern='^[A-Z]{1}[a-zA-Z]{2,}$'
validate $lastName $lastNamePattern


read -p "Enter the Email: " email
emailPattern='^[a-zA-Z]{1}[a-zA-Z0-9]+([-\.\_\+]?[0-9a-zA-Z]+)*\@[a-zA-Z]+([\.][a-z]{2,4})?([\.][a-z]{2,4})$' 
validate $email $emailPattern