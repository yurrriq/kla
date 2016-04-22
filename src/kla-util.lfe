(defmodule kla-util
  (export all))

(defun get-app-file
  ((app-name) (when (is_atom app-name))
    (get-app-file (atom_to_list app-name)))
  ((app-name)
    (code:where_is_file (++ app-name ".app"))))

(defun get-app-data (app-name)
  (case (file:consult (get-app-file app-name))
    (`#(ok (,data)) data)
    (x x)))

(defun get-app-version (app-name)
  (proplists:get_value 'vsn (element 3 (get-app-data app-name))))

(defun get-lfe-version ()
  (get-app-version 'lfe))

(defun get-version ()
  (get-app-version 'kla))

(defun get-versions ()
  `(#(erlang ,(erlang:system_info 'otp_release))
    #(emulator ,(erlang:system_info 'version))
    #(driver-version ,(erlang:system_info 'driver_version))
    #(lfe ,(get-lfe-version))
    #(kla ,(get-version))))

(defun get-beam-exports (beam)
  "Given a beam path, return its exported functions."
  (let ((`#(ok #(,_ (#(exports ,exports))))
         (beam_lib:chunks beam '(exports))))
    exports))

(defun get-module-exports (module)
  "Given an atom representing a module's name, return its exported functions."
  (get-beam-exports (code:which module)))

