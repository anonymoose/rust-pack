;; User pack init file
;;
;; Use this file to initiate the pack configuration.
;; See README for more information.

;; Load bindings config

(live-add-pack-lib "rust-mode")
(require 'rust-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(live-add-pack-lib "flymake-easy")
(require 'flymake-easy)

(live-add-pack-lib "flymake-rust")
;(setq flymake-rust-use-cargo nil)
(require 'flymake-rust)
(add-hook 'rust-mode-hook 'flymake-rust-load)


(live-load-config-file "functions.el")
(live-load-config-file "bindings.el")
