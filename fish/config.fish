#curl -s -N http://wttr.in/tel-aviv | head -n 7 | tail -n +3
echo ""
set_color -o green
fortune -sa
set_color normal
echo ""

function vact
         source $argv/bin/activate.fish
end
