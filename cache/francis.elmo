Elm.GameSkeleton = Elm.GameSkeleton || {};
Elm.GameSkeleton.make = function (_elm) {
   "use strict";
   _elm.GameSkeleton = _elm.GameSkeleton || {};
   if (_elm.GameSkeleton.values)
   return _elm.GameSkeleton.values;
   var _op = {},
   _N = Elm.Native,
   _U = _N.Utils.make(_elm),
   _L = _N.List.make(_elm),
   _A = _N.Array.make(_elm),
   _E = _N.Error.make(_elm),
   $moduleName = "GameSkeleton",
   $Basics = Elm.Basics.make(_elm),
   $Color = Elm.Color.make(_elm),
   $Graphics$Collage = Elm.Graphics.Collage.make(_elm),
   $Graphics$Element = Elm.Graphics.Element.make(_elm),
   $Mouse = Elm.Mouse.make(_elm),
   $Signal = Elm.Signal.make(_elm),
   $Time = Elm.Time.make(_elm),
   $Window = Elm.Window.make(_elm);
   var delta = $Time.fps(35);
   var make = F2(function (obj,
   shape) {
      return $Graphics$Collage.move({ctor: "_Tuple2"
                                    ,_0: obj.x
                                    ,_1: obj.y})($Graphics$Collage.filled($Color.brown)(shape));
   });
   var bgColor = A3($Color.rgb,
   200,
   200,
   200);
   var near = F3(function (n,c,m) {
      return _U.cmp(m,
      n - c) > -1 && _U.cmp(m,
      n + c) < 1;
   });
   var within = F2(function (player,
   beard) {
      return A2(near,
      beard.x,
      beard.w / 2)(player.x) && A2(near,
      beard.y,
      beard.h / 2)(player.y);
   });
   var stepBeard = F3(function (timeDelta,
   player,
   beard) {
      return _U.replace([["shaven"
                         ,A2(within,
                         player,
                         beard) ? true : beard.shaven]
                        ,["y"
                         ,beard.shaven ? beard.y - 10 : beard.y]],
      beard);
   });
   var GameState = function (a) {
      return function (b) {
         return function (c) {
            return function (d) {
               return function (e) {
                  return function (f) {
                     return function (g) {
                        return function (h) {
                           return function (i) {
                              return function (j) {
                                 return function (k) {
                                    return function (l) {
                                       return function (m) {
                                          return function (n) {
                                             return function (o) {
                                                return function (p) {
                                                   return function (q) {
                                                      return function (r) {
                                                         return function (s) {
                                                            return function (t) {
                                                               return function (u) {
                                                                  return function (v) {
                                                                     return function (w) {
                                                                        return function (x) {
                                                                           return function (y) {
                                                                              return function (z) {
                                                                                 return function (_1) {
                                                                                    return function (_2) {
                                                                                       return function (_3) {
                                                                                          return {_: {}
                                                                                                 ,beard0: b
                                                                                                 ,beard1: c
                                                                                                 ,beard10: l
                                                                                                 ,beard11: m
                                                                                                 ,beard12: n
                                                                                                 ,beard13: o
                                                                                                 ,beard14: p
                                                                                                 ,beard15: q
                                                                                                 ,beard16: r
                                                                                                 ,beard17: s
                                                                                                 ,beard18: t
                                                                                                 ,beard19: u
                                                                                                 ,beard2: d
                                                                                                 ,beard20: v
                                                                                                 ,beard21: w
                                                                                                 ,beard22: x
                                                                                                 ,beard23: y
                                                                                                 ,beard24: z
                                                                                                 ,beard25: _1
                                                                                                 ,beard26: _2
                                                                                                 ,beard27: _3
                                                                                                 ,beard3: e
                                                                                                 ,beard4: f
                                                                                                 ,beard5: g
                                                                                                 ,beard6: h
                                                                                                 ,beard7: i
                                                                                                 ,beard8: j
                                                                                                 ,beard9: k
                                                                                                 ,player1: a};
                                                                                       };
                                                                                    };
                                                                                 };
                                                                              };
                                                                           };
                                                                        };
                                                                     };
                                                                  };
                                                               };
                                                            };
                                                         };
                                                      };
                                                   };
                                                };
                                             };
                                          };
                                       };
                                    };
                                 };
                              };
                           };
                        };
                     };
                  };
               };
            };
         };
      };
   };
   var beard = function (_v0) {
      return function () {
         switch (_v0.ctor)
         {case "_Tuple5": return {_: {}
                                 ,h: _v0._4
                                 ,shaven: _v0._2
                                 ,w: _v0._3
                                 ,x: _v0._0
                                 ,y: _v0._1};}
         _E.Case($moduleName,
         "on line 52, column 32 to 65");
      }();
   };
   var Beard = F5(function (a,
   b,
   c,
   d,
   e) {
      return {_: {}
             ,h: e
             ,shaven: c
             ,w: d
             ,x: a
             ,y: b};
   });
   var player = function (_v7) {
      return function () {
         switch (_v7.ctor)
         {case "_Tuple2": return {_: {}
                                 ,x: _v7._0
                                 ,y: _v7._1};}
         _E.Case($moduleName,
         "on line 48, column 19 to 27");
      }();
   };
   var Player = F2(function (a,b) {
      return {_: {},x: a,y: b};
   });
   var $ = {ctor: "_Tuple2"
           ,_0: 870
           ,_1: 670},
   gameWidth = $._0,
   gameHeight = $._1;
   var $ = {ctor: "_Tuple2"
           ,_0: gameWidth / 2
           ,_1: gameHeight / 2},
   halfWidth = $._0,
   halfHeight = $._1;
   var defaultGame = {_: {}
                     ,beard0: beard({ctor: "_Tuple5"
                                    ,_0: -110.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard1: beard({ctor: "_Tuple5"
                                    ,_0: -60.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard10: beard({ctor: "_Tuple5"
                                     ,_0: 40.0
                                     ,_1: -90.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard11: beard({ctor: "_Tuple5"
                                     ,_0: 90.0
                                     ,_1: -90.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard12: beard({ctor: "_Tuple5"
                                     ,_0: 140.0
                                     ,_1: -90.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard13: beard({ctor: "_Tuple5"
                                     ,_0: 190.0
                                     ,_1: -90.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard14: beard({ctor: "_Tuple5"
                                     ,_0: -110.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard15: beard({ctor: "_Tuple5"
                                     ,_0: -60.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard16: beard({ctor: "_Tuple5"
                                     ,_0: -10.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard17: beard({ctor: "_Tuple5"
                                     ,_0: 40.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard18: beard({ctor: "_Tuple5"
                                     ,_0: 90.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard19: beard({ctor: "_Tuple5"
                                     ,_0: 140.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard2: beard({ctor: "_Tuple5"
                                    ,_0: -10.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard20: beard({ctor: "_Tuple5"
                                     ,_0: 190.0
                                     ,_1: -140.0
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 50})
                     ,beard21: beard({ctor: "_Tuple5"
                                     ,_0: -110.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard22: beard({ctor: "_Tuple5"
                                     ,_0: -60.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard23: beard({ctor: "_Tuple5"
                                     ,_0: -10.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard24: beard({ctor: "_Tuple5"
                                     ,_0: 40.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard25: beard({ctor: "_Tuple5"
                                     ,_0: 90.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard26: beard({ctor: "_Tuple5"
                                     ,_0: 140.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard27: beard({ctor: "_Tuple5"
                                     ,_0: 190.0
                                     ,_1: -247.5
                                     ,_2: false
                                     ,_3: 50
                                     ,_4: 165})
                     ,beard3: beard({ctor: "_Tuple5"
                                    ,_0: 40.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard4: beard({ctor: "_Tuple5"
                                    ,_0: 90.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard5: beard({ctor: "_Tuple5"
                                    ,_0: 140.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard6: beard({ctor: "_Tuple5"
                                    ,_0: 190.0
                                    ,_1: -40.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard7: beard({ctor: "_Tuple5"
                                    ,_0: -110.0
                                    ,_1: -90.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard8: beard({ctor: "_Tuple5"
                                    ,_0: -60.0
                                    ,_1: -90.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,beard9: beard({ctor: "_Tuple5"
                                    ,_0: -10.0
                                    ,_1: -90.0
                                    ,_2: false
                                    ,_3: 50
                                    ,_4: 50})
                     ,player1: player({ctor: "_Tuple2"
                                      ,_0: 0.0 - halfWidth
                                      ,_1: 0.0 - halfHeight})};
   var stepPlyr = F2(function (_v11,
   player) {
      return function () {
         switch (_v11.ctor)
         {case "_Tuple2":
            return _U.replace([["x"
                               ,$Basics.toFloat(_v11._0) - halfWidth]
                              ,["y"
                               ,$Basics.toFloat(0 - _v11._1) + halfHeight]],
              player);}
         _E.Case($moduleName,
         "between lines 112 and 113");
      }();
   });
   var stepGame = F2(function (_v15,
   game) {
      return function () {
         return _U.replace([["player1"
                            ,A2(stepPlyr,
                            _v15.userInput.mp,
                            game.player1)]
                           ,["beard1"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard1)]
                           ,["beard2"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard2)]
                           ,["beard3"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard3)]
                           ,["beard4"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard4)]
                           ,["beard5"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard5)]
                           ,["beard6"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard6)]
                           ,["beard7"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard7)]
                           ,["beard8"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard8)]
                           ,["beard9"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard9)]
                           ,["beard10"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard10)]
                           ,["beard11"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard11)]
                           ,["beard12"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard12)]
                           ,["beard13"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard13)]
                           ,["beard14"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard14)]
                           ,["beard15"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard15)]
                           ,["beard16"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard16)]
                           ,["beard17"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard17)]
                           ,["beard18"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard18)]
                           ,["beard19"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard19)]
                           ,["beard20"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard20)]
                           ,["beard21"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard21)]
                           ,["beard22"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard22)]
                           ,["beard23"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard23)]
                           ,["beard24"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard24)]
                           ,["beard25"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard25)]
                           ,["beard26"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard26)]
                           ,["beard27"
                            ,A3(stepBeard,
                            _v15.timeDelta,
                            game.player1,
                            game.beard27)]],
         game);
      }();
   });
   var display = F2(function (_v17,
   _v18) {
      return function () {
         return function () {
            switch (_v17.ctor)
            {case "_Tuple2":
               return A3($Graphics$Element.container,
                 _v17._0,
                 _v17._1,
                 $Graphics$Element.topLeft)(A3($Graphics$Collage.collage,
                 gameWidth,
                 gameHeight,
                 _L.fromArray([$Graphics$Collage.filled(bgColor)(A2($Graphics$Collage.rect,
                              gameWidth,
                              gameHeight))
                              ,$Graphics$Collage.toForm(A3($Graphics$Element.image,
                              gameWidth,
                              gameHeight,
                              "francis.png"))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard0.x
                              ,_1: _v18.beard0.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "0-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard1.x
                              ,_1: _v18.beard1.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "1-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard2.x
                              ,_1: _v18.beard2.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "2-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard3.x
                              ,_1: _v18.beard3.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "3-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard4.x
                              ,_1: _v18.beard4.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "4-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard5.x
                              ,_1: _v18.beard5.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "5-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard6.x
                              ,_1: _v18.beard6.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "6-0.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard7.x
                              ,_1: _v18.beard7.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "0-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard8.x
                              ,_1: _v18.beard8.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "1-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard9.x
                              ,_1: _v18.beard9.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "2-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard10.x
                              ,_1: _v18.beard10.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "3-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard11.x
                              ,_1: _v18.beard11.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "4-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard12.x
                              ,_1: _v18.beard12.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "5-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard13.x
                              ,_1: _v18.beard13.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "6-1.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard14.x
                              ,_1: _v18.beard14.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "0-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard15.x
                              ,_1: _v18.beard15.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "1-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard16.x
                              ,_1: _v18.beard16.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "2-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard17.x
                              ,_1: _v18.beard17.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "3-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard18.x
                              ,_1: _v18.beard18.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "4-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard19.x
                              ,_1: _v18.beard19.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "5-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard20.x
                              ,_1: _v18.beard20.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              50,
                              "6-2.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard21.x
                              ,_1: _v18.beard21.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "0-3.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard22.x
                              ,_1: _v18.beard22.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "1-3.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard23.x
                              ,_1: _v18.beard23.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "2-3.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard24.x
                              ,_1: _v18.beard24.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "3-3.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard25.x
                              ,_1: _v18.beard25.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "4-3.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard26.x
                              ,_1: _v18.beard26.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "5-3.png")))
                              ,A2($Graphics$Collage.move,
                              {ctor: "_Tuple2"
                              ,_0: _v18.beard27.x
                              ,_1: _v18.beard27.y},
                              $Graphics$Collage.toForm(A3($Graphics$Element.image,
                              50,
                              165,
                              "6-3.png")))])));}
            _E.Case($moduleName,
            "between lines 176 and 207");
         }();
      }();
   });
   var Input = F2(function (a,b) {
      return {_: {}
             ,timeDelta: a
             ,userInput: b};
   });
   var UserInput = function (a) {
      return {_: {},mp: a};
   };
   var userInput = A2($Signal._op["<~"],
   UserInput,
   $Mouse.position);
   var input = A2($Signal.sampleOn,
   delta,
   A3($Signal.lift2,
   Input,
   delta,
   userInput));
   var gameState = A3($Signal.foldp,
   stepGame,
   defaultGame,
   input);
   var main = A3($Signal.lift2,
   display,
   $Window.dimensions,
   gameState);
   _elm.GameSkeleton.values = {_op: _op
                              ,UserInput: UserInput
                              ,userInput: userInput
                              ,Input: Input
                              ,gameHeight: gameHeight
                              ,gameWidth: gameWidth
                              ,halfHeight: halfHeight
                              ,halfWidth: halfWidth
                              ,Player: Player
                              ,player: player
                              ,Beard: Beard
                              ,beard: beard
                              ,GameState: GameState
                              ,defaultGame: defaultGame
                              ,near: near
                              ,within: within
                              ,stepPlyr: stepPlyr
                              ,stepBeard: stepBeard
                              ,stepGame: stepGame
                              ,bgColor: bgColor
                              ,make: make
                              ,display: display
                              ,delta: delta
                              ,input: input
                              ,gameState: gameState
                              ,main: main};
   return _elm.GameSkeleton.values;
};