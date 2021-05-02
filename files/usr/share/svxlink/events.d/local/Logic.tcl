
# Round Value
$
proc rndValue {a} {
  puts "Got $a";
  set rndValue [format "%.1f" $a];
  set rndIValue [format "%.0f" $rndValue];
  #puts "rndIValue $rndValue";
  #puts "format with no dec [format "%.0f" $a]";
  if {$rndValue  == $rndIValue} { set rndValue $rndIValue; }
  return $rndValue;
}

# Degrees to Cardinal
#
proc degreesToCardinal {a} {
  if {$a >= 0 && $a < 22.5} { return "dir_n";}
  if {$a >= 337.5 && $a <= 360} { return "dir_n";}
  if {$a >= 292.5 && $a < 337.5} { return "dir_nw";}
  if {$a >= 247.5 && $a < 292.5} { return "dir_w";}
  if {$a >= 202.5 && $a < 247.5} { return "dir_sw";}
  if {$a >= 157.5 && $a < 202.5} { return "dir_s";}
  if {$a >= 112.5 && $a < 157.5} { return "dir_se";}
  if {$a >= 67.5 && $a < 112.5} { return "dir_e";}
  if {$a >= 22.5 && $a < 67.5} { return "dir_ne";}
  return "dir_north";
 }


#  This function checks if there has been lightning in the passed 15 Minutes and plays an alert if there has been
#

proc lightningAlert {}  {

  set minsSinceLightning 0;

  set filename "/usr/share/eiab/scripts/weather/lightning.last.time";
  if { [file exists $filename] == 1} {
        set flightninglasttime [open $filename "r"];
        set lightninglasttime [gets $flightninglasttime]; 
  if { $lightninglasttime == "" } {
    return;
  }

 puts $lightninglasttime;
   set lightninglasttime [regsub "T" $lightninglasttime " "];
   set lightninglasttime [regsub "Z" $lightninglasttime ""];
   set time [clock scan $lightninglasttime];

   puts $lightninglasttime;
   puts $time;
   set timenow [clock seconds]
   set minsSinceLightning  [expr (($timenow-$time)/3600.0)*60 ];

  # Play lightning Alert
  if {$minsSinceLightning <= 15} {
    playMsg "Weather" "lightningalert";
  }

  #close flightninglasttime;
  } else {
   puts "Can't find $filename for lightning last time";
  }

  # Play lightning Alert
 # if {$minsSinceLightning <= 15} {
 #   playMsg "Weather" "lightningalert";
 # }
  return;
}

# This Function collects the weather report_ctcss
#

proc weatherReport {} {
  set filename "/usr/share/eiab/scripts/weather/temp.value";
  if { [file exists $filename] == 1} {
 	set f [open $filename "r"];
	set temp [gets $f];
        set temp [rndValue $temp];
	puts "Got temperature $temp";
	close $f
  } 

  set filename "/usr/share/eiab/scripts/weather/humidity.value";
  if { [file exists $filename] == 1} {  
	set f [open $filename "r"];
  	set humidity [gets $f];
        set humidity [rndValue $humidity];
	puts "Got Humidity $humidity";
	close $f
  }

  set filename "/usr/share/eiab/scripts/weather/wind.speed.value";
  if { [file exists $filename] == 1} {
  	set fwindspeed [open $filename "r"];
  	set windspeed  [gets $f];
        set windspeed [rndValue $windspeed];
  	close $f;
  } else {
    puts "Can't find $filename for wind speed";
  }

  set filename "/usr/share/eiab/scripts/weather/wind.deg.value";
  if { [file exists $filename] == 1} {
	set f [open $filename "r"];
  	set winddeg  [gets $f];
	puts "Got Wind Direction $winddeg";
        set windCard [degreesToCardinal $winddeg];
        puts "Got Cardinal $windCard";
	close $f;
  }

  if { $temp != "null"} {
    playMsg "MetarInfo" "temperature";
    playSilence 50;
    playNumber $temp;
    playSilence 50;
    playMsg "MetarInfo" "unit_degrees";
    playSilence 250;
  }

  #playMsg "MetarInfo" "wind";
  #playSilence 50;
  if { $winddeg != "null" } {
    playMsg "MetarInfo" "wind";
    playSilence 50;
    playMsg "MetarInfo" "direction";
    playSilence 50;
    #playNumber $winddeg;
    playMsg "MetarInfo" $windCard
    playSilence 50;
    #playMsg "MetarInfo" "unit_degrees";
    playSilence 100;

    if { $windspeed > 10} {
      playMsg "MetarInfo" "at"
      playSilence 50;
      playNumber $windspeed;
      playSilence 50;
      playMsg "MetarInfo" "unit_mps"
      playSilence 250;
    }
  }

 return;
}