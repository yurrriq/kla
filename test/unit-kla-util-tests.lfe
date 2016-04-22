(defmodule unit-kla-util-tests
  (behaviour ltest-unit)
  (export all))

(include-lib "ltest/include/ltest-macros.lfe")

;; TODO: uncomment once dependency issues are resolved.
#|
(deftestgen
  (list (tuple #"kla version is a printable list."
               (is* (io_lib:printable_list (kla-util:get-kla-version 'kla))))))

(deftest versions
  (is (is_list (kla-util:get-versions))))

(deftest module-exports
  (is-equal '(#($handle_undefined_function 2)
              #(LFE-EXPAND-EXPORTED-MACRO 3)
              #(get-beam-exports 1)
              #(get-kla-version 0)
              #(get-module-exports 1)
              #(get-versions 0)
              #(module_info 0)
              #(module_info 1))
            (lists:sort (kla-util:get-module-exports 'kla-util))))

(deftest kla-version
  (is (io_lib:printable_list (lutil:get-app-version 'kla))))

(deftest versions
  (is (is_list (kla-util:get-versions))))

(deftest module-exports
  (is-equal '(#($handle_undefined_function 2)
              #(LFE-EXPAND-EXPORTED-MACRO 3)
              #(get-beam-exports 1)
              #(get-kla-version 0)
              #(get-module-exports 1)
              #(get-versions 0)
              #(module_info 0)
              #(module_info 1))
            (lists:sort (kla-util:get-module-exports 'kla-util))))
|#