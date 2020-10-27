#! /bin/bash 

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


read -p "Enter Your Mobile Number : " number
numberPattern='^(\+91|91|0|)[[:space:]][6-9]{1}[0-9]{9}$'
validate $number $numberPattern


read -p "Enter your password : " password
passwordPattern='(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9])([a-zA-Z0-9]|[^a-zA-Z0-9]){8,}'
validate $password $passwordPattern




# lists of all valid and invalid email ids

invalidEmailList=('abc' 'abc@.com.my' 'abc123@gmail.a' 'abc123@.com' 
                  'abc123@.com.com' '.abc@abc.com' 'abc()*@gmail.com'
                   'abc@%*.com' 'abc..2002@gmail.com' 'abc.@gmail.com' 
                   'abc@abc@gmail.com' 'abc@gmail.com.1a' 'abc@gmail.com.aa.au' )

validEmailList=('abc@yahoo.com' 'abc-100@yahoo.com'
                'abc.100@yahoo.com' 'abc111@abc.com'
                  'abc-100@abc.net' 'abc.100@abc.com.au'
                  'abc@1.com' 'abc@gmail.com.com' 'abc+100@gmail.com')


# validating all emails

n=${#validEmailList[@]}
count=0
while [ $count -lt $n ]
do
   validate ${validEmailList[$count]} $emailPattern
   ((count++))
done


m=${#invalidEmailList[@]}
count2=0
while [ $count2 -lt $m ]
do
   validate ${invalidEmailList[$count]} $emailPattern
   ((count2++))
done