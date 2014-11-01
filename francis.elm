module GameSkeleton where

import Window
import Keyboard
import Text
import Mouse

{-- Part 1: Model the user input ----------------------------------------------

What information do you need to represent all relevant user input?

Task: Redefine `UserInput` to include all of the information you need.
      Redefine `userInput` to be a signal that correctly models the user
      input as described by `UserInput`.

------------------------------------------------------------------------------}

type UserInput = {mp:(Int,Int)}

userInput : Signal UserInput
userInput = (UserInput <~ Mouse.position)

type Input = { timeDelta:Float, userInput:UserInput}



{-- Part 2: Model the game ----------------------------------------------------

What information do you need to represent the entire game?

Tasks: Redefine `GameState` to represent your particular game.
       Redefine `defaultGame` to represent your initial game state.

For example, if you want to represent many objects that just have a position,
your GameState might just be a list of coordinates and your default game might
be an empty list (no objects at the start):

    type GameState = { objects : [(Float,Float)] }
    defaultGame = { objects = [] }

------------------------------------------------------------------------------}

(gameWidth,gameHeight) = (870,670)
(halfWidth,halfHeight) = (gameWidth / 2, gameHeight /2)

type Player = { x:Float, y:Float }
player : (Float, Float) -> Player
player (x, y) = { x=x, y=y }

type Beard = { x:Float, y:Float, shaven:Bool, w:Float, h:Float }
beard : (Float, Float, Bool, Float, Float) -> Beard
beard (x, y, shaven, w, h) = { x=x, y=y, shaven=shaven, w=w, h=h }

type GameState = { player1:Player, beard0:Beard, beard1:Beard, beard2:Beard, beard3:Beard, beard4:Beard, beard5:Beard, beard6:Beard,
                                   beard7:Beard, beard8:Beard, beard9:Beard, beard10:Beard, beard11:Beard, beard12:Beard, beard13:Beard,
                                   beard14:Beard, beard15:Beard, beard16:Beard, beard17:Beard, beard18:Beard, beard19:Beard, beard20:Beard,
                                   beard21:Beard, beard22:Beard, beard23:Beard, beard24:Beard, beard25:Beard, beard26:Beard, beard27:Beard }

defaultGame : GameState
defaultGame =
    { player1 = player (0.0 - halfWidth, 0.0 - halfHeight),
      beard0 = beard (-110.0, -40.0, False, 50, 50),
      beard1 = beard (-60.0, -40.0, False, 50, 50),
      beard2 = beard (-10.0, -40.0, False, 50, 50),
      beard3 = beard (40.0, -40.0, False, 50, 50),
      beard4 = beard (90.0, -40.0, False, 50, 50),
      beard5 = beard (140.0, -40.0, False, 50, 50),
      beard6 = beard (190.0, -40.0, False, 50, 50),
      beard7 = beard (-110.0, -90.0, False, 50, 50),
      beard8 = beard (-60.0, -90.0, False, 50, 50),
      beard9 = beard (-10.0, -90.0, False, 50, 50),
      beard10 = beard (40.0, -90.0, False, 50, 50),
      beard11 = beard (90.0, -90.0, False, 50, 50),
      beard12 = beard (140.0, -90.0, False, 50, 50),
      beard13 = beard (190.0, -90.0, False, 50, 50),
      beard14 = beard (-110.0, -140.0, False, 50, 50),
      beard15 = beard (-60.0, -140.0, False, 50, 50),
      beard16 = beard (-10.0, -140.0, False, 50, 50),
      beard17 = beard (40.0, -140.0, False, 50, 50),
      beard18 = beard (90.0, -140.0, False, 50, 50),
      beard19 = beard (140.0, -140.0, False, 50, 50),
      beard20 = beard (190.0, -140.0, False, 50, 50),
      beard21 = beard (-110.0, -247.5, False, 50, 165),
      beard22 = beard (-60.0, -247.5, False, 50, 165),
      beard23 = beard (-10.0, -247.5, False, 50, 165),
      beard24 = beard (40.0, -247.5, False, 50, 165),
      beard25 = beard (90.0, -247.5, False, 50, 165),
      beard26 = beard (140.0, -247.5, False, 50, 165),
      beard27 = beard (190.0, -247.5, False, 50, 165)
    }



{-- Part 3: Update the game ---------------------------------------------------

How does the game step from one state to another based on user input?

Task: redefine `stepGame` to use the UserInput and GameState
      you defined in parts 1 and 2. Maybe use some helper functions
      to break up the work, stepping smaller parts of the game.

------------------------------------------------------------------------------}
near : Float -> Float -> Float -> Bool
near n c m = m >= n-c && m <= n+c

within : Player -> Beard -> Bool
within player beard =
    (player.x |> near beard.x (beard.w/2))  && (player.y |> near beard.y (beard.h/2))

stepPlyr : (Int,Int) -> Player -> Player
stepPlyr (mx,my) player = 
    { player | x <- toFloat mx - halfWidth
             , y <- toFloat (0 - my) + halfHeight
    }
    
stepBeard : Float -> Player -> Beard -> Beard
stepBeard timeDelta player beard =
  --let rand = Random.float timeDelta
   {
      beard | shaven <- if player `within` beard then True else beard.shaven
            , y <- if beard.shaven then beard.y - 10 else beard.y
     }


stepGame : Input -> GameState -> GameState
stepGame ({timeDelta, userInput } as input) game = 
    { game | player1 <- stepPlyr userInput.mp game.player1
           , beard1 <- stepBeard timeDelta game.player1 game.beard1
           , beard2 <- stepBeard timeDelta game.player1 game.beard2
           , beard3 <- stepBeard timeDelta game.player1 game.beard3
           , beard4 <- stepBeard timeDelta game.player1 game.beard4
           , beard5 <- stepBeard timeDelta game.player1 game.beard5
           , beard6 <- stepBeard timeDelta game.player1 game.beard6
           , beard7 <- stepBeard timeDelta game.player1 game.beard7
           , beard8 <- stepBeard timeDelta game.player1 game.beard8
           , beard9 <- stepBeard timeDelta game.player1 game.beard9
           , beard10 <- stepBeard timeDelta game.player1 game.beard10
           , beard11 <- stepBeard timeDelta game.player1 game.beard11
           , beard12 <- stepBeard timeDelta game.player1 game.beard12
           , beard13 <- stepBeard timeDelta game.player1 game.beard13
           , beard14 <- stepBeard timeDelta game.player1 game.beard14
           , beard15 <- stepBeard timeDelta game.player1 game.beard15
           , beard16 <- stepBeard timeDelta game.player1 game.beard16
           , beard17 <- stepBeard timeDelta game.player1 game.beard17
           , beard18 <- stepBeard timeDelta game.player1 game.beard18
           , beard19 <- stepBeard timeDelta game.player1 game.beard19
           , beard20 <- stepBeard timeDelta game.player1 game.beard20
           , beard21 <- stepBeard timeDelta game.player1 game.beard21
           , beard22 <- stepBeard timeDelta game.player1 game.beard22
           , beard23 <- stepBeard timeDelta game.player1 game.beard23
           , beard24 <- stepBeard timeDelta game.player1 game.beard24
           , beard25 <- stepBeard timeDelta game.player1 game.beard25
           , beard26 <- stepBeard timeDelta game.player1 game.beard26
           , beard27 <- stepBeard timeDelta game.player1 game.beard27
    }

{-- Part 4: Display the game --------------------------------------------------

How should the GameState be displayed to the user?

Task: redefine `display` to use the GameState you defined in part 2.

------------------------------------------------------------------------------}

bgColor = rgb 200 200 200
make obj shape =
    shape |> filled brown
          |> move (obj.x, obj.y)

display : (Int,Int) -> GameState -> Element
--  display (w,h) gameState = asText gameState
display (w,h) {player1, beard0, beard1, beard2, beard3, beard4, beard5, beard6,
                        beard7, beard8, beard9, beard10, beard11, beard12, beard13,
                        beard14, beard15, beard16, beard17, beard18, beard19, beard20,
                        beard21, beard22, beard23, beard24, beard25, beard26, beard27} = 
    container w h topLeft <| collage gameWidth gameHeight
      [ rect gameWidth gameHeight |> filled bgColor
      , (toForm (image gameWidth gameHeight "francis.png"))
      , move (beard0.x, beard0.y) (toForm (image 50 50 "0-0.png"))
      , move (beard1.x, beard1.y) (toForm (image 50 50 "1-0.png"))
      , move (beard2.x, beard2.y) (toForm (image 50 50 "2-0.png"))
      , move (beard3.x, beard3.y) (toForm (image 50 50 "3-0.png"))
      , move (beard4.x, beard4.y) (toForm (image 50 50 "4-0.png"))
      , move (beard5.x, beard5.y) (toForm (image 50 50 "5-0.png"))
      , move (beard6.x, beard6.y) (toForm (image 50 50 "6-0.png"))
      , move (beard7.x, beard7.y) (toForm (image 50 50 "0-1.png"))
      , move (beard8.x, beard8.y) (toForm (image 50 50 "1-1.png"))
      , move (beard9.x, beard9.y) (toForm (image 50 50 "2-1.png"))
      , move (beard10.x, beard10.y) (toForm (image 50 50 "3-1.png"))
      , move (beard11.x, beard11.y) (toForm (image 50 50 "4-1.png"))
      , move (beard12.x, beard12.y) (toForm (image 50 50 "5-1.png"))
      , move (beard13.x, beard13.y) (toForm (image 50 50 "6-1.png"))      
      , move (beard14.x, beard14.y) (toForm (image 50 50 "0-2.png"))
      , move (beard15.x, beard15.y) (toForm (image 50 50 "1-2.png"))
      , move (beard16.x, beard16.y) (toForm (image 50 50 "2-2.png"))
      , move (beard17.x, beard17.y) (toForm (image 50 50 "3-2.png"))
      , move (beard18.x, beard18.y) (toForm (image 50 50 "4-2.png"))
      , move (beard19.x, beard19.y) (toForm (image 50 50 "5-2.png"))
      , move (beard20.x, beard20.y) (toForm (image 50 50 "6-2.png"))
      , move (beard21.x, beard21.y) (toForm (image 50 165 "0-3.png"))
      , move (beard22.x, beard22.y) (toForm (image 50 165 "1-3.png"))
      , move (beard23.x, beard23.y) (toForm (image 50 165 "2-3.png"))
      , move (beard24.x, beard24.y) (toForm (image 50 165 "3-3.png"))
      , move (beard25.x, beard25.y) (toForm (image 50 165 "4-3.png"))
      , move (beard26.x, beard26.y) (toForm (image 50 165 "5-3.png"))
      , move (beard27.x, beard27.y) (toForm (image 50 165 "6-3.png"))
      ]


{-- That's all folks! ---------------------------------------------------------

The following code puts it all together and shows it on screen.

------------------------------------------------------------------------------}

delta = fps 35
input = sampleOn delta (lift2 Input delta userInput)

gameState = foldp stepGame defaultGame input

main = lift2 display Window.dimensions gameState

--rand = Random.float delta
--main = lift asText rand