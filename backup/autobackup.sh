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
BZh91AY&SYx/�� d_�h����?�������@D@  P>+mH��� $����z5�C��Q�=#)�����`��i=A�z��	I4�O4�Ā<�   1   � p�ѓF�hdd0�2 dh �2�CFM4i���� ��i� @�%H��4�Sd��z�zP�Li�d ~��6Q��C�ɀ���}�g�S|��>�I��хd�=\>#(��R�����x%��Z>����T�L �4�%"��>�É���8����{?�G��FGuAue���!c�e��$���"�J�N�#2K��� �Al������s�D,��w��]�%�@�!)j��P���)�j.��D���גۏ���1i��Y?�FH�I��2iK.���q�.y���Z���k��fZ|N�g�+�ΛSG�so�R���˳��gy�5!��d1�_��0H���FY{=XQ/� ���W��E��qf��.��ӝ'�K�B#�E�~Q$���������"&�N�33s���kV�.=���Z:r�[3��g����ʊ$�o?sV:�G,��"ք 0�]��y7[�Yq�a%3f[���IJN4r�^����g��1'�����;5��$$/iBO�����1}Pˀ���(���2��|�P��hJp�'%�.�Ɋ�􏉣�3�Y�L4�ѫşb �ET8[a7`�s���]j���^�U<�֪�{.�J���S��5�PRd|�oI��f�"��<�J%N�6�;�k��u�7�4Q(S��[��w�8PG8j�(x�`��T=E�f[�aC�������/@/a3B,DF�>
�EuZ۠� �����?w�=�_%�J�磪�j<�Wx�t�l��7��8K�W���j0��l��ı�I��\bi�:�$�yݣF޹���2贛>Xx�w-J�{��f�1G�n<|��܆��nI��(��DP�W'���.ҘI$�a���R�q"Ԭt�Ԓ�H
0���o������	w2Qɬ��o������oN&&�A(�ؙ�����RÍO�ameH�u�Ĝ���a�ȾQ-@3�Ӡ��c 4���nM�	5^[x�$�)=)è:���6�`�<�OU+�텷�m�4�nBo�;��=�B�
i�d��i���d��(��B��a=���yGw1��
�xK����i
���.0!8f��HA�<>�E��IJ ���?"����/0���b�#H�� ^�1���H�
���