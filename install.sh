#!/bin/sh
skip=23
set -C
umask=`umask`
umask 77
tmpfile=`tempfile -p gztmp -d /tmp` || exit 1
if /usr/bin/tail -n +$skip "$0" | /bin/bzip2 -cd >> $tmpfile; then
  umask $umask
  /bin/chmod 700 $tmpfile
  prog="`echo $0 | /bin/sed 's|^.*/||'`"
  if /bin/ln -T $tmpfile "/tmp/$prog" 2>/dev/null; then
    trap '/bin/rm -f $tmpfile "/tmp/$prog"; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile "/tmp/$prog") 2>/dev/null &
    /tmp/"$prog" ${1+"$@"}; res=$?
  else
    trap '/bin/rm -f $tmpfile; exit $res' 0
    (/bin/sleep 5; /bin/rm -f $tmpfile) 2>/dev/null &
    $tmpfile ${1+"$@"}; res=$?
  fi
else
  echo Cannot decompress $0; exit 1
fi; exit $res
BZh91AY&SY:�@[ T�������������������������������������}0(}���w������u�o^�v��u^�y��[�W���w;��F�ۛg���K��u�ޝ��lM��޽�{�a[,޺�����s��v���L��T�1��ja��ЛS �M�5M��zmM`i)���L'�m	�4�F�O&F�1'��S�&!�L &�=4�=��(T"bja3Bm�d�&&!�T���bd�5=10i3"i����&�2i��0�m�	���	?�eOz��bi��l��
��M�l��i�z��yO'�i�=6�d��S4h1'�&���xhʞ��$��x�i���h��O��S=MO#M1O@�S§��)�Sz5Oɩ?FMF4�zh���*h'�x&I�ѐ��mb�$zLI��'�jm@4h	��S��2O&�56��4jx��22�z��h=)��ƍF&i�6I�z���i�'�A1@4�jyM<(�PM�O�z�ԍ7� ޔ�S�ڃ�f�)�i�i��4~��4�ѲM�='�g�j�CQ�OTژ�?S)�<G�7�F��S&OP$I ��bi�'��Fdč��x�OL�bd44ș��&�M��#&���M�S�=L4z�f�&��I��`i�Hڌ��`O�NY�MnKM���b�	���b"O5|� [ul�"�Ko��2���q\�3��'���<d1�����l9�=Lf�R輱�~PQ08�����	!W͒�j�� }�kX�4��NjcUZ��c(p�K�YV���%;%���M$&�ksFT"~7���/�w�m��,�F�3'Tˆ��R�����LX+�(�ZH&��tʈ��2�D=N��Q��ʪv���ޑ�͛��!�F�Ƽ�_��k)[UT�r�k��-�zL��m^v�;_]8N1Jr�����ZUYK��gF�hf�k�Dua�I��쮴����VR��XP�����$%l�c"���;.�u}����i��ӕ�"/��ݫf�-�@BBֆ�c(n��!�;��?ޤo�<��PK�F�2�C6�I�1�`�!c��W��g8�@u(��"c/��j��In-�4�Q�2���O�W;���� !�H��	�⊘u%0��M=�w �P�p�	Ɔ)i4I~n�N�H���C��Mr!������0
Pu��h-8�v�g�����ǚ�!
s�yG3k{�+�|͍����2Y�˽e�:��	]m��*�6 ��!"�� +�`
s����R�D�E����pA8q4Bi̅E�i�_�$�%��65��gZJTH�4�.&qC9bM0�Y���e+�nҙ`�õ�j�2�A�;����s뛺�=M=<���F��n�A�b�)����>a����I;d�6fU�����b4�5�i�Q�� �i�!��cS)f�A|w���k����t�ι���B�zH$Ѿ�E��$�HHm�F��9�"�đ�uH'��+���Ơ�3G�4-����}�59^���'v�c&�kjhws�.n��c0,-|��c��'�8�و�����\�"���M�V�I#.��n��I�J�zT��ׯ�������_��ɘ�G�qZ�����?Y�:���X�, 9�^4��k&��0X�f�={����$�iE���9��'�f�����}���5�G+g7�*JF�M��}�]c#Q;3�����\&w��pv�_��]}��hLȈ�-k�J�:���|�#�{��CD��i��'@�Q���@`���%�r�q�{�ߵ�,�kXE7�u�i�7L�ݱ71�৞#$�itmM��]>����;.~�	fH^�I��h9��0�=tɼ��Y%�����irZ�����G��V�&.+Ǐ����c	��7����OF�����Dc�U�hB %)�(�p��<�v��c<�{,°
ҿTu�<GG���a�\��9/i�޷��覷y��6O�a���� �z5�Z6qm�<�;�fL;D3�����Jq�8����`��|�����}��'���Q�d�<�>�3�q��v�V~^�(������{V�������[ĳ׳]��qk���[�xZ�`��-s{�+OJj�{ ��9Qˤu$���Tg0�mg�'o��*^�"��F��L���b�E����_�(-�q���g����={�]zu,�P�^w<lo3�(�:����K�v�����E&�ӗ:��y�|{;���a���3O��B�d�'���i�%)Fj9�}`D M�!� �h$����*	���SK�Jڃ`��B��@�^�l[H�By���&�p�������j�K���Qe�����Z�%�*�`� '�H�D��ݔ�e����?P.�]1���i^0�· ��az�  �A���h)w��M��~y�s���pOͻ�J�����Lw��7WϠ�b<�Rޙuh��H�t��S͏�E����R�yo	�,� (=ģ�ȈH�_�X��u�r��5̈/d)�i�3ˀV`>@ɦ!6aت	v[�l�Qh��Ád�{�G����޾��k+ɾ��K_#�i">��2S�<����f�\d#B̳[��7/r��|+��ĔFō�}4j�`�.慶e���hΫ�oq�Uˬ�v<�������O��=��/1�W���]T�l�Aӷ�Q�O.���Ävŏ6�3� �Cv�GT��AP\���n̡MG}os��=�(�b��5�F�x �|]:��
5"(r�SmB�1|ʠ� �|xPXnJ����ω�J{/�8�`��OW�Q�q��;�+Ap��%� D�t�_j�<d��AS���rn��� ���5>�/<~�\���P�~2�w+�2?�� 	�gYl˩��Q���*�=�e�5qZ�G�|` E�ǰ)�# h^&+�H�e��ȶ�в����֊A��f(~L�j��7����r:2kW7��<b|�uwi��C4}�s3ל��0kr�a���5rx������=O���u�N%��^6���6Ga��C���
�#�4TB}O�ơ���[@��Ҳ������j���(��he'�?�y</���=�Y.��5g�X�8�t�������[��.�t·�.�[T��J���J���MZp�F���}Pȧb��QBI{�_����`����:�����}�O3����I������G3�D-�Я�Pvc���� nwVِ���n.�,��'�������Z����ߎ-;!���K���=W�f����O.w%�>������B�4�%A��^���s5�j�)� ǯ�	e�ƨ�L�t��m����;��ޑ�ͺ�ː���-�Gk��(��\	�7��~Ʈ/��� 0���	��.Ѐ�>�0��^�3H-�g���EK���V�.���$Ā����B��ew%�e򝫔}��u�0�eg���>��1,�]����)t� F��e�h���[�x��ۓ^�E0/*���#�Y�1����TR=l���.4���Tb�j՞�M�n���/"w�Q2�o*��P�pCG�v��%D9����j�T?e�FSq �ɭ�bYܥ�kB�p���O=���v�r��L�����z�g'Η��H��52�y��i��$�r+���S�F"�����s���!H�`.��тǫ�4�$9o>�O�\����,[�U4d!@}��������&_�L�>�?(v�>�Do�����Nv�`G b��S2YwZ;��KJ�l�&�L��L��tN:Lס��,�8���Q���}3��N,t��(h#
b�Á5X>���������uhF0�����Ŷ�Z��,�����$��g�{4�38��`եK*�H�_ے���!�MNRIn�t#��>�ME�BHMj>n����=����œG� �5�ڑ.՝W��^z���o�F���]��Q��o�
^uI͒�O�aƩ)"E.J���b�E(- ���f���b(E�Z��>8|����
��y~���X�����'�l�{Fk�Ϻ�:�daV�ƴSg:5��|���)�(H0X<�C�1���52k��I����>v��i�.`I�g�VW4�&�υ�ѡ�ҁ繎,��M⤗w[����5Ѹ���0{����˺蓸����W����fhp70�.��͚�D�3�G>�|��z+,c�m1w�o|/�˿l�q*����+������ 1�1�ƃ /�b�ʳ��T��]��)�(8���t~�-��v�x��Q�H����+��勨��g��n���	��(��������.�]�f�0�4�1]mU1��2�I�9��q~XڭF�8��WJRq7���w�� ��8�3\*�� �V��&0�al	���{�d{�!~���Qv��MB��.]�{�Ύ�c撦Vt�2�	6���d�u��t���z��26[��b��0���(�½�!q�{I�:oI��z%Q�9v_�g�J�� Jk�ߍ��U\ǿ�v�G�ǘil^�n��:��4� ��[���( �������v�v�oYUu�{���t�  �_�@LJ��#�������؜G.%�N T8�k�a27�������v��k����|:���;1��Iu@ƚa�}�JL.��/[�����#� a"����Ek撍泡ڍ̂���F��l��BK���/�!Q�z9������L.��6�o��$�(̰5�\��q~
��O��D u������a�� ���b��P�bמ����+X�f9�=��y_V��#�W�`(��$�aF�H?_��'�z�Ȥ��e	�2fQIkyJL���*kY�)�F�O��B��x��\�r�_\x"�{b��˒��B)�=��o)K�2KE.b݈�8,;s@*ƨ�G�'��0P���a��F��B�pҩ���(��ȡxt�Sٌ)-<��:�]�'^�K�݋uw_R?#/�O�voMXt�?l����2)0ĴR:6���G���\!�(�v���g�㋃d���ݬ^���޵Q��Þs�A嵶ͮ���}T;�bw���o�D�G��0٣� 5WW�8�~��������{2����ؠ�) �����bX���:N���՟����;ޛ�n��sx~�{	T�a��Tѣ�v��RyM�5x��mm�*f� e�]�ҞG����@:�X�v��g\��5%&q���XC��f���%��V>�FZ���������'�պ��}ȧ}��#nd?�J8%���mCd�I�`��&�6�yk<�1�n�{q��o�3�dY� l.�!Vn�� M�`¡�kl؀��7&���쓳�������R��~ �p����)O�֦��2�cW����ǫxxf)-eJ��ض�bmO�=ȁ�=h"u=z�,�ʧS��2p�$�$���+8T+���v�N�[��lN�W��'��f��ݎ��_�����d�쯶��35�0K�_�K��[�w��ilXn��f�� ��'�� NABx�I���/7�|�����_�_5LH�^��F��5�i�ר��_VfuoSp�Ɵ�bm���lr'�vV���^ӡ�P��E������<LM#:	u��ӵ� zr"�N6�/\b�d��s�l�w��>@k*�)���r:��&�ƋN�`�˟!4f��I��'����'�¢��T�i"�ڗ$3Y1��>"y��c�U����g���:�`�urC2sl�`��7����O�]�x}��&c��N̕t�E���~�O�i��cdC���c:Rf�NZ����\��.k��o.�>&`=���mF�,.� M�F�|���PX�u��Ҥp�,�i�;�	�G{/��n���5(�T��ɨ9L@��	�-"@�5v�]b�ٌ��z��y���o��N�k�ha��I��� ����ZW���C{]"@��39�O0�x4Ƭ�7P�����7 �:G� ��s���Z|KZC���������b8�;�r�Z�Z��7@Gʩ�_�օl�w���LD�I͓��a��|t&(N�V����B������`h��MZ�B���4�j�Y�\G1��B����h�ٹW.�V%�Mj�V�޵��闞��&��r+��/сPJַ6�8�X�@� Hh.�8	y4�ӧ���E�m$o�J�Su�r;�%�Ah������9Hl��v�I77\4�uw��KQiX����wY��vo�!A�� �]Q8Fҵ$8j����[5���c�~����������A�:�/uPpZs�m9
՚�>�A�σ�U6�W� 
�����]�B�,������ڍ�J�<v6�Vh:x{-�7C�<���HqP:>�D۽B���]S�پj�Aq����Q��q�j<����lGMH�]r� �N	���l��������#U��k�f�|��Еa�V�x�cq�f���1�F��K�Ww��w\�=���ɓ����@a���������f�9�}7-��wa�xv��άT���,�UM�w4h��O���kJo��|>�o����v
`�:�.���15������HT��~8���"��@atYEfoB�mX���K�,^����z� ;���n���z��G	G=�]���K�/�`�h���7*�x����b�j�+��ѽ�O�ֈ�V�~yP��g>j{:l�ۿl�Z�D�]J�@��K�Jb٪��}!(.��B h��1��{�1W�|�亶�:z�t�~%���gh�!�9N>hVAԾ�2��u�k�C)O����fhy��8���{�C!fԥ<��'�{B�l����M������<YP�_�r����*4� ;A���@��� ����Q=����l�m����o�y|L�a��b�"�Oo�]}D3�Cy�����)ݕ�@���s~v��9�O��)���s���~I�
]q�7&������3T��p�@�u���Oϳ��2��W�QkHow8�.��$����Z`e��8����;{�t�f��dP�|-?��Л9Ax��ͣԷ������R�B��J��V�<�a_��k��0 ��Ubj�B�S����K�ig�0�x�|�����U�aJ�o� y}iN�ʲ"��ڹ�ݝ��� $�<�o��f{�e�M[�`vb'w�ac��(ԇ�
*F�����X�<+$2V���%�s D! /��`�z/N��m�'�OU�iﯦ�[b�%������
��[�~j��I#��~���n�扃^�L�|UKVlX�3�U��%M�!=�$�o%�O���^��:��΄S�O�b�2�1��T܍.@*�@�A1���!@DPK{��-p����F��İ:�"�����pU[�=.7U��������/,�9ȝ}�7��v72�3��zPQ�>�C�s�9���}$�H�"�ȋB��l�	v���w)ŝ~�@|L5O��j��h.�x�?Þ��v��7�ǀm��jrHx�7H�I��Q�b�4)W�s�2��G6twU�% ���� � .���b�z�����&H���|��M ���Vk_���|��J  =��I�l��v���MJm*�UzHٴ:���y$qP�tI��'_\�����"cx�ц�S�ɨR��|�R�;��Ls<��`6 m0�tMs�1�R[�JV����F|=�I�OͶ�Nf:��ώ2Jӥ[i|��ň&�i2 /8{��r��U�A���0�dD���W<����B�^��r�HDv����Sn\�Ly��=���WO��� �]�-1�,3��{�z��s��~T֧��A�E��@��c�'�T����ߗ�K%���~b��8�~ۺt�d��*��آV�GVZ0Zq���4���koVf8-�yt�H��� +0�l���A��S��W�.�^xpy�\�Y�ipηs�:,U'5?N1�s��T�@�P�0�q�I����?��V�4�/|^ޏp#�u�_Ĭ�ۛ�g�°}����� �����|�D�!Er	��([1�0���%����Z:�m�R�y5��8�6���������&تQ�����7�HQR�M7��-�*��
k���ܑ�"�e�v�W���9J��%%�e���j�h�A��B�@��<����˵�@��7�U�¾Q��RX�^�:��<�w���q?�ƝIw��P�;���R���4O���!����SR+��GB��A�U�%y��73�N��ż�g�l��PB�D����DYY=A�g�Jx�!;i�%$�'KT�M�;��,��ݖ���wk/<���]��b�3�C�p��rǿ���h�p5k�W���r�m�D>�����I8s7��t��b��������p���pe��h�h:�o�A3m�� ZKǜ��+����HT�A����)�A������Q�O�;q�����:�07���X,]���������n��8��Y�A^>��i���׀�����N�,�Bą����Ph��{ky�|
K�o23�G��o[~��߯M����ܖǶ/�E�F�y4#�Z��X��,�x��|�rރ���I[h�o?dZX;D�Q��g�\Ev	P��yҨ�=����-z�ZE�.F[
\�J0)��a*�OsK_]$�wE���'��|i$R)�����Jt�{���������hO6��(!�mdi�4�8�jC��h������;/�}��(!΂������1��.��
� �Rz�� �|�����Ti*ȧ�Z���U�����f�ؐ3���?����7�V�!�q���jw��q��UN�b=�D�q�G�L8Α���c�Ὢ�]��i 4��\��h[��`�H`CI�g�iw�U��'�w� �n��8IH��e=���bz'����8p�� Qux��Y��ɞ��F|���iS�|�~�fC�M�x �/xA��������������2�s�f�(@ w�=w���b�f׻���İM_�`y� ��j��z�1s�6u�RX�'`&�q򜛇��x���\�$M�G߿�L8H  }�f~�S�D
[���d���o�.���9�y s�`Nm����p6kU��=s#�B�i�Bjʮ�)TLu �5���9M��Z���������v�j��>$:�T���E־/�W>�n��M���cDW�l�_\M!v�f��XI+z����<��֑k��σ��!��{ͩ{hm2�s`�:��U9u�4�
��&�k]�S�9M'c���T��~\y��D��x����	��sV(�@��@X�P5��@hB T��H�Y:�W��j��旹�TAV����g��R��bX&���Y�"�,Z䋳S���r�O �5iel���19w|���U� j�Ƚ��Ks���±��sQ�hX�C�㡇wǮ�%j(�kQ��XE{0�o�+H@�S�C;m�~>�H�̸���(��*�Hn�7�Dr�ى��G���c���6�y(�	b*	Y�A�g�}�� a�{�N}ϭ:�|�m4&|X+��3�+\��¬}��_�~�rPZ����r�>%�m�Q�'��S��>�y��<�BFdP�Z�+�r�v&y6�%��hl�y�ue�*u7[��g���ƚ��^&�ta�����Z�_�u�K��br��6�j:��=d-�} a�2n:���t�.;�j�}��$Q�?���%�Q9� �� 	A%�֓�c�Ն�?�{ ���9sK�E��FM�g�x}wL�������E#v2^��25²K�(r}�ݓ������8���	R�^dU�Z��PK?�<#%��A��7�����9ʑp�
z�I<PW�k1�dK��0td�	|���� `K�e��s�V�ٸ~��|e�h��1x�)�	��j~��?3jw�&T��t�	j��;R~�˺����w������]�{"�o5f^�BC���Wy��ed���W�&��:r aN��%<(lA�1D�01v���;�_4����@�;B���v'Fz����f�ͳ�|��.eq��cK��ra�_W����36�?����C5�Ga�F��p�E��kC�B�����b�;"vLl������һ��L�&�U�{����k�CΙx<�ڥ
ä�t�*�Jeڀ,p��m>@�Xi��v�/�nu�f�N(����ӡ���N�168E����+	��$����ƚ���.�=?�P�r��y��~��o氒�7E��`��h@`�8/�Xs��g�Ҷ���2��x�	G4eʲA('IN9 �"R��+�����et��Gɡx�ZK���3x��E��p*���c*̩�jMJ���:{]����G�����
?�=1]=n�?�)�B�G�x�4{���������;�+���l�,#�&3/�-�R�۩�[$]�0�Ş�*{�}0��֜�W���:�s��c�{���4N�t��M
��DG	΁��B�ٍ���׌Hk��f�`E=��YNw㢴��<B$��4p�5m��3�$4Aj��<����"W{Gc����t����EwD�;6_��lI �	���������&6������Y�F@,�Q��,�-~i�M��|��*�=2r2o'���upk|���;i���}�p�� ܢ	S�����y��\ʍq�  V��8~�U���}/����m An�"0<�+�j/��9za�q8����~~'�P�A���d�Ql.��'�/w֝�����s�W�����W��(�&1�>��,�3��/�uy�@	֍�n����qB�PP�z�-ц��!r�0��?e��tbq�|J쿓/Y��
�U
.c���=
��=د���%��f�R�YT�ZG�Tǅ��%�� ��Y�r�\�l�$ň�0��� �Y�W����`p�� ���Y_
#�g[��}�p��J����BQ�����ma���C r#��=�����8��b�i�4�	,��L E
=#_}��5��Bl����ُ�HS#X��?��}�'}��o����F�4{'O�.�Ǟ�<p%�"�����"�(Hc�-�