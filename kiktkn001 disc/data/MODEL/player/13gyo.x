xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 77;
 6.42417;-7.60264;-4.21772;,
 4.82033;-5.50264;-3.01772;,
 4.17571;-5.50264;0.73229;,
 5.56468;-7.60264;0.78229;,
 2.41458;-5.50264;3.47748;,
 3.21649;-7.60264;4.44254;,
 0.00882;-5.50264;4.48229;,
 0.00882;-7.60264;5.78229;,
 -2.39694;-5.50264;3.47748;,
 -3.19885;-7.60264;4.44254;,
 -4.15808;-5.50264;0.73229;,
 -5.54705;-7.60264;0.78229;,
 -4.80270;-5.50264;-3.01772;,
 -6.40653;-7.60264;-4.21771;,
 -4.15808;-5.50264;-6.76771;,
 -5.54705;-7.60264;-9.21771;,
 -2.39694;-5.50264;-9.51291;,
 -3.19886;-7.60264;-12.87797;,
 0.00881;-5.50264;-10.51772;,
 0.00881;-7.60264;-14.21771;,
 2.41457;-5.50264;-9.51291;,
 3.21648;-7.60264;-12.87798;,
 4.17571;-5.50264;-6.76772;,
 5.56468;-7.60264;-9.21773;,
 4.82033;-5.50264;-3.01772;,
 6.42417;-7.60264;-4.21772;,
 3.21649;-3.10264;-1.61772;,
 2.78675;-3.10264;0.88229;,
 1.61266;-3.10264;2.71241;,
 0.00882;-3.10264;3.38229;,
 -1.59502;-3.10264;2.71241;,
 -2.76911;-3.10264;0.88229;,
 -3.19885;-3.10264;-1.61771;,
 -2.76911;-3.10264;-4.11771;,
 -1.59502;-3.10264;-5.94785;,
 0.00882;-3.10264;-6.61772;,
 1.61265;-3.10264;-5.94784;,
 2.78675;-3.10264;-4.11772;,
 3.21649;-3.10264;-1.61772;,
 1.14001;-0.38688;-0.01771;,
 0.98846;-0.38688;0.86391;,
 0.57441;-0.38688;1.50931;,
 0.00882;-0.38688;1.74554;,
 -0.55678;-0.38688;1.50931;,
 -0.97082;-0.38688;0.86392;,
 -1.12238;-0.38688;-0.01771;,
 -0.97082;-0.38688;-0.89934;,
 -0.55678;-0.38688;-1.54474;,
 0.00881;-0.38688;-1.78097;,
 0.57441;-0.38688;-1.54474;,
 0.98846;-0.38688;-0.89934;,
 1.14001;-0.38688;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;0.02226;-0.01771;,
 0.00882;-7.60264;-4.21772;,
 6.42417;-7.60264;-4.21772;,
 5.56468;-7.60264;0.78229;,
 3.21649;-7.60264;4.44254;,
 0.00882;-7.60264;5.78229;,
 -3.19885;-7.60264;4.44254;,
 -5.54705;-7.60264;0.78229;,
 -6.40653;-7.60264;-4.21771;,
 -5.54705;-7.60264;-9.21771;,
 -3.19886;-7.60264;-12.87797;,
 0.00881;-7.60264;-14.21771;,
 3.21648;-7.60264;-12.87798;,
 5.56468;-7.60264;-9.21773;;
 
 60;
 4;0,1,2,3;,
 4;3,2,4,5;,
 4;5,4,6,7;,
 4;7,6,8,9;,
 4;9,8,10,11;,
 4;11,10,12,13;,
 4;13,12,14,15;,
 4;15,14,16,17;,
 4;17,16,18,19;,
 4;19,18,20,21;,
 4;21,20,22,23;,
 4;23,22,24,25;,
 4;1,26,27,2;,
 4;2,27,28,4;,
 4;4,28,29,6;,
 4;6,29,30,8;,
 4;8,30,31,10;,
 4;10,31,32,12;,
 4;12,32,33,14;,
 4;14,33,34,16;,
 4;16,34,35,18;,
 4;18,35,36,20;,
 4;20,36,37,22;,
 4;22,37,38,24;,
 4;26,39,40,27;,
 4;27,40,41,28;,
 4;28,41,42,29;,
 4;29,42,43,30;,
 4;30,43,44,31;,
 4;31,44,45,32;,
 4;32,45,46,33;,
 4;33,46,47,34;,
 4;34,47,48,35;,
 4;35,48,49,36;,
 4;36,49,50,37;,
 4;37,50,51,38;,
 3;39,52,40;,
 3;40,53,41;,
 3;41,54,42;,
 3;42,55,43;,
 3;43,56,44;,
 3;44,57,45;,
 3;45,58,46;,
 3;46,59,47;,
 3;47,60,48;,
 3;48,61,49;,
 3;49,62,50;,
 3;50,63,51;,
 3;64,65,66;,
 3;64,66,67;,
 3;64,67,68;,
 3;64,68,69;,
 3;64,69,70;,
 3;64,70,71;,
 3;64,71,72;,
 3;64,72,73;,
 3;64,73,74;,
 3;64,74,75;,
 3;64,75,76;,
 3;64,76,65;;
 
 MeshMaterialList {
  4;
  60;
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2,
  2;;
  Material {
   0.000000;0.000000;0.000000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.153725;0.279216;0.800000;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   0.800000;0.530196;0.235294;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
  Material {
   1.000000;1.000000;1.000000;1.000000;;
   0.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  50;
  0.796460;0.604658;0.006344;,
  0.789546;0.529598;0.310070;,
  0.551794;0.512915;0.657602;,
  0.000000;0.526355;0.850265;,
  -0.551794;0.512915;0.657603;,
  -0.789546;0.529597;0.310070;,
  -0.796461;0.604657;0.006344;,
  -0.655424;0.715530;-0.241736;,
  -0.378929;0.822954;-0.423271;,
  -0.000001;0.869686;-0.493606;,
  0.378929;0.822955;-0.423271;,
  0.655423;0.715531;-0.241737;,
  0.815206;0.579135;0.006410;,
  0.808994;0.494423;0.317921;,
  0.568160;0.465771;0.678418;,
  0.000000;0.472639;0.881256;,
  -0.568159;0.465771;0.678419;,
  -0.808994;0.494424;0.317921;,
  -0.815206;0.579135;0.006411;,
  -0.672105;0.697641;-0.248137;,
  -0.389714;0.811327;-0.435742;,
  -0.000000;0.860819;-0.508912;,
  0.389713;0.811328;-0.435742;,
  0.672104;0.697641;-0.248138;,
  0.815099;0.579285;0.006508;,
  0.809881;0.492665;0.318393;,
  0.569391;0.461686;0.680177;,
  0.000001;0.467338;0.884079;,
  -0.569390;0.461686;0.680178;,
  -0.809880;0.492666;0.318394;,
  -0.815099;0.579286;0.006508;,
  -0.671063;0.698824;-0.247630;,
  -0.388577;0.812645;-0.434299;,
  -0.000001;0.861994;-0.506919;,
  0.388576;0.812645;-0.434300;,
  0.671063;0.698823;-0.247630;,
  0.591277;0.806461;0.003393;,
  0.576945;0.785622;0.223454;,
  0.390382;0.798417;0.458401;,
  0.000000;0.815958;0.578111;,
  -0.390381;0.798417;0.458402;,
  -0.576944;0.785623;0.223456;,
  -0.591276;0.806462;0.003393;,
  -0.486176;0.855183;-0.179710;,
  -0.278472;0.908742;-0.310872;,
  -0.000001;0.932809;-0.360371;,
  0.278472;0.908742;-0.310872;,
  0.486177;0.855182;-0.179709;,
  0.000001;1.000000;0.000000;,
  0.000000;-1.000000;-0.000000;;
  60;
  4;0,12,13,1;,
  4;1,13,14,2;,
  4;2,14,15,3;,
  4;3,15,16,4;,
  4;4,16,17,5;,
  4;5,17,18,6;,
  4;6,18,19,7;,
  4;7,19,20,8;,
  4;8,20,21,9;,
  4;9,21,22,10;,
  4;10,22,23,11;,
  4;11,23,12,0;,
  4;12,24,25,13;,
  4;13,25,26,14;,
  4;14,26,27,15;,
  4;15,27,28,16;,
  4;16,28,29,17;,
  4;17,29,30,18;,
  4;18,30,31,19;,
  4;19,31,32,20;,
  4;20,32,33,21;,
  4;21,33,34,22;,
  4;22,34,35,23;,
  4;23,35,24,12;,
  4;24,36,37,25;,
  4;25,37,38,26;,
  4;26,38,39,27;,
  4;27,39,40,28;,
  4;28,40,41,29;,
  4;29,41,42,30;,
  4;30,42,43,31;,
  4;31,43,44,32;,
  4;32,44,45,33;,
  4;33,45,46,34;,
  4;34,46,47,35;,
  4;35,47,36,24;,
  3;36,48,37;,
  3;37,48,38;,
  3;38,48,39;,
  3;39,48,40;,
  3;40,48,41;,
  3;41,48,42;,
  3;42,48,43;,
  3;43,48,44;,
  3;44,48,45;,
  3;45,48,46;,
  3;46,48,47;,
  3;47,48,36;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;,
  3;49,49,49;;
 }
 MeshTextureCoords {
  77;
  0.000000;1.000000;,
  0.000000;0.750000;,
  0.083333;0.750000;,
  0.083333;1.000000;,
  0.166667;0.750000;,
  0.166667;1.000000;,
  0.250000;0.750000;,
  0.250000;1.000000;,
  0.333333;0.750000;,
  0.333333;1.000000;,
  0.416667;0.750000;,
  0.416667;1.000000;,
  0.500000;0.750000;,
  0.500000;1.000000;,
  0.583333;0.750000;,
  0.583333;1.000000;,
  0.666667;0.750000;,
  0.666667;1.000000;,
  0.750000;0.750000;,
  0.750000;1.000000;,
  0.833333;0.750000;,
  0.833333;1.000000;,
  0.916667;0.750000;,
  0.916667;1.000000;,
  1.000000;0.750000;,
  1.000000;1.000000;,
  0.000000;0.500000;,
  0.083333;0.500000;,
  0.166667;0.500000;,
  0.250000;0.500000;,
  0.333333;0.500000;,
  0.416667;0.500000;,
  0.500000;0.500000;,
  0.583333;0.500000;,
  0.666667;0.500000;,
  0.750000;0.500000;,
  0.833333;0.500000;,
  0.916667;0.500000;,
  1.000000;0.500000;,
  0.000000;0.250000;,
  0.083333;0.250000;,
  0.166667;0.250000;,
  0.250000;0.250000;,
  0.333333;0.250000;,
  0.416667;0.250000;,
  0.500000;0.250000;,
  0.583333;0.250000;,
  0.666667;0.250000;,
  0.750000;0.250000;,
  0.833333;0.250000;,
  0.916667;0.250000;,
  1.000000;0.250000;,
  0.041667;0.000000;,
  0.083333;0.000000;,
  0.125000;0.000000;,
  0.166667;0.000000;,
  0.208333;0.000000;,
  0.250000;0.000000;,
  0.291667;0.000000;,
  0.333333;0.000000;,
  0.375000;0.000000;,
  0.416667;0.000000;,
  0.458333;0.000000;,
  0.500000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;,
  0.000000;0.000000;;
 }
}
