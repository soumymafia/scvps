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
BZh91AY&SY��@Q  ��A� ���?����߾@D@  P:��\H	$AG����D���Gꙩ�=L��A���ޒ&�z��&F��L����<�  �  ��SJ2MA�  @   @�F�2i�i��1 h��  	"�i���@  �h�  �J�#ǃz�	֚�y���K��4� � m�^����G���OiY(ؙLA��<���D�".�E�������b��-�����ϥl�˵d+OFN��ෑ��Sf}����R��i�` l�h_�����o�蛆�so��Zs��>��~O�d��r����b��F����a�Z��&m���}s�4 �cr��r�jhה�Z�ׄ)TiW鱩b*��r�bKN'd�����1VX�<�H��z�yHv�+���I$��s4�fh⩥Ӆ��1�����;I�)(�/
E��>#�v��ŵٚh9ϧ ������L�c)k�%��������&����o��7ў������Z0��"��\_m����Jv�e�Y�Q�eU ���2��	�!�Ҷ:a�rx֐�c�n���mM��IZ/=Ư��r��W#�z0����E�9~V���A�.U@w�oc�*^H���?Y%Y��KC-��q�j�d�2@6p�b:��W�ČL�������@�� p�G�d��k���JCc^䵾JӃ���`��L"\�<��c������P�E�`k~`�b�ҭ�LJ	߬c*52�2bffB��&a�@�媇:X����I�������u$����2�����#cg7����F	�i�)+���
�L7���B0�DP���B:vN���`�L���"�(HQĠ(�