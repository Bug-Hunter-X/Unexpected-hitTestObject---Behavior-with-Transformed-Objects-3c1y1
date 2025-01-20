function checkCollision(obj1:MovieClip, obj2:MovieClip):Boolean {
  // Pixel-perfect collision detection
  var bounds1:Rectangle = obj1.getBounds(obj1.parent);
  var bounds2:Rectangle = obj2.getBounds(obj2.parent);

  if (!bounds1.intersects(bounds2)) return false;

  var bitmapData1:BitmapData = new BitmapData(obj1.width, obj1.height, true, 0x00000000);
  bitmapData1.draw(obj1);
  var bitmapData2:BitmapData = new BitmapData(obj2.width, obj2.height, true, 0x00000000);
  bitmapData2.draw(obj2);

  for (var x:int = bounds1.x; x < bounds1.x + bounds1.width; x++) {
    for (var y:int = bounds1.y; y < bounds1.y + bounds1.height; y++) {
      if (bitmapData1.getPixel(x - bounds1.x, y - bounds1.y) != 0x00000000 && 
          bitmapData2.getPixel(x - bounds2.x, y - bounds2.y) != 0x00000000) {
        return true; 
      }
    }
  }

  return false; 
}
//Alternatively, consider using a library for more advanced collision detection.