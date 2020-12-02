///DebugLog(string,channel)
with oGame {

    //Define what channel we're listening to 
    DebugChannel = "PlayerSpeed"
    
    //Turn what we were given into text
    var DebugString = string(argument0);//,18,6);
    
    //If the channel you're reporting on is the channel we're listening to, and logging is not paused
    if (argument1 = DebugChannel or argument1 = "All") {
        //Is the thing we're logging the same as the thing we just logged? 
        if DebugString = DebugLastLine {
            DebugRepeatedLineCount++
            DebugText[DebugCount-1] = DebugString + " x" + string(DebugRepeatedLineCount + 1);
        //If not
        } else {
            //Note that we're not repeating anything
            DebugRepeatedLineCount = 0
            //Add the string to our array
            DebugText[DebugCount] = DebugString
            //Increase that count
            DebugCount++
        }
        //Remember this line so we can tell if it's repeated next step
        DebugLastLine = DebugString
    }
    
}


