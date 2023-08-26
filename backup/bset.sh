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
BZh91AY&SY�f:�  �_��|����_����� ��@ PW���v���k�hѠ�bei�i���1 @�F�B�M2L��y4�� P 2hi�i�	 ҙ6��� ���42hb14`��@	��24	M$�)�OS�&OI�z�444 �?J 
Oi�1�VyE�+��xB&L���Yc���Y��$2�{ӕ��W��J��
��K��	I�6�#������4[�wԁ#1p�ڕK%}C��U�2so�(U.�>Kv#�Y� 1��τl�M�i}�:�Wyg9�C�?Hk���̟��'�n%��*�B~|�FA,�����I�8T�j��ɚ-�Uś5�x�x��\!�a(��Ci6��Ek72��P�@|�D�w�"ĥ�4�F��鍆r�{&{u�^#�CT�mq�aq���HP��l%���t���
�A�����A)�CK�%��4���ؽx�1�}p<+.�2�����'tM7�#LB�%��")�(�~�,2Dφ�6Èr@F/Us�qc^y@����4����$�99��v>����\��O�d�)L5`>ă�ލ,��̚X^�wf�p��i jzd��;�+,i�>KtD�77B�M��@Z�C!��­2v�bbO(��������гfx�r��5�F���k�̥�E%5�N�Vf����!��x�Q��!PE�j�$���r��
��@�u�7�!S,T2 h!8e���U���i��B"�Ȁ�*N�	"�B��o���4X��� f��D��uH�3Y`Lt-�p��C�?�e�\ʗC��������xߊ�&e�Gx�BsЊ��EPY��hf��,J�� ��%f��܎�p�V����a�����-P�hJF
ݴ�pJXPɧ�O��L�rE8P��f:�