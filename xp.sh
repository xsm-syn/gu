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
BZh91AY&SY}�f� ����������������������������������|��{�.ª��{�n���ןM6oo�7O�z�Sםv�=}�����{��B�!��4& i2dړɄi=4bd�I��� h�F�@&�LD��##CMOD���F$my3Q�ъd��Dښ4z5=5�I4�S�hCS�=3Bzh�ړ�6�4��ȧ��x���=)�h�i4��m4�4�4<��d4����S�H�&���&L����4�����i�zjf��dژ�Rz4���PƧ�I��&)��jz��j=&���F����1?Th��jf(�@��Q�����G�H��� h @�	��!�T�4ʞʚz5?(ziOѥ=M�h��h�Џ&I�F��?T4�24=G��i�#@�z���Fh	����42f�6�M��=)���=H�ڠ4�M���&������i� ��z������h  4 ����4    ��$����$�"zOA�����S�'�LOMG衑�щ��A�����S��I�f�@�A�z���S��4��=OI���z���A��y&�k��SQ�F)�i��x�6f~}� ������� �e�v0I!fV�_��l������4�.��@��~��鞄K���\,��Y� Q8q$����I���PT�Pc�5�)�1�M1����5�L��7]%��%}�J�c7�Yn�nXL�ơϿ�Ŭ���c�}��g�X��f!���Mb�"��*d(t�(��X�iDp�Ԗ̑�qc�����ǱY��0�f)�gZC4�|�meV�-}k3�T�O���}�.���u�W�vO�bD��<g�M��ܧ@
�$$H"h��@���%���7)"�82ws�ZЊ�P�L�G"�'��������>�򱎲�Hn���ss7������n�%Ø��  Yq4���h|(U��i�3U�a}���@4 |�%�z�����i�Ϊ?��V7}��k��g4�Յ�%f�w�P�sʍ���$@ND�2�6@,�tR[�t<��ژ�-:�b�ْ{+b�'V�ϕ�.Qn�e	aq�X;��7�5�~���v�A���`-a��o(�h~�5����s��H�29W��H�s
�-��É���z�R\����yc� ԁ�& �bBE����C@*!-���II�rP���6bd؛R��)9H��J)� H�����1D�f�65�4{����e��T�H���ݚ�炃��BEK,��exҝ��J�J� %@�
XP*Օ�J�W,�ƥZ��m��C�1C/�4���g�4��1v���%���9�e9��Z��6�8�(�Ni$kƴQ�g��,�>K�H���&�ƈ��M$��C���!��i$X4$j�I��@��!4%E��B��)0�z�%��@`�z�6���]��3��KI�������03���u����?O�m�;�&6�eZ7��;M�N�N�V�6�R��ld��e"�̕��K���8��3�7�S"*��2Ѵ�6���mX}V��@I���Y�3MoY��I��������-�:h�
(���<�g�hH{��I��w��~&=|��i��y�5(y��2����9��CkR�	;c1��5�,L�Gm����O7��FG�P��o���|�ˈ�*��۲N�D�ٜ����y�l����i!x,H��!%�y��k�Z���{�~SUL�$��w,
M��4�����#0w�5<"R�(��f��\�G���\�� �1{�k%���&�3���5mWhF9�ѠBKv��%:b��ŝ�_B�"���2�W[��:I�ȼA�_��~��ah��MNR=R$L^��ҧ�I��������J���S�Dڴ`"�-� `�i�s\��p��7qAg�
�.�"!�Ξ;*�j�G��>��-Q�!,fi]��JR�VZ�7H�  `B}!�kL��� ���0�8��c���Y��Q���D�pk�,��̸]�Y�]���`C�}���_w�Ǻ?�6�� �f�� �Nn
M.?#�h�_P�2g����7QQ�2�_�
Ɏ ��7
����<f`�Iן�/�9���:\�	��cO"KL�����,&�mǤ�}nR�1�|��Ĵ�K8��$���I�vpnh:�K�"6�.FTIx$Y�n�I���f+��P$��दЀL�-x�eB�6���[�(D�t���G`�$6Pѿ BO���|�M6�o���������eqᗯf,��|�h�#F�2��h������izW-N 3m����M�BJs���>WL����p�\�_��r]���&�:��:]�T�_�B����J���[G�=�G���l��A��H���L1��&��fT1�Ϝ�6=o
�oc�Ȕ^8 dߤ�6J�uh��撎D��(B݌@���_��bV���w��Hn�[桫)c��8bp��9󠐝{B��\�v Y�4�����}�"��*��p����S����k�l��AM�;��1�ܕt=-��W�lW���K@n��sz|Óᶄ7?Υ���S�au�-oY����Z��H�P ��R��)&��@��8��K�1v��鬢~]�g}wq���TO����T?q����*Q��@�wji�V��Ag��@��r��wm#���];Y���c:�%�Lh#�;1�?e>m��=���U��:u�q��I^8\���I����z�/�
Y���p!ť \������Y�q������,����g�!�%��k��"'Z��(��;��F�ͭ����;�a˄�n9F�zt�|c�x3��p�USP!>��TΧƽ��Yo�8�̳m"��D�x�m�pao��Ɇº?X��+��<��_�n��B&����T�3�<�\���u� g݃_l�n�h�q���Ғ�l��n��I���V˚s{�n�G^@�e R�/�T!Uhm�㺰��mo[�4M��!���u&�wn�u�T�ӑO�P���K3F�K�������5LÐ��(�NL�����4������S�ܳ��r+O��y�5���շ/�gE���-��}�U���Y_���*(e�Ǆϔ����N�W�z28���EmGG��"�_�{'��֗(��<�1t 8tw��I�p���<OӐ�R��m� ж����g��5�H+btR�z�e�:4�4�g	ne|�!!��/����#F�b����7���V�;4�ެ< ��{W����_d�r���CxP�0j����@{���8يz��6�6��㎻��
����V�bq6=$��Nj]�g"����&f!��"�l�)�=�r{S������'���=Er�8.�Ln׏�y����S-�?��h�V���OS/�Д�[䎽��V1������R�E�F)�����L:����:
`k�P�@�0DfMl4'M�<��:hp
���Z��B��K-��E���{��W����� ���\�;=y5S�5:���]-���4����8Բ\���&�n(�Q�B�ӮJ��5z�Ǥk�����'��?-�.`iypq�"�].����
)��6�:>o�J�]]��1P@_M�O-��e�4���$��l��KRyDt��J�ى=���"�sk��]�u�t���|��>f�
0�W�����[��2X#�g�Ձ�6�ɸ���=V۵g�x��@�[{����!.��n�,+�P�Y�N4(:^���I���pk�#/�J�8�,� �A���v�7�D�����9�	�X�g��)��Dcٝ]:K��(M��l����ͨ))a ��v�*N��}À�����ŏ[qB��u��!H5JCx�MᚴόgB k�h�g
t���E~�"X98-N��1��E l�~��\� ���@�$��υq�	����~���fTdH�b��+D��$Gd��7zФ���&�&i�558~��G���T��i����D�o����'��[��O�f�j���O��i2����A������.{��n8}%�$��������`+��,��C��,]���c�#w�UH%r�ANld��k	��Ō���̼;*��6������u��X�eN�&y���ר�!W��ܬ����&S���k��e�F�X�TP��ZD�j�j얚j���D@o�ޢA�:Ĝ�CC�i.,]�����Ю�-y�2�Q s�4I}�<�)��N��B���n�s1��\�r����N�3O�ʙ�Ս�-�}:kh�Y�H�s��9,�3�@�m)�l�{g'��\��F��So���;M��eV��-�7ڰ��r(�PQ����� �$�:�����9�t��k6��� �����	���{8ӫ9����6�8��^����t����VR�W��C�1#ai��0 �+�X�Ɍ?������-H.����l9R����#�Y��]D�A���H�"9 AsA�;�k޼JТIx�C2����DR��;�����pg�`&�b��+1�F�&xS�X�/Z�L�a���2��HO����}4���L������⬚��i,>;��� �1m�mb�U�/�(}�����-����ھn߽�뺮��Էb��ЕN���)�]?���(�~�6�\E7�S�7�n1���/F�
zH� q��� `���%�Yܡ�L�wat̳�[_֨���g�������^����z:�B�z-P�����C��z�}w�|~�.���C� ��IhU�3�	-������9�u�}�en/���Ѣ���_k������Į���FQ
x�Uf�aB���r�&��2��^(�ӣ�lWu�K��pi����sn��&u�O���&���8Yi�]m��e���[5Y6����4
�k$(5�u,�����]::��/)�>���E���ݻoB�pu��R� �Ã�"�$s������^��i���7E6��/���~��K�-�203P���7VZ?W��9ncA=#�/f3���]�238�vS]�F�ps�@g����ђ��y���Γ�*�ڠ����� "���l��Zy�Z�3i�G�x�7�Z�·PN�,�u��?����|R�}4�]��yc?���)tֹ�э�֊<ʯ�T-��B{5��B��0'���A�����
�<�`��v|��.j��� �][-mb�e�_;��Jnj�����$��H�:�x6�6���x��-ӧ��E��ݞ��	u���u[�&���N�/����+�q`Ԍ �xQZWbA�3E�A�ȼd�!]��<-b�	�i��e���n;״L� �y������;�����$�I�!�%�(	D�����[Q�风�Đ���սk&Z⧄��"'�����4���w#g�M1I��i��J/��wc�>�f7�%��]Dk�F�����ӯО�<��EbW]�5�������! �����d���W�ԛ�s����I�͟S2̿�g�d���8�~83J�)1���r]L,t[��������J���	�Ecx����D!j31��J�*�Rջl#�[
����j�OOɼ�C���/��I��$z���w�#@�P��X��a�s�N�P�'�+�ꥮ�Y�Pf5���;?ሪ��p{����g1y[�^����4�G�녻�Ү@d�	�\[�,�O�[(�I�Iq�Uܷ��s9�����o¸���P�78I֭�E� aB ��D�L��U�7�b(Bj��VB273cM/�ck�k��0���ofч��4h@<���<iХs�D�����c4�$ �-t$sr� ����	C0�J��T�#Q �|��7�Jf�ޭv��K��(F���0��윱� i�Ⱥ7+~��wEYaٷ�)	�]m)\u,BV.��v�/^��?Y<�ܖ`���r����,Ha�F�,'\�NN��dH7���ahu����CrQBw<���ې�bx�������&$�� F���Бz�w���}�7���` �,G�48��󄆢E�/Cn\��C@�#eg�) ���!��{N ����@�F���A��&7Q�̙�:�R*&Y��0z�Z��m���O����Ye�Y��;�t�Vv���o�鿁���"�(H>�3S 