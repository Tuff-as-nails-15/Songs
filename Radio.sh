#Seed Random Generator
RANDOM=$$$(date +%s)

#List Songs as Strings in an Array
songs=(
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/PMUOYWD.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/YAMSS.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/B2L.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/BEJ.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/IAS.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/IReallyDontWantToKnow.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/Dust.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/TennesseeWaltz.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/SweetSunnySouth.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/SmokeRings.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/RedRiverValley.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/ItTakesAnOldHen.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/ItMakesNoDifferenceNow.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/DrinkinAndDreamin.wav'
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitteri/BillyVenero.wav'
)

#List Bumpers as Strings in an Array
bumpers=(
'sudo /home/tuff2/fm_transmitter/fm_transmitter -f 101.9 /home/tuff2/fm_transmitter/bumper1.wav'
)

#Loop 
while true
do
for (( c=1; c<=2; c++ ))  
    do
    #Get random Song From Array
    selectedSong=${songs[ $RANDOM % ${#songs[@]} ]}

    #Writes songs to a txt file
    echo $selectedSong >> /home/tuff2/fm_transmitter/Songs.txt
    
    #Waits 1 second
    sleep 1 
    done

#Plays the songs from the file
bash Songs.txt

#Erases the File after Operation
> /home/tuff2/fm_transmitter/Songs.txt

#Selects Random Bumper
    selectedBumper=${bumpers[ $RANDOM % ${#bumpers[@]} ]}

#Writes Bumper to a txt File 
    echo $selectedBumper >> /home/tuff2/fm_transmitter/Bumpers.txt

#Plays the bumper from the file
    bash /home/tuff2/fm_transmitter/Bumpers.txt

#Erases the File after Operation
       > /home/tuff2/fm_transmitter/Bumpers.txt
done
