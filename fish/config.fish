set -g -x JAVA_HOME /usr/lib/jvm/java-1.8.0
set -g -x PYTHONPATH ./;
set -gx PATH /home/ir/satanog/crfsuite-0.12/bin/ $PATH
set -gx CORENLP_HOME /home/ir/satanog/corenlp
/home/ir/satanog/screenFetch/screenfetch-dev
#curl -s -N http://wttr.in/tel-aviv | head -n 7 | tail -n +3
echo ""
set_color -o green
fortune -sa
set_color normal
echo ""

function dostuff --on-event fish_prompt
         if test -e .venv
            set venv $VIRTUAL_ENV
            set cwd (pwd)/.venv
            if [ "echo $venv" != "echo $cwd" ]
               echo "entering venv: "(pwd)
               source .venv/bin/activate.fish
            end
         end
end
