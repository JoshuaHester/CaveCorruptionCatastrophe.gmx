distance = argument0
options = argument1
type = argument2

if(type == "exit"){
    if(distance >= 3 and options !=1){
        player.distance = distance + (choose(1,-1))
    }
    
    destRoom = room_duplicate(choose(hallway1)) 
    
    destRoom.prevRoom = room
    
    return destRoom
}else{
    player.distance++
    return room.prevRoom
}
