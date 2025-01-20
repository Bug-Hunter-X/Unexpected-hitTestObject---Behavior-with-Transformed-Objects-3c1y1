function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  if (obj1.hitTestObject(obj2)) {
    return true; 
  }
  return false; 
}