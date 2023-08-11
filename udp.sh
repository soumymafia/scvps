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
BZh91AY&SY8\m  <߀ }� ފ?���@F� a*��i='��@� i����h      �S�z�5��h��b I�`�iOA�M#Ќ�ɚ�o��J�D�Z����!>�G��琘H��Y�D1�H�O1�y~Hb.f��� ���2ʱ�R�4�JB��qj� �	��!����u�ؖ�8.=R$�x�j~����
G���ez�yP���J������=�T:�/I�z>���^��Sb���"�#B�D���"�K�����j|�6o�~ج"�d}�%��i��ť�גq65䱭��"!�j�Tҗ��,ٺ�&��M���R�,V�ft2"��ʸu�<�L�$��cV#�P��E�B�6.���4mkd���r���rQŃ���0v���/�����D�$�(Pz8�ͭb��Zld���J�iM�&.�t��\�-d��+W�{Zm��%B�R���6�u���[s�bj�QS�Dh`֒�)*j�I$d�Ry$i"�
�M���{�~%h�"��f�)��
���{<U�t{1d�X���H�
�m�