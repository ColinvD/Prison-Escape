/// scr_GetClosestPlatformUnder(currentObject)

var numPlatforms = instance_number(obj_Platform);
var currentPlatform = -1;
var closestPlatform = -1;
var currentObject = argument0;

if (currentObject != noone)
{

    for(var i = 0; i < numPlatforms; i++)
    {
        currentPlatform = instance_find(obj_Platform, i);
        if (closestPlatform == -1)
        {
            closestPlatform = currentPlatform;
        }
        else
        {
            if ( abs(currentObject.bbox_bottom - currentPlatform.bbox_top) <= abs(currentObject.bbox_bottom - closestPlatform.bbox_top) )
            {
                if( currentObject.bbox_left >= currentPlatform.bbox_left && currentObject.bbox_right <= currentPlatform.bbox_right)
                {
                    closestPlatform = currentPlatform;
                }
            }
        }
    }
    
    return closestPlatform;
}
else
{
    return -1;
}
