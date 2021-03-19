#!/bin/bash
# number=1
# while [[ $number -le 10  ]]
# do
#         echo $number
#         ((number++))
# done
# echo "Now muner is $number"

# number=1
# until [[ $number -ge 10  ]]
# do
#   echo $number
#   ((number++))
# done
# echo "Now, number is $number"

# echo "Numbers:"
# for number in 0 1 2 3 4 5 6 7 8 9
# do
#    echo $number
# done



# #!/bin/bash
# number=10
# while [[ $number -gt 1  ]]
# do
#   echo $number
#   ((number++))
# done
# echo "Now, number is $number"






# while [ true ]
# do
#         read -p "Did you learn linux? " answer
#         if [[ $answer = yes ]]
#         then
#                 echo "Congratulations!"
#                 break
#         fi
#         echo "Never give up!"
# done

# number=10
# while [[ $number -gt 1  ]]
# do
#   echo $number
#   ((number++))
# done
# echo "Now, number is $number"


# while [ true ]
# do
#         read -p "Did you learn linux? " answer
#         if [[ $answer = yes ]]
#         then
#                 echo "Congratulations!"
#                 break
#         fi
#         echo "Never give up!"
# done

# number=1
# until [[ $number -lt 1  ]]
# do
#   ((number++))
#   tens=$(($number % 10))
#   if [[ $tens -eq 0 ]]
#   then
#     continue
#   fi
#   echo $number
#   if [[ $number -gt 100 ]]
#   then
#     break
#   fi
# done


read -p "Input first number: " first_number
read -p "Input second number: " second_number
PS3="Select the operation: "
select operation in addition subtraction multiplication division exit
do
  case $operation in
    addition) 
      echo "result= $(( $first_number + $second_number))"
    ;;
    subtraction)
       echo "result= $(( $first_number - $second_number))"
    ;;
    multiplication)
       echo "result= $(( $first_number * $second_number))" 
       ;;
    division)
       echo "result= $(( $first_number / $second_number))"
    ;;
    exit)
       break
    ;;   
    *)
       echo "Wrong choice..." 
    ;;
  esac
done

Welcome () {
        echo "Welcome   $1 $2 $3"
}
echo "Before function"
Welcome sinem elnur eser 
echo "After function"

function_one () {
   echo "This is from the first function"
   function_two
}
function_two () {
   echo "This is from the second function"
}
function_one



var1='global 1'
var2='global 2'
var_scope () {
  local var1='function 1'
  var2='function 2'
  echo -e "Inside function:\nvar1: $var1\nvar2: $var2"
}
echo -e "Before calling function:\nvar1: $var1\nvar2: $var2"
var_scope
echo -e "After calling function:\nvar1: $var1\nvar2: $var2"


read -p "enter birth year" birt
print_age ()   {
local birth_year=$birt
echo "your age $(($1- $birth_year ))" 
}
print_age $1



clear
read -p "Enter your birth year: " year
current_year=2021
print_age () {
    local birth_year=year 
    echo "Your age is $(($current_year-$birth_year))"
}
print_age



read -p "write a ffolder name" name
if [[ -d $name ]]
then 
ls $name
else
echo "Directory does not exist"
mkdir $name
echo "the directory created"
fi