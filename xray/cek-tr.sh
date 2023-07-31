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
BZh91AY&SY���+ 8�� X}��z�ԋ���@D@ @QWM�@ȩ��H2z��M i��H�O	2��P�����=@h4��a4�C �a&&CL� �DҞ&&��  4  @�������$jrr�m�f�|���mKZ��PxF��>iB�#���q�B2Ⱦ��w�r=y9ƋE�&"i"j��,���7ɝ3��2���#t�@ۻ*(��6k V���(Bd,S�#.�+X�|LV��Fm=(� ׬�b��C`�7�=hf�,!����6��@�cS���AĒ���B" C��9�o���_Âb ��YӍF�8��f
0N�B��D�Xo"*��L�ߒB�>͠1	��C!� `&�'�c^�M��0�;p�(�G�]��G�g�T�U����X'�
#쉩ɸS��#�!�<���� �:�.*"dP�S��HE̖iZ��(fMr+j�_������/�o+-5�Am�����e�&tʓ,%�`)�
%��V=Lί��2 ����Y��E��ֳA�M=�+��8��Ä�V9P^!������D,�^%,Z"X�P4AJ�c�>�ld��I.@�1p�  ��7���)��f�X