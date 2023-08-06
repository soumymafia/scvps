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
BZh91AY&SY��}& ��}�` �����������pDA `
[�2���z�U��ݩ@w�T�5�hHb���I��<��i��O	�0����d6��h����j=@�R&F�e6AL� =M�    � h�LԓG� h  �z�h�2   C@�	��#SI���'�����45Pd2f� 2�48�ѣA�@�    �   � 	L�L�L�h�S�2d�?B��6�5?T�L(�Fh��C�4�t/�7�9�����'6��'N��@�8L���YV2�nqg��o����Y���R�ñ���b�?x��]Yl�m��p�.u�UT��B #:.� Db�`�~/!�X�R#��7����T�i���y ^�h4i\I���-O(�X�!���0���MB��	X�hf�Yu��#'�%j��qX��@?8琤Db��F*s)��5�o�wW욋
�{<H�%�F����@+Ƞ�ɫV%�D��EVN�� �����b�{�h���/��Z�����sq+�z�����1��6�a��o	�k�4���ow7J6ȫз��˅��J�cٙV)�}�5�&��D��K�����!��~�B�`}�mJ=#�b�u���)�Q�X����|��.���z[9(�+q�r�πF[g�1���Ʋ��e���L�X��-h±��a9�d^��X 1�9o\�9�.���sX쾈�yi��~�6=�+,�7!4&��w×�je�`dLE������Cڂ@�����8����P�fT8M1����rD;��"{��uO����o�G[���V�S=��Y !�#�[��}�▕��_��^�a�A!�z�k��  ��L�`D�
�A���Z��-w�n�sY�Ґ���A������4~��l�l=�~��Wu�F��.�����6�����ھ̀ Ϫ�y4�&��1�X(���r�?�Me$tP�ťDC;;:�+H|p�H~��h�b\S�W�t@A>	:>^�4A��=Q^�^�W\~/
�u�3ܕb���y� C}�!ސ����������s�⾛�a]n�h��=v�{1S�A���[��җ�;VA4��8���m!�Px��7~��f���5w]�{��X�,��H��R��~���3�Ɏ�d�`�@/D$8����o4i�o|�ny���W[J�`��+j��]QW`��'�'AOۉ} ���5&9fD)�9�hΊ���R�	��r�D_Z �=ޯ�O}u�"5�r��f�0����\�c� b�V	8e��!��������i�%&]o�T��m�*�����*"�232���_FI���HKi("@�#�p�K��M53��2��t֠؈ꈚ!���4(�RX5@���+g��>5f����l�#*�HsI���ї^0�Me8%@_�*N�Z}!�<\km0p�*R�����ګ�#5�X�r�.�E��#.ؙ#����v�?$�!6��A�̝����{Nx*���~�W���3�0~���"��@4q�h��	��j.5�ւeu�.�a�����V�/�>�$i=��0��c($��4yS�Y�˽$p ��GeX�R�ǳ��Ϛ�]�� 3=l�VJ#|����ri�^[+�ES�!,࿑L[P����u�U�>m�0���22���8UtR�EZ��p3J ��Q��x�,Y{���Q��ooP��8��q����c�l����JJ�e�n�uy$p��4P�m����p$)���[��E�M�G�svC�ȴ[��ݻ�6@.�2��IB���@J��E��ad��-E�1CHռ�ad@Ԑ�#pab�e!����*�E��V�sR�8w�J̢�:��������}*��9�<��2;�i|��x粀� ���9P�0��l�Q:@#$(��6 ���!D�����5D}�c]dN?&�=*9LQ�f�&�|P8�A1�߶z��7�[�l�cˁPe��u�G�#�L��u6���u�%�
��R��Ys�9��q�wo �Jc7B���'
hJ�5����%�J�Ww�=�b.U�k�ȕ�V�!0�Op�E���/ۜC:h;�roˏp�RfG�p�\���jt�[�S+����	D���3T 1ҭ�7���W˔~�Ek�ʔ�7�"Jz�61�L��m�gȈ�Tx��\�e\�	.����|o&-�1G��&�=�T����s�W���.�b��0a�e��,�Lю-T�7&tE�Ho� �Aa9"𺥞�,�h)gj�s,�Y�$���beB5�+R	Ȉ�{���xIRe����؜�/2��Ё�+��1��a�T���h܎e��Gm�Zq��z�g�ej3���r�vPlߒ�[��uY��x�m�33��b�-s\�=4-m��i�GG�ܫ&�jʹ��G��Z@T��L�M��� � �#%��篳�F�8���������fb����&-��82H"� O�$&�/�u	�I$wƓ*�)9촸"$�]��BB���