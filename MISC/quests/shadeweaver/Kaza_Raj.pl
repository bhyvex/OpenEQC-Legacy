sub EVENT_SAY { 
if($text=~/Hail/i){
quest::say("Ah. greetings!  I am Kaza Raj, trainer of young Vah'shir!  Bring me the items I ask and I will reward you with pieces of armor to protect you in your travels.  I have a fine pair of [gloves] available now if you're interested.");
}
if($text=~/what gloves?/i){
quest::say("Great!  Let's start with the gloves then, shall we?  Gloves, yes indeed - I will give them to you if you go out and kill Cht'Thk Bloodlings.  Bring me four Sharp Bloodling Mandibles as proof of your deeds.");
}
if($text=~/what bracer?/i){
quest::say("Ah yes, a  Bracer. I'm sure I have one here somewhere.  I'll look for it while you do me a service.  Skeletal Brigands and Hunters have been endangering our young ones, seek them out and bring me four Broken Skulls!");
}
if($text=~/what boots?/i){
quest::say("You are doing fine work. I'm so pleased to have met you!  I'm confident you can help me again if you're interested.  The guards have mentioned a problem with Shades roaming too near the city.  I'd like to see if we can do something about that. Go and kill Lesser Shades, and bring me four Shadowed Claws and I will give you some boots as a reward!");
}
if($text=~/what sleeves?/i){
quest::say("Have you seen the Loda Kai in your explorations?  They are a great menace, oh very bad indeed!  They're nothing but criminals and brigands, ooooh how I hate them.. Fetch me four Loda Kai earrings and I shall give you some fine sleeves for your trouble!"); }
}
sub EVENT_ITEM { 
if($itemcount{2460} < 4){
quest::say("I shall only reward you when you bring me four!");
}
if($itemcount{2460} == 4){
quest::say("Excellent!  Here are your Gloves!  Would you like to get a [Bracer]?");
quest::summonitem("2452");
quest::faction("Not_Found","1");
}
if($itemcount{2477} < 4){
quest::say("I will only reward you when you bring me four!");
}
if($itemcount{2477} == 4){
quest::say("Excellent!  Here are your Boots!  Would you like to get some [Sleeves]?");
quest::summonitem("2454");
quest::faction("Not_Found","1"); }
}
#END of FILE Zone:shadeweaver  ID:165102 -- Kaza_Raj 

