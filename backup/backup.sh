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
BZh91AY&SYYϜ  <߀ o� b� ����@��4�%5S��M��d��M����ML���� h4 �����   (�##Jx��Q�1PL��4̹w_�]=�.K���J�S=�Ã8�������E(��U��Q�C�_|*��3Da&Y
��C�L�3�n�ߵ`��� ��l�Kc�4{}_%+����Q5���e3�1��,��-��k�*{������B:�|�������g��������'ur6�S��3TS�����RZDG�J�P#��%Χ�=Z����x������iGAt}�U��ƺ�$Ȋ�iHP�i��@��wI �:!��2" �y��6.�V�k��GCf��ʓ��J��\\Mt��FeP6��w<��^�*E�3E�f�VHh��6EK�-+#�R��JHh�`�9Ǽs�zXl���D/'h�%��A(.��l���_��H�
�9�