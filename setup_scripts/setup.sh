#spednar audio setup script
echo 'beginning audio setup.. plug in interface now'
sleep 5

(qjackctl)& #jack interface and server
sleep 8 #allow time to initialize

# Other sounds
#(din)& #DIN is Noise

# Mix & Record
(qjackrcd)& 
#(jack_mixer -c mixer_fr2i4)& #mixing/routing console

# Mastering - Compression - Effects
#(jamin)& #master
#(rakarrack)& #post-effects unit
(calfjackhost --load /home/sped/Audio/calf\ racks/limit_compress)&

# Visuals
#(lebiniou -i alsa)&
#projectM-jack #milkdrop with jack input
