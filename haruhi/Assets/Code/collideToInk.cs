using UnityEngine;


public class collideToInk : MonoBehaviour
{//document containing an ink script that you can read as many times as you want
    public TextAsset inkAsset;
    
    private void OnTriggerEnter2D(Collider2D col)
    {
        if (col.GetComponent<Player>())
        {//case where player collided with it
            InkHandler.instance.StartTalk(inkAsset);
        }
    }
}
