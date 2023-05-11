{\rtf1\ansi\ansicpg1252\cocoartf2706
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red70\green137\blue204;\red26\green26\blue41;\red172\green172\blue193;
\red212\green212\blue212;\red167\green197\blue152;\red140\green108\blue11;\red45\green175\blue118;\red31\green133\blue64;
\red187\green97\blue44;\red253\green181\blue13;\red13\green102\blue149;\red194\green126\blue101;}
{\*\expandedcolortbl;;\cssrgb\c33725\c61176\c83922;\cssrgb\c13333\c13725\c21176;\cssrgb\c72941\c73333\c80000;
\cssrgb\c86275\c86275\c86275;\cssrgb\c70980\c80784\c65882;\cssrgb\c61961\c49412\c3137;\cssrgb\c19608\c72941\c53725;\cssrgb\c12941\c58039\c31765;
\cssrgb\c78824\c45882\c22353;\cssrgb\c100000\c75686\c2745;\cssrgb\c0\c47843\c65098;\cssrgb\c80784\c56863\c47059;}
\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs24 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 pragma\cf4 \strokec4  \cf2 \strokec2 solidity\cf4 \strokec4  \cf5 \strokec5 ^\cf6 \strokec6 0.8.7\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\
\cf2 \cb3 \strokec2 contract\cf4 \strokec4  FurnitureCrud \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf4 \cb3     \cb1 \
\cb3     \cf2 \strokec2 struct\cf4 \strokec4  Furniture \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  id\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  name\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  color\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  description\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 struct\cf4 \strokec4  UsersFurniture \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  furnitureId\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  userId\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 struct\cf4 \strokec4  User \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  id\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  name\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 string\cf4 \strokec4  lastName\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     User\cf5 \strokec5 []\cf4 \strokec4  users\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     Furniture\cf5 \strokec5 []\cf4 \strokec4  furniture\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     Furniture\cf5 \strokec5 []\cf4 \strokec4  furnitureFound\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     UsersFurniture\cf5 \strokec5 []\cf4 \strokec4  usersFurniture\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 uint\cf4 \strokec4  furnitureNextId \cf5 \strokec5 =\cf4 \strokec4  \cf6 \strokec6 1\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf2 \strokec2 uint\cf4 \strokec4  userNextId \cf5 \strokec5 =\cf4 \strokec4  \cf6 \strokec6 1\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 function\cf4 \strokec4  createFurniture\cf5 \strokec5 (\cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _color\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _description\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         furniture\cf5 \strokec5 .\cf4 \strokec4 push\cf5 \strokec5 (\cf4 \strokec4 Furniture\cf5 \strokec5 (\cf4 \strokec4 furnitureNextId\cf5 \strokec5 ,\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  _color\cf5 \strokec5 ,\cf4 \strokec4  _description\cf5 \strokec5 ));\cf4 \cb1 \strokec4 \
\cb3         furnitureNextId\cf5 \strokec5 ++;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  createUser\cf5 \strokec5 (\cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _lastName\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         users\cf5 \strokec5 .\cf4 \strokec4 push\cf5 \strokec5 (\cf4 \strokec4 User\cf5 \strokec5 (\cf4 \strokec4 userNextId\cf5 \strokec5 ,\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  _lastName\cf5 \strokec5 ));\cf4 \cb1 \strokec4 \
\cb3         userNextId\cf5 \strokec5 ++;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 function\cf4 \strokec4  findFurnitureIndex\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 internal\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf9 \strokec9 returns\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 for\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  i \cf5 \strokec5 =\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 ;\cf4 \strokec4  i \cf5 \strokec5 <\cf4 \strokec4  furniture\cf5 \strokec5 .\cf4 \strokec4 length\cf5 \strokec5 ;\cf4 \strokec4  i\cf5 \strokec5 ++)\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             \cf11 \strokec11 if\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 furniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 id \cf5 \strokec5 ==\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \strokec4                 \cb1 \
\cb3                 \cf9 \strokec9 return\cf4 \strokec4  i\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf12 \strokec12 revert\cf5 \strokec5 (\cf13 \strokec13 "Furniture not found."\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  findUserIndex\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 internal\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf9 \strokec9 returns\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 for\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  i \cf5 \strokec5 =\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 ;\cf4 \strokec4  i \cf5 \strokec5 <\cf4 \strokec4  users\cf5 \strokec5 .\cf4 \strokec4 length\cf5 \strokec5 ;\cf4 \strokec4  i\cf5 \strokec5 ++)\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             \cf11 \strokec11 if\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 users\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 id \cf5 \strokec5 ==\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \strokec4                 \cb1 \
\cb3                 \cf9 \strokec9 return\cf4 \strokec4  i\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf12 \strokec12 revert\cf5 \strokec5 (\cf13 \strokec13 "User not found."\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  findUserFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _furnitureId\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 uint\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 internal\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf9 \strokec9 returns\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 for\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  i \cf5 \strokec5 =\cf4 \strokec4  \cf6 \strokec6 1\cf5 \strokec5 ;\cf4 \strokec4  i \cf5 \strokec5 <=\cf4 \strokec4  usersFurniture\cf5 \strokec5 .\cf4 \strokec4 length\cf5 \strokec5 ;\cf4 \strokec4  i\cf5 \strokec5 ++)\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             \cf11 \strokec11 if\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i \cf5 \strokec5 -\cf4 \strokec4  \cf6 \strokec6 1\cf5 \strokec5 ].\cf4 \strokec4 furnitureId \cf5 \strokec5 ==\cf4 \strokec4  _furnitureId \cf5 \strokec5 &&\cf4 \strokec4  usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i \cf5 \strokec5 -\cf4 \strokec4  \cf6 \strokec6 1\cf5 \strokec5 ].\cf4 \strokec4 userId \cf5 \strokec5 ==\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \strokec4                 \cb1 \
\cb3                 \cf9 \strokec9 return\cf4 \strokec4  i\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf9 \strokec9 return\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  pushToFoundFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  i\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 internal\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         furnitureFound\cf5 \strokec5 .\cf4 \strokec4 push\cf5 \strokec5 (\cf4 \strokec4 Furniture\cf5 \strokec5 (\cf4 \strokec4 furniture\cf5 \strokec5 [\cf4 \strokec4 usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 furnitureId\cf5 \strokec5 ].\cf4 \strokec4 id\cf5 \strokec5 ,\cf4 \strokec4  furniture\cf5 \strokec5 [\cf4 \strokec4 usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 furnitureId\cf5 \strokec5 ].\cf4 \strokec4 name\cf5 \strokec5 ,\cf4 \strokec4  furniture\cf5 \strokec5 [\cf4 \strokec4 usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 furnitureId\cf5 \strokec5 ].\cf4 \strokec4 color\cf5 \strokec5 ,\cf4 \strokec4  furniture\cf5 \strokec5 [\cf4 \strokec4 usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 furnitureId\cf5 \strokec5 ].\cf4 \strokec4 description\cf5 \strokec5 ));\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 function\cf4 \strokec4  updateFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _color\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _description\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  index \cf5 \strokec5 =\cf4 \strokec4   findFurnitureIndex\cf5 \strokec5 (\cf4 \strokec4 _id\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 name \cf5 \strokec5 =\cf4 \strokec4  _name\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 color \cf5 \strokec5 =\cf4 \strokec4  _color\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 description \cf5 \strokec5 =\cf4 \strokec4  _description\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  updateUser\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _name\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf4 \strokec4  _lastName\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  index \cf5 \strokec5 =\cf4 \strokec4   findUserIndex\cf5 \strokec5 (\cf4 \strokec4 _id\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         users\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 name \cf5 \strokec5 =\cf4 \strokec4  _name\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3         users\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 lastName \cf5 \strokec5 =\cf4 \strokec4  _lastName\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 function\cf4 \strokec4  readFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf9 \strokec9 returns\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  index \cf5 \strokec5 =\cf4 \strokec4  findFurnitureIndex\cf5 \strokec5 (\cf4 \strokec4 _id\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cf9 \strokec9 return\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 id\cf5 \strokec5 ,\cf4 \strokec4  furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 name\cf5 \strokec5 ,\cf4 \strokec4  furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 color\cf5 \strokec5 ,\cf4 \strokec4  furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 description\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  readUser\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf8 \strokec8 view\cf4 \strokec4  \cf9 \strokec9 returns\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 string\cf4 \strokec4  \cf7 \strokec7 memory\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  index \cf5 \strokec5 =\cf4 \strokec4  findUserIndex\cf5 \strokec5 (\cf4 \strokec4 _id\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cf9 \strokec9 return\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 users\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 id\cf5 \strokec5 ,\cf4 \strokec4  users\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 name\cf5 \strokec5 ,\cf4 \strokec4  users\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ].\cf4 \strokec4 lastName\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  readUserFurnitureByUserId\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf9 \strokec9 returns\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 Furniture\cf5 \strokec5 []\cf4 \strokec4  \cf7 \strokec7 memory\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf10 \strokec10 for\cf4 \strokec4  \cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  i \cf5 \strokec5 =\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 ;\cf4 \strokec4  i \cf5 \strokec5 <\cf4 \strokec4  usersFurniture\cf5 \strokec5 .\cf4 \strokec4 length\cf5 \strokec5 ;\cf4 \strokec4  i\cf5 \strokec5 ++)\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             \cf11 \strokec11 if\cf4 \strokec4  \cf5 \strokec5 (\cf4 \strokec4 usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 ].\cf4 \strokec4 userId \cf5 \strokec5 ==\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \strokec4     \cb1 \
\cb3                 pushToFoundFurniture\cf5 \strokec5 (\cf4 \strokec4 i\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3             \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf9 \strokec9 return\cf4 \strokec4  furnitureFound\cf5 \strokec5 ;\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cb1 \
\cb3     \cf2 \strokec2 function\cf4 \strokec4  deleteFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  index \cf5 \strokec5 =\cf4 \strokec4  findFurnitureIndex\cf5 \strokec5 (\cf4 \strokec4 _id\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         delete furniture\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ];\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  deleteUser\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _id\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  index \cf5 \strokec5 =\cf4 \strokec4  findUserIndex\cf5 \strokec5 (\cf4 \strokec4 _id\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         delete users\cf5 \strokec5 [\cf4 \strokec4 index\cf5 \strokec5 ];\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  assignFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _furnitureId\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 uint\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 if\cf5 \strokec5 (\cf4 \strokec4 findUserFurniture\cf5 \strokec5 (\cf4 \strokec4 _furnitureId\cf5 \strokec5 ,\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 ==\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             usersFurniture\cf5 \strokec5 .\cf4 \strokec4 push\cf5 \strokec5 (\cf4 \strokec4 UsersFurniture\cf5 \strokec5 (\cf4 \strokec4 _furnitureId\cf5 \strokec5 ,\cf4 \strokec4  _userId\cf5 \strokec5 ));\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 else\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             \cf12 \strokec12 revert\cf5 \strokec5 (\cf13 \strokec13 "Assignment already exists."\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\
\cb3     \cf2 \strokec2 function\cf4 \strokec4  unassignFurniture\cf5 \strokec5 (\cf2 \strokec2 uint\cf4 \strokec4  _furnitureId\cf5 \strokec5 ,\cf4 \strokec4  \cf2 \strokec2 uint\cf4 \strokec4  _userId\cf5 \strokec5 )\cf4 \strokec4  \cf8 \strokec8 public\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3         \cf2 \strokec2 uint\cf4 \strokec4  i \cf5 \strokec5 =\cf4 \strokec4  findUserFurniture\cf5 \strokec5 (\cf4 \strokec4 _furnitureId\cf5 \strokec5 ,\cf4 \strokec4  _userId\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 if\cf5 \strokec5 (\cf4 \strokec4 i \cf5 \strokec5 !=\cf4 \strokec4  \cf6 \strokec6 0\cf5 \strokec5 )\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             delete usersFurniture\cf5 \strokec5 [\cf4 \strokec4 i\cf5 \strokec5 -\cf6 \strokec6 1\cf5 \strokec5 ];\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3         \cf11 \strokec11 else\cf4 \strokec4  \cf5 \strokec5 \{\cf4 \cb1 \strokec4 \
\cb3             \cf12 \strokec12 revert\cf5 \strokec5 (\cf13 \strokec13 "Assignment doesn't exist."\cf5 \strokec5 );\cf4 \cb1 \strokec4 \
\cb3         \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\cb3     \cf5 \strokec5 \}\cf4 \cb1 \strokec4 \
\pard\pardeftab720\partightenfactor0
\cf5 \cb3 \strokec5 \}\cf4 \cb1 \strokec4 \
}