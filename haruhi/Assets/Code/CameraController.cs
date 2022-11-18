using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraController : MonoBehaviour
{
    public Vector3 targetPosition;
    public GameObject playerTarget;
    public GameObject northBound;
    public GameObject eastBound;
    public GameObject southBound;
    public GameObject westBound;
    
    
    void Update()
    {
        //Set targetPosition to the point between the camera and the player.
        targetPosition = Vector3.Slerp(transform.position, playerTarget.transform.position, 1.0f);
        
        //north
        if(targetPosition.y > northBound.transform.position.y){
            targetPosition.y = northBound.transform.position.y;
        }
        //east
        if(targetPosition.x > eastBound.transform.position.x){
            targetPosition.x = eastBound.transform.position.x;
        }
        //west
        if(targetPosition.x < westBound.transform.position.x){
            //The camera will never go left of the leftBound object.
            targetPosition.x = westBound.transform.position.x;
        }
        //south
        if(targetPosition.y < southBound.transform.position.y){
            targetPosition.y = southBound.transform.position.y;
        }
        
        //After all calculations are done, set the camera's position to where it should be
        transform.position = targetPosition;
    }
}
