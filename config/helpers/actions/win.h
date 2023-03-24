#define TO_LAYER(OS, NAME) \
/ { \
  to_##OS##NAME: to_##OS##NAME_layer { \
      compatible = "zmk,behavior-macro"; \
      label = "to_##OS##NAME"; \
      #binding-cells = <0>; \
      bindings = \
          <&to OS##NAME &kp F_##OS##NAME>; \
  } \
};
