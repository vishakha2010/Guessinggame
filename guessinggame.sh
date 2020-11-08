function guess(){
    actual_guess=$(ls -l |grep "^-"|wc -l)
    while true;
    do
        echo "pleas enter your guess"
        read  number
        if [ $number -lt $actual_guess ]
        then
            echo "Your guess is Less than the actual number"
        elif [ $number -gt $actual_guess ]
        then
            echo "your guess is Greater than the actual number"
        else
            echo " Congratulations,you are right!"
        break;
        fi
    done
}
echo "Please guess the files number in the current directory!"
guess
