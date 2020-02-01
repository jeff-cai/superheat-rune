killall superheat.sh

echo "starting in 5 seconds"
xdotool sleep 5

#windowname RuneScape


## bank
loop=0
while [ $loop -lt 159 ]; do
    xdotool mousemove --sync 1400 400 
    xdotool sleep 0.1
    xdotool click --repeat 2 1 # talk to banker
    xdotool sleep 1 # need to wait for interface to open. can't reduce past 1
    xdotool mousemove --sync 1400 430 
    xdotool click 3 # right click menu
    xdotool sleep 0.3
    xdotool mousemove --sync 1400 470
    xdotool sleep 0.3
    xdotool click 1 # select "fill"
    xdotool key --delay 100 '2' # key presses need delay
    xdotool sleep 0.3
    
    # backpack
    xdotool mousemove --sync 2484 1020
    xdotool sleep 0.5
    
    # superheating
    ore_counter=0
    while [ $ore_counter -lt 11 ]; do
        xdotool key --delay 100 '2' # needs delay or else lossy
        xdotool click 1
        xdotool sleep 1.0 # superheat spell cooldown is 1.2s. 0.1+1s works well
        let ore_counter=ore_counter+1
    done
    let loop=loop+1
    echo -n $loop,
done 
