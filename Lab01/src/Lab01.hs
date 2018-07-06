module Lab01 where

thisIsLab01 = "This is Lab 1"

type Coord
      = ( Double   -- x-coordinate (metres)
        , Double   -- y-coordinate (metres)
        )
 
type Distance = Double  -- distance (metres)

type Path = [Coord]
 
 
{-  
  Implement the function 'sqr' that squares its argument
-}       
sqr :: Double -> Double
sqr d = d*d


{-
  The function 'distance' 
  that computes the Pythagorean distance
  between its two coordinate arguments
-}
distance :: Coord -> Coord -> Distance
distance (x1,y1) (x2,y2)  = sqrt(sqr(x1 - x2)+sqr(y1 -y2))

{-  The function pathlength
    computes the length of a Path
-}
pathlength :: Path -> Distance
pathlength [] = 0.0
pathlength [e] = 0.0
pathlength (x:y:xs) = (distance x y) + (pathlength z)
    where z = y:xs  


_c01,_c02,_c03,_c04,_c05,_c06,_c07,_c08,_c09,_c10 :: Coord
_c01 = (0,0)
_c02 = (0,1)
_c03 = (1,0)
_c04 = (1,1)
_c05 = (2,0)
_c06 = (0,2)
_c07 = (2,2)
_c08 = (3,0)
_c09 = (0,3)
_c10 = (3,3)


_path0 = []
_path1 = _c06 : _path0
_path2 = _c01 : _path1
_path3 = _c10 : _path2
_path4 = _c08 : _path3
_path5 = _c02 : _path4


