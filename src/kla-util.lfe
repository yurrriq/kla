(defmodule kla-util
  (export all))

(defun get-version ()
  (lr3-ver-util:get-app-version 'kla))

(defun get-versions ()
  (++ (lr3-ver-util:get-versions)
      `(#(kla ,(get-version)))))

(defun get-beam-exports (beam)
  "Given a beam path, return its exported functions."
  (let ((`#(ok #(,_ (#(exports ,exports))))
         (beam_lib:chunks beam '(exports))))
    exports))

(defun get-module-exports (module)
  "Given an atom representing a module's name, return its exported functions."
  (get-beam-exports (code:which module)))

