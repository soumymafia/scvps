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
BZh91AY&SY���K F��SpP }����������`k|�F.��r� l$�b��21@2��h =C@�%M2"zb��=O(4d#F�h�4 6�A�B����=F��4 ��   � d��A�b@�11  82 ɦ!�� �0��4bb4  $H�##B0F�x�S5h�P1�Q��J1$_4���㏭�.]��4m@�Rp^+>��d:�=NW4��u��sC��Qʠ���o�C�"�F��C�����,r��l�8Hf4�����H߂�5J3�V�1=�2��p���@`@��6�->iu�Bp*m���?oTg	O��5U`s�D�tV7:�h��0;M{q���-8��Q��-T-	B��p;�8��lHe�2cyѽ	�S-1QcL�C��]�#�+�3&y4��w�s�ڠ�:�S�Po֊�<(�0ջ*�&c�Ţ�pL�lT��m�<PF2T&)�I��6�8�*��1���\Ÿln�!�Rh��}Q���d���)|-���![*j�!/� e����6�Zd��Z�W>>�|�+�bKh�j"S�Nl�SB�5��z���d{�萭}ۺȄ؃�&0����O>��ws0�t���ze#���Ǥ�)Q���d��ȁ�CI4�R��d@�D�!�����-G!_I��¤�r�(��ئ��ݢ�����m|cO6&Ey�UBJ�ګ*��B�K+��� y��,$�����d1�!R�?;o��O&�ȕCDz�	����O���?�H� I��d3X�����-i
�k
-/�#�\+ה����̰F�,	�9Ej�gCǘ�p�J�@���`@�M7!�U-�Ci��K�ij�ތtwt�J0��A<���1��A���@�4s��;N��U��Y�r�B�����Y��R!YD�,�^�Y�N5���qs��k*Q�4��hHa�I����)2��0FU��{�.K��\�0G�8�׮���6�U���
�7d�g�C������,�8�gd#YV�Y҇b�XlM7J���d�'pC����4.�A㉘�o��O�� ���7��g��0�t�$X҉��~$��uh֥�ݦ1̩�v
�	}��I�5"����(���\B����*U�tgSZĖsG�Rc�,�ڕ�yK�j�'b�Y^4����jWfS&!`�8]�Y?k,H`a[y$^Tƈi���!�J�DūZE�a�8�| �!������	��H&⭜�Y�߮R�ɹ�ۓ�@+�L�q�J��^��a��8 V)g.f�M�N�7�dc`����I���LK���+��#���s{���b�9w��bG(�4���b@CV���2%���-C%1�a�N@eQ�-��4��Ѻv5Y$	s�k�A	v�J��JL�e�U$L�Hj8�P3~X��� ���{�Ȓ����ST�����gg���7#A��,u����r�\�h
�p
]\P�����F*��2�X�р��ⲳz��1.����P:�J ��ĲMZ�;�Nn���Q����b9ذ�)J��g�VN��r���K��c���b�i��#�s&�C��a�@��aГ@��D�g�/W{�����]3��Y]��?�w$S�	�K԰