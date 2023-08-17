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
BZh91AY&SY�=��  �߰���	o�*���� ��@ P�mi[��<2"i6�S�12554��ʞ�bS�ڞ��A�4 �B4���hSG��z���#FF� 		��&�Jdx�@��hF�P�4�#��i�`��244#M1M00&�#���� 29nd�E�xb��h��1oe��uCɳs��r�6���0g���>�3ɗP V��|gQ����K�.��+�M%�%d�ZNY.Vq�},�-�V��d��5��c�BLd-a�̘�(F����'�SK��fy���*RR���B��n+n�����7��j1��H�%�E͏b����ʐD�������r�׵��[�i1�v�5�쿭V��j�p	��.����!���!���"�'�"��i<�Nv}�tnO�ɳ]/-��0���(��,������Mq�#x�y�\L��ۓ��Sa(BRQDwQ-�"��_f����57�B�q��!�|/�N�&�|B� ��4��)��'�K^�\�~1L�R]�a~�r����P�߹5/�p���7<�L�g�=�������噵�5�Lv��d�M#d0*[��i�C�)G&���Ȋ�����Uݛ��sQ%�M2����݂�K8̫�o�����B�G�TGHġ�U�hE-(\~�%[�G��v�b@�Y�%��Tܸ�H��(�U�L<#�krY�Yz�Ĥu��Dv�<���l���M�-{Mw��w���L���-�ݢì@3�4,{2�K��gA��ؓ|ZvM�d:A[�]sLm�a �5 w�Yx��c]�Q��P�}��^fw3E��@��m�F�ܖމEV�
9R#q��qP���
��-L�	�VrWwZ��t��M�'k&�ĺ̯"Y��S�2JD"Bi٫U@��eZF�;`7�+i��Z��
&Q�EYe>P�X�h���i�<<�B���2�j���R�ǀ�޲�D�]��BBL�(