#define MORPH_LABEL(LABEL) #LABEL

#define MORPH_ASS(OS, LYR, NAME, DESC, KEY, KA, KS, KAS)             \
    mp_##OS##LYR##_##NAME##_as: morph_##OS##LYR##_##DESC##_alt_shift { \
        compatible = "zmk,behavior-mod-morph";                    \
        label = MORPH_LABEL(mp_##OS##LYR##_##NAME##_as); \
        #binding-cells = <0>; \
        mods = <(MOD_LALT)>; \
        bindings = <KS>, <KAS>; \
        keep-mods = <(MOD_LALT)>; \
    }; \
    mp_##OS##LYR##_##NAME##_a: morph_##OS##LYR##_##DESC##_alt { \
        compatible = "zmk,behavior-mod-morph"; \
        label = MORPH_LABEL(mp_##OS##LYR##_##NAME##_a); \
        #binding-cells = <0>; \
        mods = <(MOD_LALT)>; \
        bindings = <KEY>, <KA>; \
        keep-mods = <(MOD_LALT)>; \
    }; \
    mp_##OS##LYR##_##NAME: morph_##OS##LYR##_##DESC { \
        compatible = "zmk,behavior-mod-morph"; \
        label = MORPH_LABEL(mp_##OS##LYR##_es); \
        #binding-cells = <0>; \
        mods = <(MOD_LSFT|MOD_RSFT)>; \
        bindings = <&mp_##OS##LYR##_##NAME##_a>, <&mp_##OS##LYR##_##NAME##_as>; \
    };
