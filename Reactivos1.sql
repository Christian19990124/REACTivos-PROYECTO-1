PGDMP     .                    x         	   Reactivos    12.3    12.3 8    H           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            I           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            J           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            K           1262    16810 	   Reactivos    DATABASE     �   CREATE DATABASE "Reactivos" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Spanish_United States.1252' LC_CTYPE = 'Spanish_United States.1252';
    DROP DATABASE "Reactivos";
                postgres    false            �            1259    16813    comentarios    TABLE     �   CREATE TABLE public.comentarios (
    id_comentarios integer NOT NULL,
    id integer,
    fecha date NOT NULL,
    comentario character(300) NOT NULL,
    rating numeric
);
    DROP TABLE public.comentarios;
       public         heap    postgres    false            �            1259    16811    comentarios_id_comentarios_seq    SEQUENCE     �   CREATE SEQUENCE public.comentarios_id_comentarios_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.comentarios_id_comentarios_seq;
       public          postgres    false    203            L           0    0    comentarios_id_comentarios_seq    SEQUENCE OWNED BY     a   ALTER SEQUENCE public.comentarios_id_comentarios_seq OWNED BY public.comentarios.id_comentarios;
          public          postgres    false    202            �            1259    16824    eventos    TABLE       CREATE TABLE public.eventos (
    tituloevento character(20) NOT NULL,
    juegotorneo character(20) NOT NULL,
    informaciontorneo character(300) NOT NULL,
    reglas character(250) NOT NULL,
    discord character(100) NOT NULL,
    id_eventos integer NOT NULL,
    id integer
);
    DROP TABLE public.eventos;
       public         heap    postgres    false            �            1259    16822    eventos_id_eventos_seq    SEQUENCE     �   CREATE SEQUENCE public.eventos_id_eventos_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.eventos_id_eventos_seq;
       public          postgres    false    205            M           0    0    eventos_id_eventos_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.eventos_id_eventos_seq OWNED BY public.eventos.id_eventos;
          public          postgres    false    204            �            1259    16837    noticias    TABLE     �   CREATE TABLE public.noticias (
    titulonoticia character(70) NOT NULL,
    juego character(20) NOT NULL,
    informacion character(3000) NOT NULL,
    id_noticia integer NOT NULL,
    id integer
);
    DROP TABLE public.noticias;
       public         heap    postgres    false            �            1259    16835    noticias_id_noticia_seq    SEQUENCE     �   CREATE SEQUENCE public.noticias_id_noticia_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.noticias_id_noticia_seq;
       public          postgres    false    207            N           0    0    noticias_id_noticia_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.noticias_id_noticia_seq OWNED BY public.noticias.id_noticia;
          public          postgres    false    206            �            1259    16848    tiene2    TABLE     e   CREATE TABLE public.tiene2 (
    id_eventos integer NOT NULL,
    id_comentarios integer NOT NULL
);
    DROP TABLE public.tiene2;
       public         heap    postgres    false            �            1259    16856    tiene3    TABLE     e   CREATE TABLE public.tiene3 (
    id_noticia integer NOT NULL,
    id_comentarios integer NOT NULL
);
    DROP TABLE public.tiene3;
       public         heap    postgres    false            �            1259    16866    usuarios    TABLE     �   CREATE TABLE public.usuarios (
    id integer NOT NULL,
    nombre character(20) NOT NULL,
    correo_electronico character(30) NOT NULL,
    telefono character(10) NOT NULL,
    fecha_de_nacimiento date NOT NULL,
    contrasena character(10)
);
    DROP TABLE public.usuarios;
       public         heap    postgres    false            �            1259    16864    usuarios_id_seq    SEQUENCE     �   CREATE SEQUENCE public.usuarios_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.usuarios_id_seq;
       public          postgres    false    211            O           0    0    usuarios_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.usuarios_id_seq OWNED BY public.usuarios.id;
          public          postgres    false    210            �
           2604    16816    comentarios id_comentarios    DEFAULT     �   ALTER TABLE ONLY public.comentarios ALTER COLUMN id_comentarios SET DEFAULT nextval('public.comentarios_id_comentarios_seq'::regclass);
 I   ALTER TABLE public.comentarios ALTER COLUMN id_comentarios DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16827    eventos id_eventos    DEFAULT     x   ALTER TABLE ONLY public.eventos ALTER COLUMN id_eventos SET DEFAULT nextval('public.eventos_id_eventos_seq'::regclass);
 A   ALTER TABLE public.eventos ALTER COLUMN id_eventos DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16840    noticias id_noticia    DEFAULT     z   ALTER TABLE ONLY public.noticias ALTER COLUMN id_noticia SET DEFAULT nextval('public.noticias_id_noticia_seq'::regclass);
 B   ALTER TABLE public.noticias ALTER COLUMN id_noticia DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16869    usuarios id    DEFAULT     j   ALTER TABLE ONLY public.usuarios ALTER COLUMN id SET DEFAULT nextval('public.usuarios_id_seq'::regclass);
 :   ALTER TABLE public.usuarios ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            =          0    16813    comentarios 
   TABLE DATA           T   COPY public.comentarios (id_comentarios, id, fecha, comentario, rating) FROM stdin;
    public          postgres    false    203   �@       ?          0    16824    eventos 
   TABLE DATA           p   COPY public.eventos (tituloevento, juegotorneo, informaciontorneo, reglas, discord, id_eventos, id) FROM stdin;
    public          postgres    false    205   �P       A          0    16837    noticias 
   TABLE DATA           U   COPY public.noticias (titulonoticia, juego, informacion, id_noticia, id) FROM stdin;
    public          postgres    false    207   �S       B          0    16848    tiene2 
   TABLE DATA           <   COPY public.tiene2 (id_eventos, id_comentarios) FROM stdin;
    public          postgres    false    208   h       C          0    16856    tiene3 
   TABLE DATA           <   COPY public.tiene3 (id_noticia, id_comentarios) FROM stdin;
    public          postgres    false    209   bh       E          0    16866    usuarios 
   TABLE DATA           m   COPY public.usuarios (id, nombre, correo_electronico, telefono, fecha_de_nacimiento, contrasena) FROM stdin;
    public          postgres    false    211   �h       P           0    0    comentarios_id_comentarios_seq    SEQUENCE SET     M   SELECT pg_catalog.setval('public.comentarios_id_comentarios_seq', 1, false);
          public          postgres    false    202            Q           0    0    eventos_id_eventos_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.eventos_id_eventos_seq', 1, false);
          public          postgres    false    204            R           0    0    noticias_id_noticia_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.noticias_id_noticia_seq', 1, false);
          public          postgres    false    206            S           0    0    usuarios_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.usuarios_id_seq', 1, false);
          public          postgres    false    210            �
           2606    16821    comentarios pk_comentarios 
   CONSTRAINT     d   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT pk_comentarios PRIMARY KEY (id_comentarios);
 D   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT pk_comentarios;
       public            postgres    false    203            �
           2606    16832    eventos pk_eventos 
   CONSTRAINT     X   ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT pk_eventos PRIMARY KEY (id_eventos);
 <   ALTER TABLE ONLY public.eventos DROP CONSTRAINT pk_eventos;
       public            postgres    false    205            �
           2606    16845    noticias pk_noticias 
   CONSTRAINT     Z   ALTER TABLE ONLY public.noticias
    ADD CONSTRAINT pk_noticias PRIMARY KEY (id_noticia);
 >   ALTER TABLE ONLY public.noticias DROP CONSTRAINT pk_noticias;
       public            postgres    false    207            �
           2606    16852    tiene2 pk_tiene2 
   CONSTRAINT     f   ALTER TABLE ONLY public.tiene2
    ADD CONSTRAINT pk_tiene2 PRIMARY KEY (id_eventos, id_comentarios);
 :   ALTER TABLE ONLY public.tiene2 DROP CONSTRAINT pk_tiene2;
       public            postgres    false    208    208            �
           2606    16860    tiene3 pk_tiene3 
   CONSTRAINT     f   ALTER TABLE ONLY public.tiene3
    ADD CONSTRAINT pk_tiene3 PRIMARY KEY (id_noticia, id_comentarios);
 :   ALTER TABLE ONLY public.tiene3 DROP CONSTRAINT pk_tiene3;
       public            postgres    false    209    209            �
           2606    16871    usuarios pk_usuarios 
   CONSTRAINT     R   ALTER TABLE ONLY public.usuarios
    ADD CONSTRAINT pk_usuarios PRIMARY KEY (id);
 >   ALTER TABLE ONLY public.usuarios DROP CONSTRAINT pk_usuarios;
       public            postgres    false    211            �
           1259    16833 
   eventos_pk    INDEX     K   CREATE UNIQUE INDEX eventos_pk ON public.eventos USING btree (id_eventos);
    DROP INDEX public.eventos_pk;
       public            postgres    false    205            �
           1259    16846    noticias_pk    INDEX     M   CREATE UNIQUE INDEX noticias_pk ON public.noticias USING btree (id_noticia);
    DROP INDEX public.noticias_pk;
       public            postgres    false    207            �
           1259    16847    observan_fk    INDEX     >   CREATE INDEX observan_fk ON public.noticias USING btree (id);
    DROP INDEX public.observan_fk;
       public            postgres    false    207            �
           1259    16834    relationship_3_fk    INDEX     C   CREATE INDEX relationship_3_fk ON public.eventos USING btree (id);
 %   DROP INDEX public.relationship_3_fk;
       public            postgres    false    205            �
           1259    16855 	   tiene2_fk    INDEX     B   CREATE INDEX tiene2_fk ON public.tiene2 USING btree (id_eventos);
    DROP INDEX public.tiene2_fk;
       public            postgres    false    208            �
           1259    16853 	   tiene2_pk    INDEX     Y   CREATE UNIQUE INDEX tiene2_pk ON public.tiene2 USING btree (id_eventos, id_comentarios);
    DROP INDEX public.tiene2_pk;
       public            postgres    false    208    208            �
           1259    16863 	   tiene3_fk    INDEX     B   CREATE INDEX tiene3_fk ON public.tiene3 USING btree (id_noticia);
    DROP INDEX public.tiene3_fk;
       public            postgres    false    209            �
           1259    16861 	   tiene3_pk    INDEX     Y   CREATE UNIQUE INDEX tiene3_pk ON public.tiene3 USING btree (id_noticia, id_comentarios);
    DROP INDEX public.tiene3_pk;
       public            postgres    false    209    209            �
           1259    16862 	   tiene4_fk    INDEX     F   CREATE INDEX tiene4_fk ON public.tiene3 USING btree (id_comentarios);
    DROP INDEX public.tiene4_fk;
       public            postgres    false    209            �
           1259    16854 	   tiene5_fk    INDEX     F   CREATE INDEX tiene5_fk ON public.tiene2 USING btree (id_comentarios);
    DROP INDEX public.tiene5_fk;
       public            postgres    false    208            �
           1259    16872    usuarios_pk    INDEX     E   CREATE UNIQUE INDEX usuarios_pk ON public.usuarios USING btree (id);
    DROP INDEX public.usuarios_pk;
       public            postgres    false    211            �
           2606    16873 &   comentarios fk_comentar_tiene_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.comentarios
    ADD CONSTRAINT fk_comentar_tiene_usuarios FOREIGN KEY (id) REFERENCES public.usuarios(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.comentarios DROP CONSTRAINT fk_comentar_tiene_usuarios;
       public          postgres    false    211    2741    203            �
           2606    16878 %   eventos fk_eventos_relations_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.eventos
    ADD CONSTRAINT fk_eventos_relations_usuarios FOREIGN KEY (id) REFERENCES public.usuarios(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 O   ALTER TABLE ONLY public.eventos DROP CONSTRAINT fk_eventos_relations_usuarios;
       public          postgres    false    211    205    2741            �
           2606    16883 &   noticias fk_noticias_observan_usuarios    FK CONSTRAINT     �   ALTER TABLE ONLY public.noticias
    ADD CONSTRAINT fk_noticias_observan_usuarios FOREIGN KEY (id) REFERENCES public.usuarios(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 P   ALTER TABLE ONLY public.noticias DROP CONSTRAINT fk_noticias_observan_usuarios;
       public          postgres    false    2741    211    207            �
           2606    16888    tiene2 fk_tiene2_tiene2_eventos    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene2
    ADD CONSTRAINT fk_tiene2_tiene2_eventos FOREIGN KEY (id_eventos) REFERENCES public.eventos(id_eventos) ON UPDATE RESTRICT ON DELETE RESTRICT;
 I   ALTER TABLE ONLY public.tiene2 DROP CONSTRAINT fk_tiene2_tiene2_eventos;
       public          postgres    false    208    2724    205            �
           2606    16893     tiene2 fk_tiene2_tiene5_comentar    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene2
    ADD CONSTRAINT fk_tiene2_tiene5_comentar FOREIGN KEY (id_comentarios) REFERENCES public.comentarios(id_comentarios) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.tiene2 DROP CONSTRAINT fk_tiene2_tiene5_comentar;
       public          postgres    false    2721    203    208            �
           2606    16898     tiene3 fk_tiene3_tiene3_noticias    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene3
    ADD CONSTRAINT fk_tiene3_tiene3_noticias FOREIGN KEY (id_noticia) REFERENCES public.noticias(id_noticia) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.tiene3 DROP CONSTRAINT fk_tiene3_tiene3_noticias;
       public          postgres    false    207    2729    209            �
           2606    16903     tiene3 fk_tiene3_tiene4_comentar    FK CONSTRAINT     �   ALTER TABLE ONLY public.tiene3
    ADD CONSTRAINT fk_tiene3_tiene4_comentar FOREIGN KEY (id_comentarios) REFERENCES public.comentarios(id_comentarios) ON UPDATE RESTRICT ON DELETE RESTRICT;
 J   ALTER TABLE ONLY public.tiene3 DROP CONSTRAINT fk_tiene3_tiene4_comentar;
       public          postgres    false    209    2721    203            =      x�M�Yn�,����Qx�}s��tn��H����|:'��V[�P�����������C�g�[Ks���,_�umٳ�X�w�qj����;��f����g��Ф_��c+g\R�[%���7δ�WhLyW�<G.�]r\cE��o�=fy�Nn�]�T�+21�����%�F�w3�k�o��_xj�>Պ#iQ�M��ٞPf��XL��`��#�MR�j"�F,�o����K��.�2�3]�G0R�	Ϸi���K3��?��������O$�`y��X�|����XY}W�xx�$�i�y�v�>q�閨��p��)D�J6��
���R��6$d��k�nd1��*ڮ�]����m��Ǳ�UF#�w��䯾<ǗS�g<��O�Mn��x��D��5Nw�v2�ȶ�a�`�S!�!�x܍(xG��D�������:?�)����q��a|��>i�V,���L3i�>Nz�>��0��?X»R�0�G��g�l��z�7��9����J�������Q��9x|;����Lޗ0�>���mj����U&��n�fOʷ�H1L	oi�*��;�o�pb��K "1C�֥�睭�H����w�`�����b���6q�$q�hh�߬�l7�����������O�i�rSH�Ga���I�
����%�:�w�d�C�D��Ϭn]����/���)*`t���le�/8E繮���F�J|�q�x~_���;���� �D�ƕ�R����>�FN#��m�hz~�P�I�	*sP�F�4�g���:����[��o�㨑�}�d���T�X��J����2�`/�;?B�����j��� S�iߗ0��0��]�^�|���I�J:�V��[[ۡ�qd}iM�CT�.v�j����m��ۨ�u��s)�z�?���b��?��!�þ����_̜���`2�^�xkhǤU%n{X�8gw��r�w��U��:���Xй��&��r9ʶ82�����d��7g���x�����=�^⻇���J���۴hX�W�.B�]���8�Q��h�2熅��V��J�q��\0���>�)9�i�q-u�C��/�;'�S����y݋.qmDm�����%����ɉ{)��h�߲�������C�Y�6~��Z�u��}}�y����=���N�Y�z%�TCvڮgr�FƳ_?��xS8��������XB�ӜշȮ=ɒ����)v��]�2�?��,^���5c���R��u`�2��\Ճ�vn,,@�^}K�>�*�G\����F�˂6���D0"6mp,��)y��=�<<K:dm��u�M�	���N����|�-/"��=��0?ɨ�������_��C/���G��A_�u�얽|���.�Ci~�_{�٧AީZ��.�!�1�t00�)��ww|x�D�t��xn�d�h��K4׷.{$��z�T�:l	� x$���W�:�"��D�;'^��Z���'�˱�H4�p��T���f��נ|�B�+;��<�I�����w�5��j���ChI� 5wj,��b%f_�I��|+�ߏݫC����y{2o���6��P�����7Ѫd�}7��6��Y
��=u��AAY��� �&��^���}}�s>�}���r^[鱻(�y�i���0[;L��EA�@�p��y���_v�g�������}���IUü'���t"
.�2����S������w	G��UͻN��	.��Ҵ9rx4��#�7��rt혙O�ٴ���lG�<���%GA�����s�y���?�A �C�?T��%�D��@�#�5g��E�˙cJ�>�G0�&�)�����Ʈ`ȷ�1m&�I�>
<LĜd��b�wM�@'M�L� ������ oy���7M�����p}RX<l+9�����w2��D���;t�|�RoQ�6�:�������.,���Џ�9�=�U�+]�;АDr����]�]�1��3x�e�T*BtA���������?B2��}J�mBYR w��ZӨ ��/4P��>82�Ȧ�x�3�C�M�k�}
�Hp�����[��K��%�,I�嚑���ˤ�rŃRz/ ?����<^4~�u���ʞ�hɰD>�C�NlD��v�̜���*7b��������j��JJ4]˽��i�.�!���I$�Y���I�Om���X.0���.0�21?�}��B���Jj����4��������==S��/�|/��.{�5I���K�@8��k�!���M7��=O���x̱�`�	O-aC<�1�k����u��%X#�v
�{��YsD���:�fB�v��$�O1�{��K@�+�p�Y���=i�����>ju�������K�{E��N���jW��uڶ=�v��OM�������v���f�U��a���� ���̓���=�m��=hBr��tAD왯�´��idK2/��d�9?��nՀ�`��
S�2\�K]u�[��|���d��W������{R�Y���a���p�;�����Jt���:t���i�\�\���SWo�#
����^����ќ��c�"UMsM��������\�k�ډA�������YdֱP�������i�R�r����! A3�_sc?^B�Z���>}u~�!a����,�Z�gR�Ԗ�U�+�T7���*��D�s���s�7�T���mt^����p����ǟo_����weY�ờ����tN���J@�T0��=�M�y-I��ݮ�v�z$��Ӝ�����U{�c/����/�ؽ�x��,���U�*�C��r+�C�(b�K��KEJ:�pǜ���_�����������z��>��G�߹/�~]�1��F\"��	gF�������in9�v6��j?dڔS4��i:5g -�`����.����>�Z�w�R�I���ƙ�h.��o������"� ����c��)��cA�-ں/�*/�M�m����0�Q.i�:'���x�,�<�$�ڛ������YQ�<��B����+�a�my� ��d7�t�_�>��(�o|a�A_cE9ݓ�MNm�ʯ���;�g?���?��@3᥄�i��%&�͗�N��N�{���t�	���ۼ��^���S��@�t��yǢ�}���� $�랖��t� t���wiC�i�՗��cp�ъ�:���7��X?;��%U�
����)f3�{2���Ơ�߻C6�"�uP��"$��8�*p���P���=�� 8~!�@���(ƭB���m�dYo��:��j��5�3�_r��Իm�~�f�(�|�:���`�>+�s:��d�qXȉ��5*�B���pV����7
+7�=���q掍����|��!Kգ����$l%aGy��W��v��$�l�B��Gc!F0sД���s�Z�Q��/��PL��n���0N�E.�k�m��Պ��ƅr/���5��%��/A?E�m��r���q���0"5�۠�OpR@2}����{=�Q�n�.{��F���P� ���֯'�>����+	��J"�`��y��Rօ�&+���Κ�3C�Yoه5��v�f�wf���2���AA7��D�Mt�4�u��8JwI��WҼ���;�i4���ffY��[9��R�I�/ZB|����k��R(����y�������0Q������N��Bq�JW~|S9�P��a���������h>Աh�+M�<�a2��*�J�$f�}j�#�@ T��_�nl� �>ϥNP���_U���+�@��k���s/���YIy<�yWO�x�e�f+�_��c��ۦk��v��3��a&mnr�S�7��F�>��P&�#7���P`��X���j�|��C|p��h���a�����٤9W��<͇b�</��g�<�����y(}ܘ'�k*��H����z}�����!/ޑ�
ȴ@�p�E۵��w�2�� p|��:O3�[(����]��/Z@��Tr����>���c�����*3 abi6�aH�}pt?v���Oy3$>A&�(��AC�V�
��5���7�?���H7;`K/D)(��}��n_G�,,O`5    ����������6D      ?   �  x���r�0���S�	 r�I�sJ0	.n]��n�Ա�,�ҧ��Bl�M:Ҵ��3,�W��x�9sud��0߱�����P�E�8t�DG�3%����?������u�Ѵ�����P��*fT�����u�X�]��ۍ�|�E��l�7���7�M��X#.)�Uz���|5��v�
��Y<mB.Е�QI��M���<V��Y�,v�.`Wa�El��KԷ�\H���;���~���[e�ݜ���"��]R)S�? �m�
�����7�(P�k+�6�b�立!�nw~l��*��bz?1ل\�S��:-٬K03h
�U���uq0ڤW�+��n��������Ʋ���`��S� ׅ�A_���.��q�5ل�A�W���!��t�*�N����h��*f�i���!o�����<��?�Wߴ0�,�����1��� n[�����n�F��kd�&�@�&M�
�/q�LJv{�Ȑ��?a8����{�GYR�lB�*f�<�4�5�%�N%0^M�*���6�{�MȠ�X�q�8)G�c	22M�
�A!F�M�*��W)�Y�4�
�U�u���J�-�6��N��x5�*�~��ٗqh���3a�]M�
��Ml�h���>"��쩆������M��bj�	��Ub+���д�@J�)`WaW�C�0�"�5"v�.N�U�qWS����'�E����]�N|�X��)�D      A      x��]MsG�=��"c.뉀 %Y�� 6pФ(M��] J��jWuÂN޽�/؈݃��X6t��Ŀd3���A��f'b<��htWWyx�2_�U|O�2����e��8��OD륰ʸ{orH��3k ��P�R�<���^O%hW�p�n>@��,U�d	s1�*��-D�>̄��2����n�/��	r
���DK���G�'p~���[�T2O��NP̴�#���s|z�G�xbrx�^U�H����U)����'�G�ǈ4��7[I0t����ҔB�h�N��Ji�\�������Ꞵ����j�LG�����r�h2���O,Je�6D+ �|q$�Jꟾ�q�Ri���FJ#+��Fx��{�w�7�\��C�^d
��;��Xǥ(�m�j�+���Xyb��װD���f$&R������xi�K������L�K��3Y�D�"�9�kh�Z9������=���1�8xm22Oe{E2C�	^	!�4������K\\*p��5� 'tJ/�yu��c�Y)��?��O�ߠ���񮓃�� 	�d��O[O��'}����h
����j����unR0s��(E6S�r�r.-�Z:�7�w��?"�c��B`��!�������h�D�� b� EG�qY��X{Q��.��a��1~R��DB�?�B���:P#�P4��C��Ó�YŲ��=mW��]9�^7h�&�PLdO�<>�����C,���u��$���mV.���4���w[ӆĚ������&�d�oN*����0��R���Ut$�z=���h���	�7mJ���opj(7p.���~�r*�wU	~Py�
��	��C��==�L�Л\^zד���`~Q��I;�3ewL���|�'��
�n����LJ�\!��y��2b���+���I7?(Z����js���\���XNr����)n��R�7g0�
oK�\J�UZ��?�G�H�-1f�ƙr��RX��I�ߩ2YØ�]#>M�Eҙ6l%*��v��Mt«�E��6{/cE!�)jyP��68�����a]M�i��='@�7w�8~b�d��\�F6���� ���\+����.��rd���?S,b!��ݠ���}r�2��L��5؊0��hڻ|�X�tM����b��5��Y��E�Sav�u)r��U����+�B
����x�sa|��k��tbeٜ��i��	R��q�g�VH�*]*T(xS�R�K�rĂ��ԟ��"��E�������b0����7���gUK�B�ׇ+k�ȷ%L}�H-g��Ҭ���3���Ų��*�p�,g��\y߁Z(��M}��6��uR�ܬ��[�[Ϥ-��-�t�>e7��l%
Jd��LI˶M>NL*�����! ���q^��;���p�k�Q�ŉ���ID�g:�O�+L�fZ��Y�~��r����1��f����_ �k�/-J5S����l&\n �����]J���:�9RN�$$��Ml�$+ioE&�[�6��P3Q}�R@@@@@@@���N����dz=^�5��������`�����&�sU��:���@�]C�0b{��X�2}KF���'>A!��PHaIA�"$"��0��U)������M��	h����F��=(7Jcif�K�L%�M��s�(k��%шU�ŉ3$��{�i�])����1�/��mJ�dMV.AEcr\Yb%R�^E"�إ�	=�,�0(T��oK6qE��j�58J��t#�����ع076��9X��ɕl�&;��6)��۽c�r.4�mp+h�q��7y������Z�Л�\���B�s_[�U���zi,nx��A���Z���� ��p�������F����:XH3
�͢�}�:9��L������`ܟ@|;��]|�X:�/nc5f}p��K�0�=%�E�r��9r����A@�`�CS�'!!ɿ_H��7�	
�ʌ�$��t�-�p�L�<f��++�V])�&�Qn>hC�a@�dJn�xs�7Òǵ21���JB/�ܗi�[���l��Iso6L!��d�1��x���-{Y������3Dw�ٻ���k�_��~�:=z�|�
���0ƣ	^�'�:փ
�/�]ۺb����}O2�K���a�(���K�)��l
�r�M)�`�T�d�J׆BZ/(R�R�{���y�9;���3UF*d�S|j���J�ս��Ey�3�5%�S�Tn=@�F<dI�7�G��FTe�ۨm�i�o�ց����Y���F���z����6P�6�2Q�N���%�k�4'J=����P�:��sb�'7y����[9���-���R�<�@��ެ(���K��$��w��jK��{�ׂ�1�7���O����:�0F%��ET~�s�����'�N�tg�*ȶaV�����w� �>��z��W�)�2%ƟJ��<���	��TD�g<���|�Ub`*gRkj��/M}��8W�`�)[����~8�����T�ӎ�#�^n�ЭI���*��#���	�C�W?��*���A�� 	�Y�6LjUΞ�:���.���rs���"�=����x[��U3�|��@�����DB{�����Q���72/�N��Iͽ�W�F��sIC��Z'߉���!�&E����f���w��V���D�1y.���!��r3��k�o����B��c=U�3���J�V��t�u�;r��
���-�[»msL��b�=�Z�R$2�;#n�2����}K����A�,2�֗+�a$�гkxY�ї���o+U�z��gP�J��!5���y�X��!����h���mC7���d�Ҭ۔�����;�/�ʽ�s�e֮m�lΈ*��^�s��r��:.�&vm(�X���صt.��K�%8R��Eb���~��
&����h8����yG(�������z�2��`1����Qc�%�����Zd���@B�N�U׮�	'�`����gc���"+�:;�׮*��ngO:��N�d�z��*��G�cլ:�:��&���<�v)�ώ��ڥ��?gP�?���QS��A���S>d_������l�V	g��_6'%&7>!��X�8Gߝm��d}#
!JBa�é<=�,I:�&�
>��e�F��E�V��Qo�:�0���z@]>k��M���ճk�L�iS��L۞,�Y?�¿��s�Pb�/�_[��G�j�}>�\�.�["�'��S�ՍMeNZ�M��>:�׋ ��b���t��M���K�}����Sp�����ِ��b/����l��m-&R0D���l�~���!�2KP+��*�5+�,����u���m��g�/T��9e�B)�Vr��w�"���n��T���;AYRQ�?�$���Ekw���ڨ�뀛F@@@@@@@�?Z�n��9{���qo ���\Nbx9�&_��'�?���~��슪f�Kf��NhM�Σ��8ڮ򴢓~�Tx�Ri�Lޟ�#�N}b�T�3��d��%~���&
A� +Ke}s4��H�����M����$!���{��u�.�j!P��Q={i��*��̚)�����#���|'�J���L�%Y3���}���Q>ՁcJ��:�!�\1���ά��yg���ْ�ʚ����<������ӲF#S����DYM����l����}����9:���q/���N���e=J8��*��U]��,�+s/���BY&�\Ɇ�3jf �Pb�������
��T�g;_�f[K�%F&�H��Nʄ:�^p!Q}F��=�x�+Q��د��*7�U)���)i��\�wܧ�0E��(K-��5�?ֲqGSF��Je�;tځL�����Tt'��T��j�x������.��Ć`���A�M����=m$�'2Mg��v�8��f.�Xx_
j&Q�d6���5��X�-����-���w*�>�� )  �}SJ�:�	�r�Ef,�(���`W��W��7l�H��i���h�����9        �D������br~M�c��G�ן;�y����h8�n_�9zu��:�[qU�l�\�;��>�/\��w���ȯ��/=�)�5�6$��2�%�����G0sJ��\����]�O��粟�qK�&U]'�Y�Y=&��jA�u�$'��.,�TI%>SC�_*sd�m���WMKg�hjy��$�������|�U�ضrpbAJ5��Ʌ�vW���#/G�/삫��{�V���s��u>���u�^JP�Ub�қ�9�����%�P,���(u��C=�� Nob?�/�4���I�(9����q?F���r773����jb�kMj�vt%���	��ቀ��������3���V��Qo҇����d���U��7"@��3Qw1f�������y|����*H�:�)1L.����N筵��i�����К���\��s-��0)�N�d�w����QlL��RDEI��)�E��E%����>��e��6aQp"�|�Huځw�(6�２�R�es'ھ���#���s< �ܕd4خ�����.E���/�O��ݦ�Bm�����N���JY�|����͟rü��:�w,Ȫ5���~�NQ��C�"�'��tI��l��P�C�"���u|���H-g>��7����|O�c��Iʊ��\]9ſM��5o�̹W����x>�	��4u��5��n�7!�pkL�|�ֶ�VJj��$/ᄦKv��?��I���m.,y^����M�q�]���uzt1�N�$=8��!���
��"�XN�D�2�v}��$"���͹~ـp�����(�������ph��r.�C���4�,���* ����j�g8h��e����'��!Bm� I�{-sJ���H�I.�'�>3�f�6��D����]�����6��$Z�)��T}W�[7��M���t�`�K�x��-ڷa�����A��H�M*����,y����~`��'����9>::�_f�_N      B   F   x����0�j&��7�%�ϑkb�lt1��`��1�L'y�b�I7�y�0�j.e�\�)lR��,�G�\u�      C   D   x����0�b(ƣ�������e@:�l����a^��%ŋ/�N���f���^�4���$d�=�Y�      E   �  x�uU�r�<����/`F�e�8�r(�-�0�Q@%�Je;y�^��W�#�b�gCM��a�W���Z�ph�2[��L�Յ��B���zU��x�i�]��6m,��s�"�%"J��(&h�t���.���B�Xo\>/���F{o���ܟ�/���%��0�(�q�K$�B��'B���&]��&��o���f�`�72�L�0JD�4"�^�j�.B�X������y1*m��h^<��{�꣄C$�b1�1ƕ2�<"
M0Q-��W�NP/0w.leKo^��N�S���aC$��BJ�IEW���x�l�m�
t����~��~���)��H�����J$�0���t|H�O]�t����p�� �\#�$�R$@��F����^�SAz��UQ�\�٭��m�3��~�nn��B*�L�0���p�����'ٞ�?��.SS{[�����=�
�2D���XD:�ºIk��� Nr��ۼ W���l��(0�S��}8�m���Y_(98À��M��8���7B�P.�6���$d#�����0:���w9��h����aG{�ڗ4�ץ)L����{i`��L�@�c%(>�D���ә_��m�ZޛU���8wY��u"�,�_�<![�[��+��2�EZ+�1`'�Ռi59�a7��V_�Xh�1!�Bo��I����h���s��}��DaF�k���f�X�����$����y� �6�ߎ::�7WG�W�3V	�)Lѝη?���0`��eϻ��y����'gl��$>%����G��8X�YG�/x�Y�~>j���+Tp-ſڇ)I9ԛ���N"���Y�3M��� A�����}���5W�oL��{UX1�.=Dj"A�g_%�S@�u�/v��%*/�4<��62���\#���FX�$�Bpy��(E��/��)�A�����X�P�r7��2M��}4�C�3x!������B�)ǣp4� �{��I     