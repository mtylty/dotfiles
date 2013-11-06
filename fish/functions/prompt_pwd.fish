switch (uname)
case Darwin
        function prompt_pwd --description "Print the current working directory, shortened to fit the prompt"
                echo $PWD | sed -e "s|^$HOME|~|"
        end
case 'CYGWIN_*'
        function prompt_pwd --description "Print the current working directory, shortened to fit the prompt"
                echo $PWD | sed -e "s|^$HOME|~|"
        end
case '*'
        function prompt_pwd --description "Print the current working directory, shortened to fit the prompt"
                echo $PWD | sed -e "s|^$HOME|~|"
        end
end
