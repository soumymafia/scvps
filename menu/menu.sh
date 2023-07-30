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
BZh91AY&SY.wX% ��}�  �����������pDA `۟��[���wmwP+��Y6��el�U��xd��SF��O
{B�j����zOSG�ئڣA�z�OMM4��4b �A����z�Q��O)�Tz����daF��)#         F�  DD$�=M4j��<�4��yL���4��4=G�$h� � h44h�h�4    2   4@�D��$��ƚ�6��OQ�2z� 4�  ��B�Zt#
�5Q	����0B�$Q�d���(\��>c��*Ū�caV�8��T��K���Z��/h�#�h���S$����\߶���TZ�W];(�m��Q�s��璜��YJ�\j�z�@�
��KN���-C����ˣە|���re����/�HUC��x�.#��,Y����E���}%%���.�j�P@��	�\�ԕC�
&��q���I'_}���'�� ���"2PR>�����Xl[��x�E,��q���4-��) 
������kG��J'JFU����Ӣ#��'B
�'W��D���8����Cf��vX�]���wx2�rk´l�o1|cG�k�e\�vx����;�+�8'����`Z2��mmmz~m���+�T�@yV]�C�-Q�8��^�5U�̟ϗ=��9�R�`\U3�WF��γ�u�U4G>yy���t�PW��t�c��B�VP�$P��s���6q��]���n�0O�h��u�.��Ѩ�m��V�}����]N���8n�:*ݍ��9 Z�VLV��nqyz�>j��>餸;�i�|)=������nQ���~E����@�m�/�g�ɤy�Sd�B�.�G<6���h$E��j�6��D��Pe&eC���u�CI�#��tAt�K���G��oI����*�Fr�D1i�CGn97#�eA�ֺ��٣* ��L=�ii�M@H���PR���c��� ��!���|`m��v�l��B�!�@�p< �,ۘAW�[��I
ʽ��z�8F�B��J����L�M�&��,�j��6J�n6�������*#o~jԑ�C,�.�.�ś^��7��̩�
��n�?,�4Bb^�}K�#���+?�Ī�@�qwn���t�댫���J�#h�$8s�$�!ڐ�Tbe�s�X"�y٭>��Vۅ�(��s5���&��EQ隋<'z�V^��K7�r��r�Fqm��C��G����S?o��v`�N'�d��/��6p��XZ��1��W|�7�������T�����<8�`��M
�mR�e4<����^'��#d��Fb�KB�� �^*�>?���h֯w
��}���K'��<��*;����YJ �z�ޅ6����s����>�rk�n�8��?�{���hoٰM6ۇ��}���|��1���42���_F�Lo}u`ܷFQ��3�lD����K#3"�
s�'��
l�-��V�]���##Y׌Q�3�Y9�4�dY&,Ƽ��ZR����Ф�џ{����JVX�ȺK� s�	,���Gm��"�Q���)to�C�z��u�x����.�ECՁ�K���7jf=z#7BF���C�`փ���Q�"I�!�ѩ�(<D@~g���T@��<Z��(i��[�<A���{ݘ��C�L�χHV���1K����XF-�5�t+3���V~�ɤ}��E�ƺ�Vj����9�v{�P��QjԇUDQ�9�RLLCGq>��-�㳺dupoaU�ү������$�̐���Z��є���ǌ��r�$��p�%ml�\����Q�t^d��ef/(8)�ˬ�c	ǫ���R��%�"�p�(���\hb��f� �Ms�]���)�MF^�&2�ox�Y���N�����Y���{@Y�hC�5}��i`��H�!��i��U��V�M$�6Kxf9r��!`����[�܋Y&�F��p|{v�/&��i;��F�,�0��ؔ���10�	Z�z � ��ˍp��DfC����1��7��8k���}��gH�����
r�_���.�<�JMEJ��;m�c/ʿ6-��/���7s+��4#��
����9N��G^?�K��N�'s��kf~�p_̄3���t������Y��K��I��}o��g8VF�hq�D�O���E:��?�i�2�9�@+��E̻E��L�
3���NO{�����7mb)[����ǍS$�cL��(h,݁�I)�g?՛�U���e����,�d�2^�9
#h��:�eA�d ��ѷsݻ���[��/�k��5���n[�|vX���Ƥ!Hhz�aI�!zt���%M
��%��.�r�PT��0�{���ۯtC�ؙ]_Ap]�H�w�bw�Es-�v1&T��[��I�K�b��nv�1�A@�YΡzrO)���6L��5
[�~`aF������΍5��R���%��E�c4��7���Z�F�;2
V{ɢ�//\
��]����2�vaj�{�º!��E	νCb��F���IXIXXo
�#��b�-Ĵ��10�Uވ9���K�&�D
E�S@l��R
���W1���� �����Ұ�R���+�A�^) 9�h����if�����������%VK�
�� �z�њήwM�9���1Af%����*Z����B[)_/;ֲ[ͦ"(���2v@�jtY��ނ����w��+��P'5��g	�;�hL�쯐a�(�1H���t&B�ݐٮ��v�^O̤��9P#˶�ͺ�16�;���ba 1�2Ik����f}��%�AQ%���[%�u�D�,�qG��#�G��!/:HBL�8�	�I$u&R��̬�"$�]��B@��`�