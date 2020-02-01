killall superheat.sh

echo "starting in 5 seconds"
xdotool sleep 5

#windowname RuneScape
window_id=29360148

## bank
loop=0
while [ $loop -lt 79 ]; do
    xdotool mousemove --window $window_id --sync 1400 400 
    xdotool sleep 0.5
    xdotool click --repeat 2 --window $window_id 1 # talk to banker
    xdotool sleep 1
    xdotool mousemove --window $window_id --sync 1400 430 
    xdotool click --window $window_id 3 # right click menu
    xdotool sleep 0.5
    xdotool mousemove --window $window_id --sync 1400 470
    xdotool sleep 0.5
    xdotool click --window $window_id 1 # select "fill"
    xdotool sleep 0.5
    xdotool key --clearmodifiers --window $window_id '2' # sometimes this key doesn't register
    xdotool key --clearmodifiers --window $window_id '2'
    xdotool key --clearmodifiers --window $window_id '2'
    xdotool sleep 0.5
    
    # backpack
    xdotool mousemove --window $window_id --sync 2484 1020
    xdotool sleep 0.5
    
    # superheating
    # needs multiple key inputs '2' to register? delay between 2 and click too long
    # ore counter must be <11, failure to superheat causes bug
    ore_counter=0
    while [ $ore_counter -lt 11 ]; do
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool key --clearmodifiers --window $window_id '2'
        xdotool sleep 0.05
        xdotool click --window $window_id 1
        xdotool sleep 1.0 # superheat spell cooldown is 1.2s. 0.05, 1.1 works well
        let ore_counter=ore_counter+1
    done
    let loop=loop+1
done


# xdotool click --repeat 1000 --delay 25 1

#loop = "11"
#for x in $loop; do
#    xdotool key '2'
#    xdotool sleep 0.3
#    xdotool click 1
#    xdotool sleep 1
#done
