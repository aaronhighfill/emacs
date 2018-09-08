;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

;; I have created a mess of my emacs file and here it is.

;; Setting up windows
;; Put the emacsclient shortcut in shell:startup.
;; Set the shortcut to start in the folder that you would like per machine.
;; Also "C:\Program Files\emacs\bin\runemacs.exe" -mm    to run in maximised mode.


(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(windows-scripts
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
;;     pdf-tools
     ;; git
     ;; markdown
     neotree
     csv
     ;; org
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
      spell-checking
     ;; syntax-checking
     ;; version-control
     emacs-lisp
     auto-completion
     (auto-completion :variables
                      auto-completion-return-key-behavior 'nil
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence 'nil
                      auto-completion-complete-with-key-sequence-delay 0.1
                      auto-completion-private-snippets-directory 'nil
                      auto-completion-enable-snippets-in-popup t)
     erc
     autohotkey
     org
     python
     html
     javascript
     xkcd
     spell-checking
     syntax-checking
     ranger
     shell
     erc
;;     mylayer
     git
     search-engine
     ;; markdown
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      tree-mode
                                      markdown-mode
                                      2048-game
                                      elfeed
                                      swiper-helm
                                      csv-mode
                                      org-journal
                                      hide-lines
                                      ;restart-emacs
                                      bash-completion
                                      ssh
                                      ssh-agency
                                      nov
                                      dired+
                                      w32-browser
                                      powershell
                                      ;;org-drill
                                      irfc
                                      restclient
                                      restclient-helm
                                      restclient-test
                                      monokai-theme
                                      ;;color-theme-solarized
                                      solarized-theme
                                      sasl
                                      erc-sasl
                                      ov
                                      hydra
                                      vdiff
                                      bm
                                      sourcerer-theme
                                      ;;ov-highlight
                                      writeroom-mode
                                      beacon
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(org-bullets)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and deletes any unused
   ;; packages as well as their unused dependencies. `used-but-keep-unused'
   ;; installs only the used packages but won't delete unused ones. `all'
   ;; installs *all* packages supported by Spacemacs and never uninstalls them.
   ;; (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization:
This function is called at the very beginning of Spacemacs startup,
before layer configuration.
It should only modify the values of Spacemacs settings."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non-nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   ;; (default 5)
   dotspacemacs-elpa-timeout 5
   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the lastest
   ;; version of packages from MELPA. (default nil)
   dotspacemacs-use-spacelpa nil
   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default nil)
   dotspacemacs-verify-spacelpa-archives nil
   ;; If non-nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'. (default 'emacs-version)
   dotspacemacs-elpa-subdirectory 'emacs-version
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non-nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
                         solarized-dark
                         sourcerer
                         solarized-light
                         spacemacs-dark
                         spacemacs-light
                         leuven
                         monokai
                         zenburn
                         hc-zenburn
                         )
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro"
                               :size 33
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;;The leader key (default "SPC")
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands `M-x' (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non-nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non-nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non-nil, the paste transient-state is enabled. While enabled, pressing
   ;; `p' several times cycles through the elements in the `kill-ring'.
   ;; (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; Control where `switch-to-buffer' displays the buffer. If nil,
   ;; `switch-to-buffer' displays the buffer in the current window even if
   ;; another same-purpose window is available. If non-nil, `switch-to-buffer'
   ;; displays the buffer in a same-purpose window even if the buffer can be
   ;; displayed in the current window. (default nil)
   dotspacemacs-switch-to-buffer-prefers-purpose nil
   ;; If non-nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non-nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non-nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols nil
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."


  (cua-mode 1)

  (defvar org-fancy-list-bullets
    '(("^ +\\([*]\\) "   ; asterisks need a space first to skip headings
       (1 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))
      ("^ *\\([-]\\) "   ; hyphens can start at bol
       (1 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  (font-lock-add-keywords 'org-mode org-fancy-list-bullets)

;;(setq mouse-drag-copy-region t)

;;(require 'org-drill)

;; erc sasl
;;(require 'erc-sasl)
;;(add-to-list 'erc-sasl-server-regexp-list "\\.freenode\\.net\\'")
;;(add-to-list 'erc-sasl-server-regexp-list "\.freenode\.net") ;; e.g. irc\\.freenode\\.net, or .* for any host

;; (setq erc-enable-sasl-auth t)

  (setq org-M-RET-may-split-line nil)
  (setq org-use-tag-inheritance nil)
(setq org-journal-dir "r:/Apps/Editorial/logbook/")


;; Org mode conflicts disuputed keys.
 (setq org-replace-disputed-keys t)


;; undoing keys
(setq evil-toggle-key "C-`")
(defalias 'redo 'undo-tree-redo)
(global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
(global-set-key (kbd "C-S-z") 'redo) ; 【Ctrl+Shift+z】;  Mac style
   (global-set-key (kbd "C-y") 'redo) ; 【Ctrl+y】; Microsoft Windows style
;; 
(global-unset-key (kbd "C-/"))
(global-set-key (kbd "C-w") 'kill-this-buffer) ; 【Ctrl+w】; Microsoft Windows style

;; remove this that is default bound to mouse-3
(global-set-key [remap mouse-save-then-kill] 'ignore) 



;; org headers all the same size
(custom-set-faces
 '(org-level-1 ((t (:inherit outline-1 :height 1.0 ))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0 ))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.0 ))))
 '(org-level-4 ((t (:inherit outline-3 :height 1.0 ))))
 '(org-level-5 ((t (:inherit outline-3 :height 1.0 ))))
 '(org-level-6 ((t (:inherit outline-3 :height 1.0 ))))
 '(org-level-7 ((t (:inherit outline-3 :height 1.0 ))))
 '(org-level-8 ((t (:inherit outline-3 :height 1.0 ))))
 )



  ;; Turn off linum-mode for org-mode and text-mode
  (add-hook 'evil-org-mode-hook (lambda () (linum-mode -1)))
  (add-hook 'text-mode-hook (lambda () (linum-mode -1)))

  ;;(setq scroll-error-top-bottom t)

  ;; Isearch Wrap search - This does not appear to bew working

  ;; (defadvice isearch-repeat (after isearch-no-fail activate)
  ;;   (unless isearch-success
  ;;     (ad-disable-advice 'isearch-repeat 'after 'isearch-no-fail)
  ;;     (ad-activate 'isearch-repeat)
  ;;     (isearch-repeat (if isearch-forward 'forward))
  ;;     (ad-enable-advice 'isearch-repeat 'after 'isearch-no-fail)
  ;;     (ad-activate 'isearch-repeat)))


  ;; Dired open multiple files - This works, but I don't use it.

  ;; (eval-after-load "dired"
  ;;   '(progn
  ;;      (define-key dired-mode-map "F" 'my-dired-find-file)
  ;;      (defun my-dired-find-file (&optional arg)
  ;;        "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
  ;;        (interactive "P")
  ;;        (let* ((fn-list (dired-get-marked-files nil arg)))
  ;;          (mapc 'find-file fn-list)))))

;;  Cisco stuff
(load-file "~/.emacs.d/private/local/cisco-router-mode.el")
 (add-to-list 'auto-mode-alist '("\\.iosconfig.txt\\'" . cisco-router-mode))
 (add-to-list 'auto-mode-alist '("\\cfg\\'" . cisco-router-mode))
 (add-to-list 'auto-mode-alist '("\\confg\\'" . cisco-router-mode))


(beacon-mode 1)


;; (setq beacon-blink-duration 0)
;; (setq beacon-blink-delay 0)
;; (setq beacon-blink-when-window-scrolls t)
;; (setq beacon-blink-when-window-changes t)
;; (setq beacon-blink-when-point-moves t)


;;  Csv stuff
(load-file "~/.emacs.d/private/local/csv-nav.el")



;;calc bps  I don't think this works
(setq math-additional-units
      '((bit    nil           "Bit")
        (byte   "8 * bit"     "Byte")
        (bps    "bit / s"     "Bit per second"))
      math-units-table nil)


;;highlighter
;;(load-file "~/.emacs.d/private/local/ov-highlight.el")

;;  (load-file "~/.emacs.d/private/local/ov-highlight.el")
;;  (load-file "~/.emacs.d/private/local/cisco-router-mode.el")

;; highilght hydra
;;(evil-leader/set-key (kbd "x h") 'ov-highlight/body)


  ;;custom ediff macros
  (fset 'ediff-append-buff1-line-reg-a
        [?\M-m ?1 S-down ?\C-x ?r ?a ?a ?\M-m ?3])

  (fset 'ediff-append-buff2-line-reg-a
        [?\M-m ?2 S-down ?\C-x ?r ?a ?a ?\M-m ?3])

  (fset 'asdf
        [S-down])


  ;; append to register
  (global-set-key (kbd "C-x r a") 'append-to-register)  ; append to register
  (global-set-key (kbd "C-x r 1") 'ediff-append-buff1-line-reg-a)
  (global-set-key (kbd "C-x r 2") 'ediff-append-buff2-line-reg-a)


;; Smoother scrolling 26.1
(pixel-scroll-mode)


   ;; ranger shortcut
 ;; (global-set-key (kbd "M-m a r") 'ranger) 

;; Move Line Up and down
   (global-set-key [M-up] 'move-text-up)
   (global-set-key [M-down] 'move-text-down)


;; 10 pt consolas - source code now.
;;  (set-face-attribute 'default nil
  ;;                  :family "Consolas" :height 100)

;; CUA-mode no C-<return> for cua-rectangel-mark-mode in org mode.

;;(defun jpk/C-<return> (&optional arg)
;;  (interactive "P")
;;  (if (eq major-mode 'org-mode)
 ;;     (org-insert-heading-respect-content arg)
 ;;   (cua-rectangle-mark-mode arg)))

;;(define-key cua-global-keymap (kbd "C-<return>") #'jpk/C-<return>)







  )

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."


;;change junk file directory
  (setq open-junk-file-format "r:/apps/editorial/junk/%Y-%m%d-%H%M%S.")

  ;; Save all org files every 30 seconds. Use file versioning if things go bad.
  (run-with-idle-timer 30 t 'org-save-all-org-buffers)

  ;; line numbers
;;  (global-linum-mode)

  ;; swiper instead of helm-swoop
  (evil-leader/set-key (kbd "s s") 'swiper-helm)

  ;; elfeed
  (evil-leader/set-key (kbd "a e") 'elfeed)

  ;; vdiff
  (evil-leader/set-key (kbd "a v v") 'vdiff-buffers)

  ;; vdiff
  (evil-leader/set-key (kbd "a v f") 'vdiff-files)

  ;; vdiff
  (evil-leader/set-key (kbd "a v h") 'vdiff-hydra/body)

  ;; vdiff
  (evil-leader/set-key (kbd "a v c") 'vdiff-current-file)

  ;; vdiff
  (evil-leader/set-key (kbd "a v q") 'vdiff-quit)

  ;; vdiff
  (evil-leader/set-key (kbd "a v Q") 'vdiff-quit)

  ;;avy-goto-char-timer instead of avy-goto-char
  (evil-leader/set-key (kbd "j j") 'avy-goto-char-timer)

  ;; add clone indirect buffer.
  (evil-leader/set-key (kbd "j c") 'clone-indirect-buffer-other-window)



  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
;; (add-to-list 'erc-sasl-server-regexp-list "\\.freenode\\.net\\'")

  ;; reset undo like windows - this is not working
  ;;   (setq evil-toggle-key "C-`")

  ;;   (require 'evil)

  ;; undoing keys
;;    (defalias 'redo 'undo-tree-redo)
;;    (global-set-key (kbd "C-z") 'undo) ; 【Ctrl+z】
;;    (global-set-key (kbd "C-S-z") 'redo) ; 【Ctrl+Shift+z】;  Mac style
;; ;;   (global-set-key (kbd "C-y") 'redo) ; 【Ctrl+y】; Microsoft Windows style
;; ;; 
;;    (global-unset-key (kbd "C-/"))


  ;;Close with out killing
  (defun my-done ()
    (interactive)
    (server-edit)
    (make-frame-invisible nil t))
 ;;  (global-set-key (kbd "C-x C-c") 'suspend-frame)
;; opted to just do nothing when C-xc is pressed.
  (global-unset-key (kbd "C-x C-c"))
;; opted to just do nothing when C-w is pressed
;;  (global-unset-key (kbd "C-w"))


;;  (global-unset-key (kbd "C-w"))

  ;; like a screensaver
;;  (zone-when-idle 120)

;;grep needs gnuwin32 grep and gnuewin32 coreutilites(ls) installed.
  (setq find-program "C:\\\"Program Files (x86)\"\\GnuWin32\\bin\\find.exe"
       grep-program "C:\\\"Program Files (x86)\"\\GnuWin32\\bin\\grep.exe")

  ;;Make instance a server
 (server-start)

;; Better Mousing
 ;; (setq select-active-regions nil)
;;  (setq mouse-drag-copy-region t)
 ;; (global-set-key [mouse-3] 'mouse-yank-at-click)
  (setq mouse-wheel-scroll-amount '(3 ((shift) . 1) ((control) .nil)))
  (setq mouse-wheel-progressive-speed nil)

  (global-set-key [C-backspace] 'evil-delete-backward-word)


  ;; Sublimity
 ;; (sublimity-mode 1)

  ;; (require 'sublimity)
  ;; (require 'sublimity-scroll)
  ;; ;; (require 'sublimity-map)
  ;;   (require 'sublimity-attractive)
  ;;   (setq sublimity-scroll-weight 20
  ;;         sublimity-scroll-drift-length 0)

  ;; ;; (sublimity-attractive-hide-bars)
  ;; (sublimity-attractive-hide-vertical-border)
  ;; (sublimity-attractive-hide-fringes)
  ;; (sublimity-attractive-hide-modelines)


  (add-to-list 'exec-path "C:/Program Files (x86)/Aspell/bin/")
  (setq ispell-personal-dictionary "r:/apps/emacs/aspell/")
  (setq ispell-program-name "aspell")
  (require 'ispell)


  ;; Delete selection
  (delete-selection-mode t)

  ;; Move line up and down
  ;;(global-set-key (kbd "C-u") 'backward-char)
  ;;  (global-set-key (kbd "C-x C-8") 'move-text-down)

 ;; scrollers - M-f, M-b                ;;not sure if I like this
  (global-set-key "\M-n" "\C-U1\C-v")
  (global-set-key "\M-p" "\C-u1\M-v") 

  ;; useful buffers.

  (push "\\*elfeed-search\\*" spacemacs-useful-buffers-regexp)
  (push "\\*elfeed-entry\\*" spacemacs-useful-buffers-regexp)


;; shift select in org mode outside current context.
  (setq org-support-shift-select t)



  ;; rss feeds
;; moved to private.el
  ;; (setq elfeed-feeds
  ;;       '(
  ;;         "https://www.networkworld.com/category/software-defined-networking/index.rss"
  ;;         ))


;;  (setq default-directory (getenv "HOME"))
;;  This is done by the shortcut now. 

;; If you want c in Dired mode to do what C-x C-f
  (define-key dired-mode-map "c" 'find-file)

  ;; Scroll behavior
;;  (setq scroll-error-top-bottom t)

  ;; helm follow mode
;;  (helm-follow-mode-persistent t)


  ;;git
  (add-to-list 'exec-path "C:/Program Files/Git/bin/")




  ;; CUA-mode no C-<return> for cua-rectangel-mark-mode in org mode.

  (defun jpk/C-<return> (&optional arg)
    (interactive "P")
    (if (eq major-mode 'org-mode)
        (org-insert-heading-respect-content arg)
      (cua-rectangle-mark-mode arg)))

  (define-key cua-global-keymap (kbd "C-<return>") #'jpk/C-<return>)


  ;; opposite of c-u c-spc  -- cursor history
  (defmacro my-unpop-to-mark-advice ()
    "Enable reversing direction with un/pop-to-mark."
    `(defadvice ,(key-binding (kbd "C-SPC")) (around my-unpop-to-mark activate)
       "Unpop-to-mark with negative arg"
       (let* ((arg (ad-get-arg 0))
              (num (prefix-numeric-value arg)))
         (cond
          ;; Enabled repeated un-pops with C-SPC
          ((eq last-command 'unpop-to-mark-command)
           (if (and arg (> num 0) (<= num 4))
               ad-do-it ;; C-u C-SPC reverses back to normal direction
             ;; Otherwise continue to un-pop
             (setq this-command 'unpop-to-mark-command)
             (unpop-to-mark-command)))
          ;; Negative argument un-pops: C-- C-SPC
          ((< num 0)
           (setq this-command 'unpop-to-mark-command)
           (unpop-to-mark-command))
          (t
           ad-do-it)))))
  (my-unpop-to-mark-advice)








;; for per PC settings.
  (load-file "~/.emacs.d/private/local/private.el")



;; This cleans up Occur mode when called
  (defun occur-mode-clean-buffer ()
    "Removes all commentary from the *Occur* buffer, leaving the
 unadorned lines."
    (interactive)
    (if (get-buffer "*Occur*")
        (save-excursion
          (set-buffer (get-buffer "*Occur*"))
          (goto-char (point-min))
          (toggle-read-only 0)
          (if (looking-at "^[0-9]+ lines matching \"")
              (kill-line 1))
          (while (re-search-forward "^[ \t]*[0-9]+:"
                                    (point-max)
                                    t)
            (replace-match "")
            (forward-line 1)))
      (message "There is no buffer named \"*Occur*\".")))



;;  (setenv "GIT_ASKPASS" "git-gui--askpass")




  )

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zenburn-theme yapfify xterm-color xkcd web-mode web-beautify w32-browser tagedit swiper-helm swiper ivy ssh-agency ssh sourcerer-theme solarized-theme slim-mode shell-pop scss-mode sass-mode restclient-test restclient-helm restclient ranger pyvenv pytest pyenv-mode pyu-isort pug-mode powershell pip-requirements org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download org-brain multi-term monokai-theme livid-mode skewer-mode live-py-mode less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc irfc impatient-mode simple-httpd hy-mode htmlize hide-lines helm-pydoc helm-css-scss helm-company helm-c-yasnippet hc-zenburn-theme haml-mode gnuplot fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-org eshell-z eshell-prompt-extras esh-help emmet-mode dired+ cython-mode csv-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-anaconda company coffee-mode bash-completion auto-yasnippet yasnippet auto-dictionary anaconda-mode pythonic ahk-mode ac-ispell auto-complete 2048-game ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org symon string-inflection spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el password-generator paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-purpose window-purpose imenu-list helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-lion evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav editorconfig dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit variable-pitch :foreground "antique white" :height 1.2))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "#268bd2" :height 1.2))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#b58900" :height 1.2))))
 '(org-level-5 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-6 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-7 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-8 ((t (:inherit outline-3 :height 1.0)))))

;; End:
(defun dotspacemacs/emacs-custom-settings ()
  "Emacs custom settings.
This is an auto-generated function, do not modify its content directly, use
Emacs customize menu instead.
This function is called at the very end of Spacemacs initialization."
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (beacon zenburn-theme yapfify xterm-color xkcd web-mode web-beautify w32-browser tagedit swiper-helm swiper ivy ssh-agency ssh sourcerer-theme solarized-theme slim-mode shell-pop scss-mode sass-mode restclient-test restclient-helm restclient ranger pyvenv pytest pyenv-mode pyu-isort pug-mode powershell pip-requirements org-projectile org-category-capture org-present org-pomodoro alert log4e gntp org-download org-brain multi-term monokai-theme livid-mode skewer-mode live-py-mode less-css-mode json-mode json-snatcher json-reformat js2-refactor multiple-cursors js2-mode js-doc irfc impatient-mode simple-httpd hy-mode htmlize hide-lines helm-pydoc helm-css-scss helm-company helm-c-yasnippet hc-zenburn-theme haml-mode gnuplot fuzzy flyspell-correct-helm flyspell-correct flycheck-pos-tip pos-tip flycheck evil-org eshell-z eshell-prompt-extras esh-help emmet-mode dired+ cython-mode csv-mode company-web web-completion-data company-tern dash-functional tern company-statistics company-anaconda company coffee-mode bash-completion auto-yasnippet yasnippet auto-dictionary anaconda-mode pythonic ahk-mode ac-ispell auto-complete 2048-game ws-butler winum which-key volatile-highlights vi-tilde-fringe uuidgen use-package toc-org symon string-inflection spaceline powerline restart-emacs request rainbow-delimiters popwin persp-mode pcre2el password-generator paradox spinner org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint info+ indent-guide hydra hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation hide-comnt help-fns+ helm-themes helm-swoop helm-purpose window-purpose imenu-list helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery eyebrowse expand-region evil-visualstar evil-visual-mark-mode evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-lion evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-ediff evil-args evil-anzu anzu evil goto-chg undo-tree eval-sexp-fu highlight elisp-slime-nav editorconfig dumb-jump f dash s diminish define-word column-enforce-mode clean-aindent-mode bind-map bind-key auto-highlight-symbol auto-compile packed aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:inherit variable-pitch :foreground "antique white" :height 1.2))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.0))))
 '(org-level-3 ((t (:inherit variable-pitch :foreground "#268bd2" :height 1.2))))
 '(org-level-4 ((t (:inherit variable-pitch :foreground "#b58900" :height 1.2))))
 '(org-level-5 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-6 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-7 ((t (:inherit outline-3 :height 1.0))))
 '(org-level-8 ((t (:inherit outline-3 :height 1.0)))))
)
