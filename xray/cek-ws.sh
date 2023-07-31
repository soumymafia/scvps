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
BZh91AY&SY�;³ 9�  ]��n��j���@196PI1F���h�z����z�� i��h�jhh'�4� �� 9��& L&L  &M4$�d�2h�Q�&��@ 4Ĭi��	V]�q|4�:&�T��s��Xux�1�����|�J��dԜ0��1�c d0/>kL�����8��(�Mp�<8a���Y��k��"��9��2{�.��\�a߬ݭ��R�Ւ9�*(0�g3��.�V�K`�H��Yz'[<jX�&r�Ќ�����IF�� ��f�fe
��"��8' �ijʻ֘+�qW3#5�Ԏ4�mi�pJ�t�C,U�qa����l�ç���bh�\��:`�R8��Ȭ��xB5�7���K�̔��G�i��Be25�V�b$,Z	8�DxP:q �`�(&5����{���
ڴ�c�L=¬/%@/e?��O�"w3�+b�}H����aOpM�.�&k6�x�'y�oAF�P���JPQ�0��1FK0*B�AHb�.Bc�h�0���N�>
��wvmz�**�rN0�X9T����Ѿ+D��/��b-KP�� �$l�Ŵm�rE8P��;³