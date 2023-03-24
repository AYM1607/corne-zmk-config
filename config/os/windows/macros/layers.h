#include "../../config/helpers/actions/win.h"

TO_LAYER(w, DEV)

/* to_wDEV: to_wDEV_layer {
    compatible = "zmk,behavior-macro";
    label = "to_wDEV";
    #binding-cells = <0>;
    bindings =
        <&to wDEV &kp F_wDEV>;
}; */

to_wAXN: to_wAXN_layer {
    compatible = "zmk,behavior-macro";
    label = "to_wAXN";
    #binding-cells = <0>;
    bindings =
        <&to wAXN &kp F_wAXN>;
};

to_wFNK: to_wFNK_layer {
    compatible = "zmk,behavior-macro";
    label = "to_wFNK";
    #binding-cells = <0>;
    bindings =
        <&to wFNK &kp F_wFNK>;
};

to_wSTG: to_wSTG_layer {
    compatible = "zmk,behavior-macro";
    label = "to_wSTG";
    #binding-cells = <0>;
    bindings =
        <&to wSTG &kp F_wSTG>;
};

cw_ON: cw_ON {
    compatible = "zmk,behavior-macro";
    label = "cw_ON";
    #binding-cells = <0>;
    bindings =
        <&kp H_wCWR &cw>;
};

cw_OFF: cw_OFF {
    compatible = "zmk,behavior-macro";
    label = "cw_OFF";
    #binding-cells = <0>;
    bindings =
        <&kp LC(H_wCWR) &kp K_CANCEL>;
};

mo_wAXN_to_wBAS: momentary_wAXN_to_wBAS {
    compatible = "zmk,behavior-macro";
    label = "mo_wAXN_to_wBAS";
    #binding-cells = <0>;
    wait-ms = <MC_LAYERS>;
    tap-ms = <MC_LAYERS>;
    bindings
        = <&macro_press &mo wAXN>
        , <&macro_tap &kp F_wAXN>
        , <&macro_pause_for_release>
        , <&macro_release &mo wAXN>
        , <&macro_tap &kp F_wBAS>;
};

mo_wAXN_to_wDEV: momentary_wAXN_to_wDEV {
    compatible = "zmk,behavior-macro";
    label = "mo_wAXN_to_wDEV";
    #binding-cells = <0>;
    wait-ms = <MC_LAYERS>;
    tap-ms = <MC_LAYERS>;
    bindings
        = <&macro_press &mo wAXN>
        , <&macro_tap &kp F_wAXN>
        , <&macro_pause_for_release>
        , <&macro_release &mo wAXN>
        , <&macro_tap &kp F_wDEV>;
};

mo_wSTG_to_wBAS: momentary_wSTG_to_wBAS {
    compatible = "zmk,behavior-macro";
    label = "mo_wSTG_to_wBAS";
    #binding-cells = <0>;
    wait-ms = <MC_LAYERS>;
    tap-ms = <MC_LAYERS>;
    bindings
        = <&macro_press &mo wSTG>
        , <&macro_tap &kp F_wSTG>
        , <&macro_pause_for_release>
        , <&macro_release &mo wSTG>
        , <&macro_tap &kp F_wBAS>;
};

mo_wDEV_to_wBAS: momentary_wDEV_to_wBAS {
    compatible = "zmk,behavior-macro";
    label = "mo_wDEV_to_wBAS";
    #binding-cells = <0>;
    wait-ms = <MC_LAYERS>;
    tap-ms = <MC_LAYERS>;
    bindings
        = <&macro_press &mo wDEV>
        , <&macro_tap &kp F_wDEV>
        , <&macro_pause_for_release>
        , <&macro_release &mo wDEV>
        , <&macro_tap &kp F_wBAS>;
};

mo_wFNK_to_wAXN: momentary_wFNK_to_wAXN {
    compatible = "zmk,behavior-macro";
    label = "mo_wFNK_to_wAXN";
    #binding-cells = <0>;
    wait-ms = <MC_LAYERS>;
    tap-ms = <MC_LAYERS>;
    bindings
        = <&macro_press &mo wFNK>
        , <&macro_tap &kp F_wFNK>
        , <&macro_pause_for_release>
        , <&macro_release &mo wFNK>
        , <&macro_tap &kp F_wAXN>;
};
