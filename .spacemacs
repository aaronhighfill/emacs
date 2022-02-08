;; -*- mode: emacs-lisp; lexical-binding: t -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Layer configuration:
This function should only modify configuration layer settings."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs-base

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

   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()

   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press `SPC f e R' (Vim style) or
     ;; `M-m f e R' (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     helm
     ;; auto-completion
     ;; better-defaults
     emacs-lisp
     git
     ;; markdown
     org
      (shell :variables
             shell-default-height 30
             shell-default-position 'bottom)
     ;; spell-checking                                disabled 20181019
     ;; syntax-checking                                disabled 20181019
     ;; version-control
     ;; ==== non-default ===
     pdf
     ;; yaml
     ;; ansible
     ;; windows-scripts
     themes-megapack
     auto-completion
     (auto-completion :variables
                      auto-completion-return-key-behavior 'nil
                      auto-completion-tab-key-behavior 'complete
                      auto-completion-complete-with-key-sequence 'nil
                      auto-completion-complete-with-key-sequence-delay 0.0
                      ;auto-completion-private-snippets-directory 'nil
                      ;auto-completion-enable-snippets-in-popup t
                      )
     erc
     (erc :variables
          erc-enable-sasl-auth t
          erc-server-list
          '(("irc.freenode.net"
             :port "6697"
             :ssl t
             :nick "highfi"
             )))
     autohotkey
     python
     html
     javascript
     xkcd
     ranger
     ;; shell
     ;; mylayer
     search-engine
     json
     ;; markdown
     ;; (shell :variables
     ;;        shell-default-height 30
     ;;        shell-default-position 'bottom)
     ;; spell-checking
     ;; syntax-checking
     ;; version-control
     deft
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
                                      restart-emacs
                                      bash-completion
;;                                      ssh
;;                                      ssh-agency
                                      nov
                                      ;;dired+
                                      w32-browser
                                      powershell
                                      ;;org-drill
                                      ;;irfc
                                      restclient
                                      restclient-helm
                                      restclient-test
                                      monokai-theme
                                      ;;color-theme-solarized
                                      solarized-theme
;;                                      sasl
                                      erc-sasl
                                      ov
                                      hydra
                                      vdiff
                                      bm
                                      sourcerer-theme
                                      ;;ov-highlight
                                      writeroom-mode
                                      beacon
                                      es-mode
                                      persistent-scratch
                                      org-super-agenda
                                      google-this
                                      vscdark-theme
                                      helm-org-rifle
                                      undo-fu
                                      undo-fu-session
                                      ;indent-tools
                                      highlight-indent-guides
                                      helm-org
                                      peep-dired
                                      org-super-agenda
                                      intellij-theme
                                      open-junk-file
                                      manage-minor-mode
                                      org-drill
                                      )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(
                                    yasnippet-snippets
                                    yasnippet
                                    projectile
                                    spaceline
                                    company-tern
                                    )
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
   ;; If non-nil then enable support for the portable dumper. You'll need
   ;; to compile Emacs 27 from source following the instructions in file
   ;; EXPERIMENTAL.org at to root of the git repository.
   ;; (default nil)
   dotspacemacs-enable-emacs-pdumper nil

   ;; Name of executable file pointing to emacs 27+. This executable must be
   ;; in your PATH.
   ;; (default "emacs")
   dotspacemacs-emacs-pdumper-executable-file "emacs"

   ;; Name of the Spacemacs dump file. This is the file will be created by the
   ;; portable dumper in the cache directory under dumps sub-directory.
   ;; To load it when starting Emacs add the parameter `--dump-file'
   ;; when invoking Emacs 27.1 executable on the command line, for instance:
   ;;   ./emacs --dump-file=$HOME/.emacs.d/.cache/dumps/spacemacs-27.1.pdmp
   ;; (default (format "spacemacs-%s.pdmp" emacs-version))
   dotspacemacs-emacs-dumper-dump-file (format "spacemacs-%s.pdmp" emacs-version)

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

   ;; Set `gc-cons-threshold' and `gc-cons-percentage' when startup finishes.
   ;; This is an advanced option and should not be changed unless you suspect
   ;; performance issues due to garbage collection operations.
   ;; (default '(100000000 0.1))
   dotspacemacs-gc-cons '(100000000 0.1)

   ;; Set `read-process-output-max' when startup finishes.
   ;; This defines how much data is read from a foreign process.
   ;; Setting this >= 1 MB should increase performance for lsp servers
   ;; in emacs 27.
   ;; (default (* 1024 1024))
   dotspacemacs-read-process-output-max (* 1024 1024)

   ;; If non-nil then Spacelpa repository is the primary source to install
   ;; a locked version of packages. If nil then Spacemacs will install the
   ;; latest version of packages from MELPA. Spacelpa is currently in
   ;; experimental state please use only for testing purposes.
   ;; (default nil)
   dotspacemacs-use-spacelpa nil

   ;; If non-nil then verify the signature for downloaded Spacelpa archives.
   ;; (default t)
   dotspacemacs-verify-spacelpa-archives t

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

   ;; If non-nil show the version string in the Spacemacs buffer. It will
   ;; appear as (spacemacs version)@(emacs version)
   ;; (default t)
   dotspacemacs-startup-buffer-show-version t

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
   ;; `recents' `recents-by-project' `bookmarks' `projects' `agenda' `todos'.
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; The exceptional case is `recents-by-project', where list-type must be a
   ;; pair of numbers, e.g. `(recents-by-project . (7 .  5))', where the first
   ;; number is the project limit and the second the limit on the recent files
   ;; within a project.
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))

   ;; True if the home buffer should respond to resize events. (default t)
   dotspacemacs-startup-buffer-responsive t

   ;; Show numbers before the startup list lines. (default t)
   dotspacemacs-show-startup-list-numbers t

   ;; The minimum delay in seconds between number key presses. (default 0.4)
   dotspacemacs-startup-buffer-multi-digit-delay 0.4

   ;; Default major mode for a new empty buffer. Possible values are mode
   ;; names such as `text-mode'; and `nil' to use Fundamental mode.
   ;; (default `text-mode')
   dotspacemacs-new-empty-buffer-major-mode 'text-mode

   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode

   ;; If non-nil, *scratch* buffer will be persistent. Things you write down in
   ;; *scratch* buffer will be saved and restored automatically.
   dotspacemacs-scratch-buffer-persistent nil

   ;; If non-nil, `kill-buffer' on *scratch* buffer
   ;; will bury it instead of killing.
   dotspacemacs-scratch-buffer-unkillable nil

   ;; Initial message in the scratch buffer, such as "Welcome to Spacemacs!"
   ;; (default nil)
   dotspacemacs-initial-scratch-message nil

   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press `SPC T n' to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(
			 doom-peacock
                         sourcerer
                         hc-zenburn
			 solarized-dark
                         solarized-light
                         spacemacs-dark
                         spacemacs-light
                         leuven
                         monokai
                         zenburn
                         )
   ;; Set the theme for the Spaceline. Supported themes are `spacemacs',
   ;; `all-the-icons', `custom', `doom', `vim-powerline' and `vanilla'. The
   ;; first three are spaceline themes. `doom' is the doom-emacs mode-line.
   ;; `vanilla' is default Emacs mode-line. `custom' is a user defined themes,
   ;; refer to the DOCUMENTATION.org for more info on how to create your own
   ;; spaceline theme. Value can be a symbol or list with additional properties.
   ;; (default '(spacemacs :separator wave :separator-scale 1.5))
   dotspacemacs-mode-line-theme '(vim-powerline)
   ;; dotspacemacs-mode-line-theme '(spacemacs :separator wave :separator-scale 1.5)
   ;; If non-nil the cursor color matches the state color in GUI Emacs.
   ;; (default t)
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   ;; AH - 15 for desktop, 24 for laptop
   dotspacemacs-default-font '("Hack"
                               :size 15
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
   ;; (default "C-M-m" for terminal mode, "<M-return>" for GUI mode).
   ;; Thus M-RET should work as leader key in both GUI and terminal modes.
   ;; C-M-m also should work in terminal mode, but not in GUI mode.
   dotspacemacs-major-mode-emacs-leader-key (if window-system "<M-return>" "C-M-m")

   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs `C-i', `TAB' and `C-m', `RET'.
   ;; Setting it to a non-nil value, allows for separate commands under `C-i'
   ;; and TAB or `C-m' and `RET'.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil

   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"

   ;; If non-nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil

   ;; If non-nil then the last auto saved layouts are resumed automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil

   ;; If non-nil, auto-generate layout name when creating new layouts. Only has
   ;; effect when using the "jump to layout by number" commands. (default nil)
   dotspacemacs-auto-generate-layout-names nil

   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 2

   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache

   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5

   ;; If non-nil, the paste transient-state is enabled. While enabled, after you
   ;; paste something, pressing `C-j' and `C-k' several times cycles through the
   ;; elements in the `kill-ring'. (default nil)
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

   ;; If non-nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil

   ;; If non-nil the frame is undecorated when Emacs starts up. Combine this
   ;; variable with `dotspacemacs-maximized-at-startup' in OSX to obtain
   ;; borderless fullscreen. (default nil)
   dotspacemacs-undecorated-at-startup nil

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90

   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90

   ;; If non-nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t

   ;; If non-nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t

   ;; If non-nil unicode symbols are displayed in the mode line.
   ;; If you use Emacs as a daemon and wants unicode characters only in GUI set
   ;; the value to quoted `display-graphic-p'. (default t)
   dotspacemacs-mode-line-unicode-symbols nil

   ;; If non-nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t

   ;; Show the scroll bar while scrolling. The auto hide time can be configured
   ;; by setting this variable to a number. (default t)
   dotspacemacs-scroll-bar-while-scrolling t

   ;; Control line numbers activation.
   ;; If set to `t', `relative' or `visual' then line numbers are enabled in all
   ;; `prog-mode' and `text-mode' derivatives. If set to `relative', line
   ;; numbers are relative. If set to `visual', line numbers are also relative,
   ;; but only visual lines are counted. For example, folded lines will not be
   ;; counted and wrapped lines are counted as multiple lines.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :visual nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; When used in a plist, `visual' takes precedence over `relative'.
   ;; (default nil)
   dotspacemacs-line-numbers nil

   ;; Code folding method. Possible values are `evil', `origami' and `vimish'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil

   ;; If non-nil and `dotspacemacs-activate-smartparens-mode' is also non-nil,
   ;; `smartparens-strict-mode' will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil

   ;; If non-nil smartparens-mode will be enabled in programming modes.
   ;; (default t)
   dotspacemacs-activate-smartparens-mode t

   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc...
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil

   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all

   ;; If non-nil, start an Emacs server if one is not already running.
   ;; (default nil)
   dotspacemacs-enable-server nil

   ;; Set the emacs server socket location.
   ;; If nil, uses whatever the Emacs default is, otherwise a directory path
   ;; like \"~/.emacs.d/server\". It has no effect if
   ;; `dotspacemacs-enable-server' is nil.
   ;; (default nil)
   dotspacemacs-server-socket-dir nil

   ;; If non-nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil

   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `rg', `ag', `pt', `ack' and `grep'.
   ;; (default '("rg" "ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("rg" "ag" "pt" "ack" "grep")

   ;; Format specification for setting the frame title.
   ;; %a - the `abbreviated-file-name', or `buffer-name'
   ;; %t - `projectile-project-name'
   ;; %I - `invocation-name'
   ;; %S - `system-name'
   ;; %U - contents of $USER
   ;; %b - buffer name
   ;; %f - visited file name
   ;; %F - frame name
   ;; %s - process status
   ;; %p - percent of buffer above top of window, or Top, Bot or All
   ;; %P - percent of buffer above bottom of window, perhaps plus Top, or Bot or All
   ;; %m - mode name
   ;; %n - Narrow if appropriate
   ;; %z - mnemonics of buffer, terminal, and keyboard coding systems
   ;; %Z - like %z, but including the end-of-line format
   ;; If nil then Spacemacs uses default `frame-title-format' to avoid
   ;; performance issues, instead of calculating the frame title by
   ;; `spacemacs/title-prepare' all the time.
   ;; (default "%I@%S")
   dotspacemacs-frame-title-format "%I@%S"

   ;; Format specification for setting the icon title format
   ;; (default nil - same as frame-title-format)
   dotspacemacs-icon-title-format nil

   ;; Show trailing whitespace (default t)
   dotspacemacs-show-trailing-whitespace t

   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed' to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil

   ;; If non-nil activate `clean-aindent-mode' which tries to correct
   ;; virtual indentation of simple modes. This can interfere with mode specific
   ;; indent handling like has been reported for `go-mode'.
   ;; If it does deactivate it here.
   ;; (default t)
   dotspacemacs-use-clean-aindent-mode t

   ;; Accept SPC as y for prompts if non-nil. (default nil)
   dotspacemacs-use-SPC-as-y nil

   ;; If non-nil shift your number row to match the entered keyboard layout
   ;; (only in insert state). Currently supported keyboard layouts are:
   ;; `qwerty-us', `qwertz-de' and `querty-ca-fr'.
   ;; New layouts can be added in `spacemacs-editing' layer.
   ;; (default nil)
   dotspacemacs-swap-number-row nil

   ;; Either nil or a number of seconds. If non-nil zone out after the specified
   ;; number of seconds. (default nil)
   dotspacemacs-zone-out-when-idle nil

   ;; Run `spacemacs/prettify-org-buffer' when
   ;; visiting README.org files of Spacemacs.
   ;; (default nil)
   dotspacemacs-pretty-docs nil

   ;; If nil the home buffer shows the full path of agenda items
   ;; and todos. If non-nil only the file name is shown.
   dotspacemacs-home-shorten-agenda-source nil

   ;; If non-nil then byte-compile some of Spacemacs files.
   dotspacemacs-byte-compile nil))

(defun dotspacemacs/user-env ()
  "Environment variables setup.
This function defines the environment variables for your Emacs session. By
default it calls `spacemacs/load-spacemacs-env' which loads the environment
variables declared in `~/.spacemacs.env' or `~/.spacemacs.d/.spacemacs.env'.
See the header of this file for more information."
  (spacemacs/load-spacemacs-env))

(defun dotspacemacs/user-init ()
  "Initialization for user code:
This function is called immediately after `dotspacemacs/init', before layer
configuration.
It is mostly for variables that should be set before packages are loaded.
If you are unsure, try setting them in `dotspacemacs/user-config' first."
  (cua-mode 1)
 ;; (setq org-use-speed-commands
  ;;      (lambda () (and (looking-at org-outline-regexp) (looking-back "^\**"))))


  ;; (defvar org-fancy-list-bullets
  ;;   '(("^ +\\([*]\\) "   ; asterisks need a space first to skip headings
  ;;      (1 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))
  ;;     ("^ *\\([-]\\) "   ; hyphens can start at bol
  ;;      (1 (prog1 () (compose-region (match-beginning 1) (match-end 1) "•"))))))
  ;; (font-lock-add-keywords 'org-mode org-fancy-list-bullets)

  ;; hopefully make c-backspace not save to  clipboard. 
;  (setq save-interprogram-paste-before-kill t)

;;solarized options and alignment.
  (setq solarized-scale-org-headlines nil)
  (setq solarized-use-variable-pitch nil)
  (setq solarized-height-minus-1 1.0)
  (setq solarized-height-plus-1 1.0)
  (setq solarized-height-plus-2 1.0)
  (setq solarized-height-plus-3 1.0)
  (setq solarized-height-plus-4 1.0)
  (setq solarized-height-plus-5 1.0)
  (setq solarized-height-plus-6 1.0)
  (setq solarized-height-plus-7 1.0)
  (setq solarized-height-plus-8 1.0)
  (setq solarized-height-plus-9 1.0)


 ;;deft  varialbes
  (setq deft-directory "r:/apps/Editorial"
        deft-extensions '("org" "txt")
        ;;deft-recursive t
        )


;; Org markup charactors hide
  (setq org-hide-emphasis-markers t)

  ;; don't  show org markup symbols.
  (setq org-hide-emphasis-markers t)

;;(setq mouse-drag-copy-region t)

;;(require 'org-drill)

;; erc sasl
;;(require 'erc-sasl)
;;(add-to-list 'erc-sasl-server-regexp-list "\\.freenode\\.net\\'")
;;(add-to-list 'erc-sasl-server-regexp-list "\.freenode\.net") ;; e.g. irc\\.freenode\\.net, or .* for any host



  (setq org-M-RET-may-split-line nil)
  (setq org-use-tag-inheritance nil)
(setq org-journal-dir "r:/Apps/Editorial/logbook/")

;; this isn't working
(setq org-default-notes-file "r:/Apps/Editorial/inbox.org")

;; Org mode conflicts disuputed keys.
 (setq org-replace-disputed-keys t)

 ;; remote file will be kept without testing if they still exists https://stackoverflow.com/questions/2068697/emacs-is-slow-opening-recent-files
 ;; this may not be working?
 (setq recentf-keep '(file-remote-p file-readable-p))


(global-unset-key (kbd "C-/"))



;;(global-set-key (kbd "C-w") 'kill-this-buffer) ; 【Ctrl+w】; Microsoft Windows style
(defun kill-this-buffer-and-tab()
  "kill the buffer and tab"
  (interactive)
  (kill-this-buffer)
  (tab-close)
  )
(global-set-key (kbd "C-w") 'kill-this-buffer-and-tab)




;; Persistant undo --- removing this
;; (setq undo-tree-auto-save-history t)

;;https://translate.google.com/translate?hl=en&sl=ru&u=http://qaru.site/questions/12227446/undo-tree-doesnt-auto-load-history&prev=search
;; (when (not (eq (last buffer-undo-list) 'undo-tree-canary))
;;   (setq buffer-undo-list (append buffer-undo-list '(nil undo-tree-canary))))

;;https://hk.saowen.com/a/dff3ead380819974dd54404f4b4e8930bb1a2c06e00ca3262086093df2fca97c
;;(advice-add 'undo-tree-load-history-hook :after (lambda () (setq buffer-undo-list '(nil undo-tree-canary))))

;;https://emacs.stackexchange.com/questions/26993/saving-persistent-undo-to-a-single-directory-alist-format
;;(setq undo-tree-history-directory-alist '(("." . "r:/apps/emacs/undo/")))






;; remove this that is default bound to mouse-3
;;(global-set-key [remap mouse-save-then-kill] 'ignore)


;; shift + click select region
(define-key global-map (kbd "<S-down-mouse-1>") 'ignore) ; turn off font dialog
(define-key global-map (kbd "<S-mouse-1>") 'mouse-set-point)
(put 'mouse-set-point 'CUA 'move)
(define-key global-map (kbd "<S-down-mouse-1>") 'mouse-save-then-kill)



;;https://emacs.stackexchange.com/questions/33510/unicode-txt-slowness  org slowness and general slowness
(setq inhibit-compacting-font-caches t)

;line spacing needed for some fonts.

(setq-default line-spacing 2)


  ;; Turn off linum-mode for org-mode and text-mode
  (add-hook 'evil-org-mode-hook (lambda () (linum-mode -1)))
  (add-hook 'text-mode-hook (lambda () (linum-mode -1)))

  ;; Turn off c-y yanking for org-mode
  (add-hook 'evil-org-mode-hook (lambda () (local-unset-key (kbd "C-y"))))


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

  ;; If you want c in Dired mode to do what C-x C-f
  ;;  (define-key dired-mode-map "c" 'find-file)




;;  Cisco stuff
  (let ((personal-settings "~/.emacs.d/private/local/cisco-router-mode.el"))
    (when (file-exists-p personal-settings)
      (load-file personal-settings))
    )


;(load-file "~/.emacs.d/private/local/cisco-router-mode.el")



 (add-to-list 'auto-mode-alist '("\\.iosconfig.txt\\'" . cisco-router-mode))
 (add-to-list 'auto-mode-alist '("\\cfg\\'" . cisco-router-mode))
 (add-to-list 'auto-mode-alist '("\\confg\\'" . cisco-router-mode))




;;  Csv stuff
;(when (file-exists-p "~/.emacs.d/private/local/csv-nav.el")
;  (load-file "~/.emacs.d/private/local/csv-nav.el")
;  )

 (let ((personal-settings "~/.emacs.d/private/local/csv-nav.el"))
  (when (file-exists-p personal-settings)
    (load-file personal-settings))
  )




;;calc bps  I don't think this works
(setq math-additional-units
      '((bit    nil           "Bit")
        (byte   "8 * bit"     "Byte")
        (bps    "bit / s"     "Bit per second"))
      math-units-table nil)


;;highlighter - work in porgress
;;(load-file "~/.emacs.d/private/local/ov-highlight.el")

;; highlight hydra - work in progress
(evil-leader/set-key (kbd "x h h") 'highlight-regexp)
(evil-leader/set-key (kbd "x h u") 'unhighlight-regexp)
(evil-leader/set-key (kbd "x h l") 'highlight-lines-matching-regexp)
(evil-leader/set-key (kbd "x h .") 'highlight-symbol-at-point)
(evil-leader/set-key (kbd "x h c") 'highlight-changes-mode)
;;(evil-leader/set-key (kbd "x h c . n") 'highlight-changes-next-change)
;;(evil-leader/set-key (kbd "x h c . p") 'highlight-changes-previous-change)

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


  ;; Smoother scrolling 26.1 - disabled it wasn't really that smooth
;;  (pixel-scroll-mode)

  ;; Move Line Up and down
   (global-set-key [M-up] 'move-text-up)
   (global-set-key [M-down] 'move-text-down)

  )


(defun dotspacemacs/user-load ()
  "Library to load while dumping.
This function is called only while dumping Spacemacs configuration. You can
`require' or `load' the libraries of your choice that will be included in the
dump.")


(defun dotspacemacs/user-config ()
  "Configuration for user code:
This function is called at the very end of Spacemacs startup, after layer
configuration.
Put your configuration code here, except for variables that should be set
before packages are loaded."

  ;; space m-x
;;  (evil-leader/set-key (kbd "SPC") 'spacemacs/helm-M-x-fuzzy-matching)

  
  ;; use org speed keys
;;  (setq org-use-speed-commands t)
  ;; (setq org-speed-commands-user (quote (
  ;;                                       ("i" . org-metaup)
  ;;       				("k" . org-metadown)
  ;;                                       ("'" . org-cut-subtree)
  ;;                                       ("h" . org-cycle)
  ;;                                       ("H" . org-shifttab)
  ;;                                       ("q" . kill-this-buffer)
  ;;                                       ("m" . spacemacs/toggle-maximize-buffer)
  ;;                                       ("d" . widen)
  ;;                                       (";" . jpk/C-<return>)
  ;;                                       )))


  ;;undo keys
  ;;(global-undo-tree-mode -1)                                          ;;; issue with new spacemacs versionf
  (global-unset-key (kbd "C-z"))
  (global-unset-key (kbd "C-y"))
  (define-key evil-emacs-state-map (kbd "C-z") 'undo-fu-only-undo)
  ;; (global-set-key (kbd "C-z") 'undo-fu-only-undo)
  (global-set-key (kbd "C-y") 'undo-fu-only-redo)

  (defun ask-before-closing ()
    "Close only if y was pressed."
    (interactive)
    (if (y-or-n-p (format "Are you sure you want to close Spacemacs? "))
        (spacemacs/prompt-kill-emacs)
      (message "Canceled frame close")))

  (when (daemonp)
    (global-set-key (kbd "C-x C-c") 'ask-before-closing))


  (evil-leader/set-key (kbd "q q") 'ask-before-closing)

  ;;change new untilled file -- org auto save
  (evil-leader/set-key (kbd "f N") 'open-junk-file)
  (evil-leader/set-key (kbd "b N") 'open-junk-file)

  (setq open-junk-file-format "r:/apps/editorial/org-temp/Untitled-%Y-%m%d-%H%M%S.org")

;; Save all org files every 30 seconds. Use file versioning if things go bad.
  (run-with-idle-timer 30 t 'org-save-all-org-buffers)

;; line numbers
;;  (global-linum-mode)

  ;; swiper instead of helm-swoop
  ;;  (evil-leader/set-key (kbd "s s") 'swiper-helm)

  ;; Going back to helm-swoop
   (evil-leader/set-key (kbd "s s") 'helm-swoop)
   (setq helm-swoop-move-to-line-cycle nil)

  ;; elfeed
  (evil-leader/set-key (kbd "a e") 'elfeed)

  ;; vdiff
  (evil-leader/set-key (kbd "a v v") 'vdiff-buffers)
  (evil-leader/set-key (kbd "a v f") 'vdiff-files)
  (evil-leader/set-key (kbd "a v h") 'vdiff-hydra/body)
  (evil-leader/set-key (kbd "a v c") 'vdiff-current-file)
  (evil-leader/set-key (kbd "a v q") 'vdiff-quit)
  (evil-leader/set-key (kbd "a v Q") 'vdiff-quit)

  ;;avy-goto-char-timer instead of avy-goto-char
  (evil-leader/set-key (kbd "j j") 'avy-goto-char-timer)

  ;; add clone indirect buffer.
  (evil-leader/set-key (kbd "j c") 'clone-indirect-buffer-other-window)

  ;; org refile on org menu
  (evil-leader/set-key (kbd "a o r") 'org-refile)


  ;; I'm going to try to use tab bar (tabs)
  ;; need c-tab for buffer switching
;;  (define-key org-mode-map (kbd "C-<tab>") nil)
;;  (global-set-key [(control tab)] 'ebs-switch-buffer)

  ;; ebs
;  (evil-leader/set-key "TAB" 'ebs-switch-buffer)

  ;;  (load-file "~/.emacs.d/private/local/ebs.el")
                                        ;  (load-file "r:/apps/emacs/private/local/ebs.el")
                                        ;  (ebs-initialize)

  
  ;; org searching
  (evil-leader/set-key (kbd "s o r") 'helm-org-rifle)

  ;;searching through all  org headlines
  (evil-leader/set-key (kbd "s o h") 'helm-org-agenda-files-headings)


  ;; browse file directory in explorer
  (evil-leader/set-key (kbd "f O") 'browse-file-directory)

  ;; Insert timestap
  (evil-leader/set-key (kbd "i t") 'org-time-stamp-inactive )

  ;; Google this
  (evil-leader/set-key (kbd "s w r") 'google-this-region)

  ;; Google this
  (evil-leader/set-key (kbd "s w p") 'google-this-word)

  ;; Recent directory
  (evil-leader/set-key (kbd "f d") 'bjm/ivy-dired-recent-dirs)

  ;; Restart-emacs
  (evil-leader/set-key (kbd "q r") 'restart-emacs)

  ;; comment or uncomment region
  (evil-leader/set-key (kbd ";") 'comment-or-uncomment-region)


  ;; Tab-bar-mode - default for emacs 27 (tabs)
  (evil-leader/set-key (kbd "t C-f") 'find-file-other-tab)
  (evil-leader/set-key (kbd "t RET") 'tab-bar-select-tab-by-name)
  (evil-leader/set-key (kbd "t 0") 'tab-close)
  (evil-leader/set-key (kbd "t 1") 'tab-close-other)
  (evil-leader/set-key (kbd "t 2") 'tab-new)
  (evil-leader/set-key (kbd "t b") 'switch-to-buffer-other-tab)
  (evil-leader/set-key (kbd "t d") 'dired-other-tab)
  (evil-leader/set-key (kbd "t f") 'find-file-other-tab)
  (evil-leader/set-key (kbd "t m") 'tab-move)
  (evil-leader/set-key (kbd "t o") 'tab-next)
  (evil-leader/set-key (kbd "t p") 'project-other-tab-command)
  (evil-leader/set-key (kbd "t r") 'tab-rename)
    
  ;; space m-x
;;  (evil-leader/set-key (kbd "A") 'spacemacs/helm-M-x-fuzzy-matching)

  ;; My Favorite files
  (evil-leader/set-key (kbd "b f 0") (lambda () (interactive) (find-file "r:/apps/Editorial/inbox.org")))
  (evil-leader/set-key (kbd "b f 1") (lambda () (interactive) (find-file "r:/apps/Editorial/todowork.org")))
  (evil-leader/set-key (kbd "b f 2") (lambda () (interactive) (find-file "r:/apps/Editorial/obi1kbwork.org")))
  (evil-leader/set-key (kbd "b f 3") (lambda () (interactive) (find-file "r:/apps/Editorial/riverofreferencework.org")))
  (evil-leader/set-key (kbd "b f 4") (lambda () (interactive) (find-file "r:/apps/Editorial/todohome.org")))
  (evil-leader/set-key (kbd "b f 5") (lambda () (interactive) (find-file "r:/apps/Editorial/obi1kbhome.org")))
  (evil-leader/set-key (kbd "b f 6") (lambda () (interactive) (find-file "r:/apps/Editorial/riverofreferencehome.org")))
  (evil-leader/set-key (kbd "b f m") (lambda () (interactive) (find-file "r:/apps/Editorial/meetings.org")))
  (evil-leader/set-key (kbd "b f s") (lambda () (interactive) (find-file-other-frame "r:/apps/Editorial/scratch.org")))
  (evil-leader/set-key (kbd "b f b") (lambda () (interactive) (helm-mini)))
  ;; Replace with my own scratch buffer. no "switch-to-scratch-buffer"
  (evil-leader/set-key (kbd "b s") (lambda () (interactive) (find-file-other-frame "r:/apps/Editorial/scratch.org")))

  ;; (defun open-scratch-org-buffer-new-frame ()
  ;;                   "Open my scratch buffer in  a new frame"
  ;;                   (interactive)
  ;;                   (find-file-other-frame "r:/apps/Editorial/scratch.org")
  ;;                   )
;(global-set-key (kbd "C-`") 'open-scratch-org-buffer-new-frame)

(defun open-scratch-org-buffer-new-tab ()
  "Open my scratch buffer in  a new tab"
  (interactive)
  (tab-new)
  (find-file "r:/apps/Editorial/scratch.org")  
  )
(global-set-key (kbd "C-`") 'open-scratch-org-buffer-new-tab)


(defun get-my-tabs-right ()
  "Open all my orgs in tabs"
  (interactive)
(tab-close-other)
(tab-new)
(find-file "r:/apps/Editorial/inbox.org")
(tab-new)
(find-file "r:/apps/Editorial/todowork.org")
(tab-new)
(find-file "r:/apps/Editorial/obi1kbwork.org")
(tab-new)
(find-file "r:/apps/Editorial/riverofreferencework.org")
(tab-new)
(find-file "r:/apps/Editorial/todohome.org")
(tab-new)
(find-file "r:/apps/Editorial/obi1kbhome.org")
(tab-new)
(find-file "r:/apps/Editorial/riverofreferencehome.org")
(tab-new)
(find-file "r:/apps/Editorial/meetings.org")
)





(defhydra hydra-tab-bar (:color amaranth)
  "Tab Bar Operations"
  ("t" tab-new "Create a new tab" :column "Creation")
  ("d" dired-other-tab "Open Dired in another tab")
  ("f" find-file-other-tab "Find file in another tab")
  ("0" tab-close "Close current tab")
  ("m" tab-move "Move current tab" :column "Management")
  ("r" tab-rename "Rename Tab")
  ("<return>" tab-bar-select-tab-by-name "Select tab by name" :column "Navigation")
  ("l" tab-next "Next Tab")
  ("j" tab-previous "Previous Tab")
  ("q" nil "Exit" :exit t))

(evil-leader/set-key (kbd "t .") (lambda () (interactive) (hydra-tab-bar/body)))


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

  (defun browse-file-directory ()
    "Open the current file's directory however the OS would."
    (interactive)
    (if default-directory
        (browse-url-of-file (expand-file-name default-directory))
      (error "No `default-directory' to open")))



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
;;  (setq find-program "C:\\\"Program Files (x86)\"\\GnuWin32\\bin\\find.exe"
;;       grep-program "C:\\\"Program Files (x86)\"\\GnuWin32\\bin\\grep.exe")

  ;;C:\msys64\usr\bin
  ;; (setq find-program "C:\\msys64\\usr\\bin\\find.exe"
  ;;       grep-program "C:\\msys64\\usr\\bin\\find.exe")

  (setq find-program "c:/Progra~1/Git/usr/bin/find.exe")
  (setq grep-program "c:/Progra~1/Git/usr/bin/grep.exe")

  ;;Make instance a server
 (server-start)

;; Better Mousing
 ;; (setq select-active-regions nil)
;;  (setq mouse-drag-copy-region t)
 ;; (global-set-key [mouse-3] 'mouse-yank-at-click)
  (setq mouse-wheel-scroll-amount '(3 ((shift) . 1) ((control) .nil)))
  (setq mouse-wheel-progressive-speed t)


;;better c-backspace https://stackoverflow.com/questions/28221079/ctrl-backspace-in-emacs-deletes-too-much Combined with kill region if region exists.

  (defun aborn/backward-kill-word ()
  "Customize/Smart backward-kill-word."
  (interactive)
  (let* ((cp (point))
         (backword)
         (end)
         (space-pos)
         (backword-char (if (bobp)
                            ""           ;; cursor in begin of buffer
                          (buffer-substring cp (- cp 1)))))
		(if (region-active-p)
        (kill-region (region-beginning) (region-end))
    (if (equal (length backword-char) (string-width backword-char))
        (progn
          (save-excursion
            (setq backword (buffer-substring (point) (progn (forward-word -1) (point)))))
          (setq ab/debug backword)
;          (save-excursion
;            (when (and backword          ;; when backword contains space
;                       (s-contains? " " backword))
;              (setq space-pos (ignore-errors (search-backward " ")))))
          (save-excursion
            (let* ((pos (ignore-errors (search-backward-regexp "\n")))
                   (substr (when pos (buffer-substring pos cp))))
              (when (or (and substr (s-blank? (s-trim substr)))
                        (s-contains? "\n" backword))
                (setq end pos))))
          (if end
              (kill-region cp end)
            (if space-pos
                (kill-region cp space-pos)
              (backward-kill-word 1))))
      (kill-region cp (- cp 1)))         ;; word is non-english word
    )))

(global-set-key  [C-backspace]
                 'aborn/backward-kill-word)




  ;  (global-set-key [C-backspace] 'evil-delete-backward-word)




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
  ;; https://stackoverflow.com/questions/3393834/how-to-move-forward-and-backward-in-emacs-mark-ring
  ;; Thanks scottfrazer and phils

  (defun unpop-to-mark-command ()
    "Unpop off mark ring into the buffer's actual mark.
Does not set point.  Does nothing if mark ring is empty."
    (interactive)
    (let ((num-times (if (equal last-command 'pop-to-mark-command) 2
                       (if (equal last-command 'unpop-to-mark-command) 1
                         (error "Previous command was not a (un)pop-to-mark-command")))))
      (dotimes (x num-times)
        (when mark-ring
          (setq mark-ring (cons (copy-marker (mark-marker)) mark-ring))
          (set-marker (mark-marker) (+ 0 (car (last mark-ring))) (current-buffer))
          (when (null (mark t)) (ding))
          (setq mark-ring (nbutlast mark-ring))
          (goto-char (mark t)))
        (deactivate-mark))))


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


  ;; transform to csv from org-table. Thanks Joe Exactly what I needed.
  ;; https://stackoverflow.com/a/38277039/4581426

  (defun org-table-transform-in-place ()
  "Just like `ORG-TABLE-EXPORT', but instead of exporting to a
  file, replace table with data formatted according to user's
  choice, where the format choices are the same as
  org-table-export."
  (interactive)
  (unless (org-at-table-p) (user-error "No table at point"))
  (org-table-align)
  (let* ((format
      (completing-read "Transform table function: "
               '("orgtbl-to-tsv" "orgtbl-to-csv" "orgtbl-to-latex"
                 "orgtbl-to-html" "orgtbl-to-generic"
                 "orgtbl-to-texinfo" "orgtbl-to-orgtbl"
                 "orgtbl-to-unicode")))
     (curr-point (point)))
    (if (string-match "\\([^ \t\r\n]+\\)\\( +.*\\)?" format)
    (let ((transform (intern (match-string 1 format)))
          (params (and (match-end 2)
               (read (concat "(" (match-string 2 format) ")"))))
          (table (org-table-to-lisp
              (buffer-substring-no-properties
               (org-table-begin) (org-table-end)))))
      (unless (fboundp transform)
        (user-error "No such transformation function %s" transform))
      (save-restriction
        (with-output-to-string
          (delete-region (org-table-begin) (org-table-end))
          (insert (funcall transform table params) "\n")))
      (goto-char curr-point)
      (beginning-of-line)
      (message "Tranformation done."))
      (user-error "Table export format invalid"))))

;;  (define-key org-mode-map (kbd "\C-x |") 'org-table-transform-in-place)

  (setq org-refile-targets (quote (("r:/Apps/Editorial/todowork.org" :maxlevel . 4)
                                   ("r:/Apps/Editorial/todohome.org" :maxlevel . 5)
                                   ("r:/Apps/Editorial/obi1kbwork.org" :maxlevel . 4)
                                   ("r:/Apps/Editorial/obi1kbhome.org" :maxlevel . 4)
                                   ("r:/Apps/Editorial/riverofreferencework.org" :maxlevel . 2)
                                   ("r:/Apps/Editorial/riverofreferencehome.org" :maxlevel . 2)
                                   ("r:/Apps/Editorial/somedaymaybework.org" :maxlevel . 2)
                                   ("r:/Apps/Editorial/somedaymaybehome.org" :maxlevel . 2)
                                   ("r:/Apps/Editorial/meetings.org" :maxlevel . 2)
                                   ("r:/Apps/Editorial/inbox.org" :maxlevel . 2))))

  (setq org-outline-path-complete-in-steps nil)         ; Refile in a single go
  (setq org-refile-use-outline-path t)                  ; Show full paths for refiling

  ;; (global-set-key (kbd "<scroll>") 'scroll-lock-mode)


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

;; Cursor bling - disabled for now. thought it might be causing trouble
;;  (beacon-mode t) 
  ;; (setq beacon-blink-duration 0)
  ;; (setq beacon-blink-delay 0)
  ;; (setq beacon-blink-when-window-scrolls t)
  ;; (setq beacon-blink-when-window-changes t)
  ;; (setq beacon-blink-when-point-moves t)



  ;; And finally for per PC settings.

  (let ((personal-settings "~/.emacs.d/private/local/private.el"))
    (when (file-exists-p personal-settings)
      (load-file personal-settings))
    )

   ;(load-file "~/.emacs.d/private/local/private.el")



  (setq zone-programs [zone-pgm-whack-chars])
  (zone-when-idle 2048)




  ;; (let ((personal-settings "~/.emacs.d/private/local/zone-matrix-master/zone-matrix-settings"))
  ;;   (when (file-exists-p personal-settings)
  ;;     (load-file personal-settings))

  ;;   (let ((personal-settings "~/.emacs.d/private/local/zone-matrix-master/zone-settings"))
  ;;     (when (file-exists-p personal-settings)
  ;;      (load-file personal-settings))





  ;; Hunspell for spelling added to private.el for installations that have it.
  ;; (add-to-list 'exec-path "C:\\Program Files (x86)\\hunspell\\bin")
  ;; (setq ispell-program-name "hunspell")
  ;; (use-package ispell
  ;;   :init
  ;;   (setq ispell-dictionary-alist 
  ;;         '(
  ;;           (nil
  ;;            "[[:alpha:]]"
  ;;            "[^[:alpha:]]"
  ;;            "[']"
  ;;            t
  ;;            ("-d" "default" "-p" "C:\\Program Files (x86)\\hunspell\\share\\hunspell")
  ;;            nil
  ;;            iso-8859-1)

  ;;           ("en_GB"
  ;;            "[[:alpha:]]"
  ;;            "[^[:alpha:]]"
  ;;            "[']"
  ;;            t
  ;;            ("-d" "en_GB" "-p" "C:\\Program Files (x86)\\hunspell\\share\\hunspell\\en_GB")
  ;;            nil
  ;;            iso-8859-1)
  ;;           ))
  ;;   (setq ispell-dictionary "en_GB")
  ;;   )

  (persistent-scratch-setup-default)

  ;; disable diff-buffer-with-file in favor of vdiff-current-file
  (put 'diff-buffer-with-file 'disabled
       "It's better to use 'vdiff-current-file' .\n")




  ;; Start maximized.
  (defun w32-maximize-frame ()
    "Maximize the current frame (windows only)"
    (interactive)
    (w32-send-sys-command 61488))

  (if (eq system-type 'windows-nt)
      (progn
        (add-hook 'window-setup-hook 'w32-maximize-frame t))
    (set-frame-parameter nil 'fullscreen 'maximized))

  ;; New frame height and widths
  (add-to-list 'default-frame-alist '(height . 55))
  (add-to-list 'default-frame-alist '(width . 210))



  ;; open recent directory, requires ivy (part of swiper)
  ;; borrows from http://stackoverflow.com/questions/23328037/in-emacs-how-to-maintain-a-list-of-recent-directories
  (defun bjm/ivy-dired-recent-dirs ()
    "Present a list of recently used directories and open the selected one in dired"
    (interactive)
    (let ((recent-dirs
           (delete-dups
            (mapcar (lambda (file)
                      (if (file-directory-p file) file (file-name-directory file)))
                    recentf-list))))

      (let ((dir (ivy-read "Directory: "
                           recent-dirs
                           :re-builder #'ivy--regex
                           :sort nil
                           :initial-input nil)))
        (dired dir))))



  ;; Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
  (eval-after-load "dired"
    '(progn
       (define-key dired-mode-map "F" 'my-dired-find-file)
       (defun my-dired-find-file (&optional arg)
         "Open each of the marked files, or the file under the point, or when prefix arg, the next N files "
         (interactive "P")
         (let* ((fn-list (dired-get-marked-files nil arg)))
           (mapc 'find-file fn-list)))))

  (which-key-remove-default-unicode-chars)

 ;; keep isearch highlighted when scrolling
(setq isearch-allow-scroll t)


(defun xah-append-to-register-1 ()
  "Append current line or text selection to register 1.
When no selection, append current line with newline char.
See also: `xah-paste-from-register-1', `copy-to-register'.

URL `http://ergoemacs.org/emacs/elisp_copy-paste_register_1.html'
Version 2015-12-08"
  (interactive)
  (let ($p1 $p2)
    (if (region-active-p)
        (progn (setq $p1 (region-beginning))
               (setq $p2 (region-end)))
      (progn (setq $p1 (line-beginning-position))
             (setq $p2 (line-end-position))))
    (append-to-register ?1 $p1 $p2)
    (with-temp-buffer (insert "\n")
                      (append-to-register ?1 (point-min) (point-max)))
    (message "Appended to register 1: 「%s」." (buffer-substring-no-properties $p1 $p2))))


(defun xah-clear-register-1 ()
  "Clear register 1.
See also: `xah-paste-from-register-1', `copy-to-register'.

URL `http://ergoemacs.org/emacs/elisp_copy-paste_register_1.html'
Version 2015-12-08"
  (interactive)
  (progn
    (copy-to-register ?1 (point-min) (point-min))
    (message "Cleared register 1.")))

(defun xah-paste-from-register-1 ()
  "Paste text from register 1.
See also: `xah-copy-to-register-1', `insert-register'.
URL `http://ergoemacs.org/emacs/elisp_copy-paste_register_1.html'
Version 2015-12-08"
  (interactive)
  (when (use-region-p)
    (delete-region (region-beginning) (region-end)))
  (insert-register ?1 t))

;; (global-set-key (kbd "M-[") 'xah-append-to-register-1) ; Alt+[
;; (global-set-key (kbd "M-]") 'xah-paste-from-register-1) ; Alt+]
;; (global-set-key (kbd "C-M-]") 'xah-clear-register-1) ; ctrl+alt+]

(evil-leader/set-key (kbd "r 1") 'xah-clear-register-1)
(evil-leader/set-key (kbd "r 2") 'xah-append-to-register-1)
(evil-leader/set-key (kbd "r 3") 'xah-paste-from-register-1)


;; quote navigation worked better currently forw what I want.
;;(global-set-key (kbd "M-[") 'indent-tools-hydra/indent-tools-goto-previous-sibling) ; Alt+[
;;(global-set-key (kbd "M-]") 'indent-tools-hydra/indent-tools-goto-next-sibling) ; Alt+]

;; (require 'indent-tools)
;; (global-set-key (kbd "<f8>") 'indent-tools-goto-previous-sibling)
;; (global-set-key (kbd "<f9>") 'indent-tools-goto-next-sibling)

;; (global-set-key (kbd "C-M-]") 'indent-tools-hydra/body) ; ctrl-Alt+]


(defun xah-forward-quote-smart ()
  "Move cursor to the current or next string quote.
Place cursor at the position after the left quote.
Repeated call will find the next string.
URL `http://ergoemacs.org/emacs/emacs_navigating_keys_for_brackets.html'
Version 2016-11-22"
  (interactive)
  (let (($pos (point)))
    (if (nth 3 (syntax-ppss))
        (progn
          (backward-up-list 1 'ESCAPE-STRINGS 'NO-SYNTAX-CROSSING)
          (forward-sexp)
          (re-search-forward "\\\"" nil t))
      (progn (re-search-forward "\\\"" nil t)))
    (when (<= (point) $pos)
      (progn (re-search-forward "\\\"" nil t)))))

(defun xah-backward-quote ()
  "Move cursor to the previous occurrence of \".
If there are consecutive quotes of the same char, keep moving until none.
Returns `t' if found, else `nil'.
URL `http://ergoemacs.org/emacs/emacs_navigating_keys_for_brackets.html'
Version 2016-07-23"
  (interactive)
  (if (re-search-backward "\\\"+" nil t)
      (when (char-before) ; isn't nil, at beginning of buffer
        (while (char-equal (char-before) (char-after))
          (left-char)
          t))
    (progn
      (message "No more quotes before cursor.")
      nil)))

 (global-set-key (kbd "M-]") 'xah-forward-quote-smart) ; Alt+[
 (global-set-key (kbd "M-[") 'xah-backward-quote) ; Alt+]





;;undo session mode -- not working?

;;(use-package undo-fu-session
;;  :config
;;  (setq undo-fu-session-incompatible-files '("/COMMIT_EDITMSG\\'" "/git-rebase-todo\\'"))
;;  (setq undo-fu-session-directory '("undo-fu-session"))
;;        )
;;(global-undo-fu-session-mode)


;;ergoemacs.org - Doing tabs the way I like, (not sure if messing up things)
(defun my-insert-tab-char ()
  "Insert a tab char. (ASCII 9, \t)"
  (interactive)
  (insert "\t"))

(global-set-key (kbd "TAB") 'my-insert-tab-char) ; same as Ctrl+i
(setq-default tab-width 8)

(spacemacs/set-leader-keys "ht" 'hs-toggle-hiding)


;;spacemacs way to view-lossage
(evil-leader/set-key (kbd "h L") 'view-lossage)

;;spacemacs way to eval-region
(evil-leader/set-key (kbd "f e e") 'eval-region)

;;searching through org headlines.
(spacemacs/set-leader-keys-for-major-mode 'org-mode "j" 'helm-org-in-buffer-headings)


;;searching through all  org headlines
(evil-leader/set-key (kbd "s o h") 'helm-org-agenda-files-headings)

;;Jump to date on org agenda major mode
(spacemacs/set-leader-keys-for-major-mode 'org-agenda-mode "j" 'org-agenda-goto-date)

(setq org-startup-with-inline-images t)

;;helm-mini and c-z cua -- got an error on this
;;(define-key helm-map (kbd "C-;") 'helm-execute-persistent-action)


(setq-default fill-column 130)
(add-hook 'org-mode-hook 'visual-line-mode)
;;(add-hook 'org-mode-hook 'visual-fill-column-mode)
(setq org-startup-indented t)

(let ((org-super-agenda-groups
       '((:auto-group t))))
)


(org-super-agenda-mode)

(setq org-agenda-start-with-log-mode t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled t)
(setq org-agenda-skip-deadline-prewarning-if-scheduled t)
(setq org-agenda-skip-scheduled-if-deadline-is-shown t)
;;org-agenda-skip-scheduled-if-deadline-is-shown <-- not sure for this.  https://www.reddit.com/r/orgmode/comments/cc5vz5/how_to_avoid_duplicates_in_orgsuperagenda/ -- I think I like it


  (setq org-super-agenda-groups
        '(                (:auto-group t)
                          (:name "--------------------- ! Due Today !-----------------------"
                                 :deadline today
                                 :order 2)
                          (:name "-----------! Priority A Important Doing it Today !--------"
                                 :tag "Important"
                                 :priority "A"
                                 :order 1)
                          (:name "-----------------------! Overdue !------------------------"
                                 :deadline past
                                 :order 3)
                          (:name "------------------------Due Soon--------------------------"
                                 :deadline future
                                 :order 4)
                          (:name "------------------------MONITORING------------------------"
                                 :todo "MONITORING"
                                 :order 10)
                          (:name "------------------------Blocked - Follow up?--------------"
                                 :todo "BLOCKED"
                                 :order 12)
                          (:name "------------------------PROJECT---------------------------"
                                 :todo "Project"
                                 :order 14)
                          (:name "------------------------Log this in UCM-------------------"
                                 :todo "DONE-UCM"
                                 :order 13)
                          (:name "------------------------Research-------------------------"
                                 :tag "Research"
                                 :order 15)
                          (:name "------------------------To read--------------------------"
                                 :tag "Read"
                                 :order 30)
                          (:name "------------------------Waiting--------------------------"
                                 :todo "WAITING"
                                 :order 20)
                          (:name "------------------------trivial--------------------------"
                                 :tag ("truckroll"))

                          (:name "------------------------trivial--------------------------"
                                 :priority<= "C"
                                 :tag ("Trivial" "Unimportant")
                                 :todo ("SOMEDAY" )
                                 :order 90)
                          (:discard (:tag ("Chore" "Routine" "Daily")))))



(setq org-agenda-window-setup 'current-window)

(setq org-capture-templates
      '(
				("c" "High priority Todo" entry (file "r:/Apps/Editorial/inbox.org")
         "* TODO [#A] !!! %?\nSCHEDULED: %(org-insert-time-stamp (org-read-date nil t \"+0d\"))\n")
        ("t" "Todo" entry (file "r:/Apps/Editorial/inbox.org")
         "* TODO %?\n%U" :empty-lines 1)
        ("T" "Todo with Clipboard" entry (file "r:/Apps/Editorial/inbox.org")
         "* TODO %?\n%U\n   %c" :empty-lines 1)
        ("n" "Note" entry (file "r:/Apps/Editorial/inbox.org")
         "* NOTE %?\n%U" :empty-lines 1)
        ("N" "Note with Clipboard" entry (file "r:/Apps/Editorial/inbox.org")
         "* NOTE %?\n%U\n   %c" :empty-lines 1)
        ("u" "URL" entry (file "r:/Apps/Editorial/inbox.org")
         "* URL - %?\n%U" :empty-lines 1)
        ("U" "URL with Clipboard" entry (file "r:/Apps/Editorial/inbox.org")
         "* URL -  %?\n%U\n   %c" :empty-lines 1)
        )
      )




(define-key org-read-date-minibuffer-local-map (kbd "C-f") (lambda () (interactive) (org-eval-in-calendar '(calendar-forward-day 1))))
(define-key org-read-date-minibuffer-local-map (kbd "C-b") (lambda () (interactive) (org-eval-in-calendar '(calendar-backward-day 1))))



;; (defun my-handle-delete-frame (event)
;;   "Ask for confirmation before deleting the last frame"
;;   (interactive "e")
;;   (let ((frame   (posn-window (event-start event)))
;;         (numfrs  (length (visible-frame-list))))
;;     (cond ((> numfrs 1) (delete-frame frame t))
;;           ((y-or-n-p "Really exit Emacs? ") (save-buffers-kill-emacs)))))

;; (define-key special-event-map [delete-frame] 'my-handle-delete-frame)



(global-set-key (kbd "M-<f4>") 'delete-frame)

(defhydra hydra-dired (:hint nil :color pink)
  "
_+_ mkdir          _v_iew           _m_ark             _(_ details        _i_nsert-subdir      wdired
_C_opy             _O_ view other   _U_nmark all       _)_ omit-mode      C-uk no-instsubdir C-x C-q : edit
_D_elete           _o_pen other     _u_nmark           _l_ redisplay      _$_ hide-subdir      C-c C-c : commit
_R_ename/Move      _M_ chmod        _t_oggle           _g_ revert(refresh) _w_ kill-subdir      C-c ESC : abort
_Y_ rel symlink    _G_ chgrp        _E_xtension mark   _s_ort             _e_ ediff
_S_ymlink          ^ ^              _F_ind marked      _._ toggle hydra    _=_ pdiff
_r_sync            ^ ^              ^ ^                ^ ^                \\ flyspell
_z_ compress-file  _A_ find regexp                                        _?_ summary
_Z_ compress       _Q_ repl regexp

T - tag prefix
"
  ("\\" dired-do-ispell)
  ("(" dired-hide-details-mode)
  (")" dired-omit-mode)
  ("+" dired-create-directory)
  ("=" diredp-ediff)         ;; smart diff
  ("?" dired-summary)
  ("$" diredp-hide-subdir-nomove)
  ("A" dired-do-find-regexp)
  ("C" dired-do-copy)        ;; Copy all marked files
  ("D" dired-do-delete)
  ("E" dired-mark-extension)
  ("e" dired-ediff-files)
  ("F" dired-do-find-marked-files)
  ("G" dired-do-chgrp)
  ("g" revert-buffer)        ;; read all directories again (refresh)
  ("i" dired-maybe-insert-subdir)
  ("l" dired-do-redisplay)   ;; relist the marked or singel directory
  ("M" dired-do-chmod)
  ("m" dired-mark)
  ("O" dired-display-file)
  ("o" dired-find-file-other-window)
  ("Q" dired-do-find-regexp-and-replace)
  ("R" dired-do-rename)
  ("r" dired-do-rsynch)
  ("S" dired-do-symlink)
  ("s" dired-sort-toggle-or-edit)
  ("t" dired-toggle-marks)
  ("U" dired-unmark-all-marks)
  ("u" dired-unmark)
  ("v" dired-view-file)      ;; q to exit, s to search, = gets line #
  ("w" dired-kill-subdir)
  ("Y" dired-do-relsymlink)
  ("z" diredp-compress-this-file)
  ("Z" dired-do-compress)
  ("q" nil)
  ("." nil :color blue))

(define-key dired-mode-map "." 'hydra-dired/body)


;; Hydra for org agenda (graciously taken from Spacemacs)
(defhydra hydra-org-agenda (:pre (setq which-key-inhibit t)
                                 :post (setq which-key-inhibit nil)
                                 :hint none)
  "
Org agenda (_q_uit)

^Clock^      ^Visit entry^              ^Date^             ^Other^
^-----^----  ^-----------^------------  ^----^-----------  ^-----^---------
_ci_ in      _SPC_ in other window      _ds_ schedule      _gr_ reload
_co_ out     _TAB_ & go to location     _dd_ set deadline  _._  go to today
_cq_ cancel  _RET_ & del other windows  _dt_ timestamp     _gd_ go to date
_cj_ jump    _o_   link                 _+_  do later      ^^
^^           ^^                         _-_  do earlier    ^^
^^           ^^                         ^^                 ^^
^View^          ^Filter^                 ^Headline^         ^Toggle mode^
^----^--------  ^------^---------------  ^--------^-------  ^-----------^----
_vd_ day        _ft_ by tag              _ht_ set status    _tf_ follow
_vw_ week       _fr_ refine by tag       _hk_ kill          _tl_ log
_vt_ fortnight  _fc_ by category         _hr_ refile        _ta_ archive trees
_vm_ month      _fh_ by top headline     _hA_ archive       _tA_ archive files
_vy_ year       _fx_ by regexp           _h:_ set tags      _tr_ clock report
_vn_ next span  _fd_ delete all filters  _hp_ set priority  _td_ diaries
_vp_ prev span  ^^                       ^^                 ^^
_vr_ reset      ^^                       ^^                 ^^
^^              ^^                       ^^                 ^^
"
  ;; Entry
  ("hA" org-agenda-archive-default)
  ("hk" org-agenda-kill)
  ("hp" org-agenda-priority)
  ("hr" org-agenda-refile)
  ("h:" org-agenda-set-tags)
  ("ht" org-agenda-todo)
  ;; Visit entry
  ("o"   link-hint-open-link :exit t)
  ("<tab>" org-agenda-goto :exit t)
  ("TAB" org-agenda-goto :exit t)
  ("SPC" org-agenda-show-and-scroll-up)
  ("RET" org-agenda-switch-to :exit t)
  ;; Date
  ("dt" org-agenda-date-prompt)
  ("dd" org-agenda-deadline)
  ("+" org-agenda-do-date-later)
  ("-" org-agenda-do-date-earlier)
  ("ds" org-agenda-schedule)
  ;; View
  ("vd" org-agenda-day-view)
  ("vw" org-agenda-week-view)
  ("vt" org-agenda-fortnight-view)
  ("vm" org-agenda-month-view)
  ("vy" org-agenda-year-view)
  ("vn" org-agenda-later)
  ("vp" org-agenda-earlier)
  ("vr" org-agenda-reset-view)
  ;; Toggle mode
  ("ta" org-agenda-archives-mode)
  ("tA" (org-agenda-archives-mode 'files))
  ("tr" org-agenda-clockreport-mode)
  ("tf" org-agenda-follow-mode)
  ("tl" org-agenda-log-mode)
  ("td" org-agenda-toggle-diary)
  ;; Filter
  ("fc" org-agenda-filter-by-category)
  ("fx" org-agenda-filter-by-regexp)
  ("ft" org-agenda-filter-by-tag)
  ("fr" org-agenda-filter-by-tag-refine)
  ("fh" org-agenda-filter-by-top-headline)
  ("fd" org-agenda-filter-remove-all)
  ;; Clock
  ("cq" org-agenda-clock-cancel)
  ("cj" org-agenda-clock-goto :exit t)
  ("ci" org-agenda-clock-in :exit t)
  ("co" org-agenda-clock-out)
  ;; Other
  ("q" nil :exit t)
  ("gd" org-agenda-goto-date)
  ("." org-agenda-goto-today)
  ("gr" org-agenda-redo))

(define-key org-agenda-mode-map "." 'hydra-org-agenda/body)



;;Proper case
(evil-leader/set-key (kbd "x C-u") 'upcase-initials-region)



;highlights the cursor line. I usually go with the default.
;(set-face-background hl-line-face "darkgreen")

;; Refresh the images in an org file
(global-set-key (kbd "<f5>") 'org-redisplay-inline-images)

;; attempt to do org endofline better
(define-key org-mode-map [home] 'org-beginning-of-line)
(define-key org-mode-map [end] 'org-end-of-line)
(define-key org-mode-map "\C-a" 'org-beginning-of-line)
(define-key org-mode-map "\C-e" 'org-end-of-line)

(global-unset-key (kbd "C-M-t"))

;;line wrap changes
(setq-default fill-column 130)
(add-hook 'org-mode-hook 'visual-line-mode)
(add-hook 'org-mode-hook 'visual-fill-column-mode)
(setq org-startup-indented t)


(setq org-habit-show-all-today nil)

;; C-? to show actions in helm-find-files
;; (define-key helm-map (kbd "C-?")  'helm-select-action)            					;; issue with new spacemacs version 

;;(find-file "r:/Apps/Editorial/org-temp/Untitled-2021-0909-210651.org")                           ;;; not sure what this 

(defun open-org-files-recursively ()
  "Search DIRNAME recursively for org files, and open them all."
  (interactive)
  (mapc #'find-file (directory-files-recursively "r:/Apps/Editorial/org-temp/" "\\.org$" nil))
  )

(open-org-files-recursively)


(find-file "r:/Apps/Editorial/inbox.org")


;; Open all my org files -- looks like issues with this. things after this do not work. tshoot later. It's in my private.el maybe I bring it out and it's fine now?
;; https://github.com/sinewalker/dotspacemacs thanks
;; (defun open-org-files ()
;;   "Opens all my ORG Agenda files"
;;   (interactive)
;;   (mapc #'find-file (org-agenda-files))
;;   (switch-to-buffer (file-name-nondirectory (car (org-agenda-files)))))
;; (open-org-files)

;;(desktop-save-mode)
;;(desktop-read)

;; Helm always at the bottom. 
;; https://www.reddit.com/r/emacs/comments/345vtl/make_helm_window_at_the_bottom_without_using_any/
(add-to-list 'display-buffer-alist
             `(,(rx bos "*helm" (* not-newline) "*" eos)
               (display-buffer-in-side-window)
               (inhibit-same-window . t)
               (window-height . 0.4)))



(setq scroll-conservatively 1000)


;;https://stackoverflow.com/questions/24705984/increase-decrease-font-size-in-an-emacs-frame-not-just-buffer#:~:text=Using%20C%2Dx%20C%2D%2B%20and,font%20size%20in%20one%20buffer.
(defun zoom-frame (&optional n frame amt)
  "Increase the default size of text by AMT inside FRAME N times.
  N can be given as a prefix arg.
  AMT will default to 10.
  FRAME will default the selected frame."
  (interactive "p")
  (let ((frame (or frame (selected-frame)))
        (height (+ (face-attribute 'default :height frame) (* n (or amt 10)))))
    (set-face-attribute 'default frame :height height)
    (when (called-interactively-p)
      (message "Set frame's default text height to %d." height))))

(defun zoom-frame-out (&optional n frame amt)
  "Call `zoom-frame' with -N."
  (interactive "p")
  (zoom-frame (- n) frame amt))

(defhydra hydra-zoom-frame (:color amaranth)
  "Zoom Frame Operationss"
  ("=" zoom-frame "Zoom in")
  ("-" zoom-frame-out "Zoom out")
  ("q" nil "Exit" :exit t))

(evil-leader/set-key (kbd "z f") (lambda () (interactive) (hydra-zoom-frame/body)))





  )


;; ;; Do not write anything past this comment. This is where Emacs will
;; ;; auto-generate custom variable definitions.
;; (custom-set-variables
;;  ;; custom-set-variables was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(evil-want-Y-yank-to-eol nil)
;;  '(org-agenda-files
;;    '("r:/Apps/Editorial/todowork.org" "r:/Apps/Editorial/inbox.org" "r:/Apps/Editorial/Meetings.org" "r:/Apps/Editorial/somedaymaybehome.org" "r:/Apps/Editorial/somedaymaybework.org" "r:/Apps/Editorial/todohome.org"))
;;  '(org-refile-use-cache nil)
;;  '(org-speed-commands
;;    '(("Outline Navigation")
;;      ("n" org-speed-move-safe 'org-next-visible-heading)
;;      ("p" org-speed-move-safe 'org-previous-visible-heading)
;;      ("f" org-speed-move-safe 'org-forward-heading-same-level)
;;      ("b" org-speed-move-safe 'org-backward-heading-same-level)
;;      ("F" . org-next-block)
;;      ("B" . org-previous-block)
;;      ("u" org-speed-move-safe 'outline-up-heading)
;;      ("j" . org-goto)
;;      ("g" org-refile
;;       '(4))
;;      ("Outline Visibility")
;;      ("h" . org-cycle)
;;      ("H" . org-shifttab)
;;      (" " . org-display-outline-path)
;;      ("s" . org-toggle-narrow-to-subtree)
;;      ("'" . org-cut-subtree)
;;      ("=" . org-columns)
;;      ("Outline Structure Editing")
;;      ("i" . org-metaup)
;;      ("k" . org-metadown)
;;      ("r" . org-metaright)
;;      ("l" . org-metaleft)
;;      ("R" . org-shiftmetaright)
;;      ("L" . org-shiftmetaleft)
;;      ("i" progn
;;       (forward-char 1)
;;       (call-interactively 'org-insert-heading-respect-content))
;;      ("^" . org-sort)
;;      ("w" . org-refile)
;;      ("a" . org-archive-subtree-default-with-confirmation)
;;      ("@" . org-mark-subtree)
;;      ("#" . org-toggle-comment)
;;      ("Clock Commands")
;;      ("I" . org-clock-in)
;;      ("O" . org-clock-out)
;;      ("Meta Data Editing")
;;      ("t" . org-todo)
;;      ("," org-priority)
;;      ("0" org-priority 32)
;;      ("1" org-priority 65)
;;      ("2" org-priority 66)
;;      ("3" org-priority 67)
;;      (":" . org-set-tags-command)
;;      ("e" . org-set-effort)
;;      ("E" . org-inc-effort)
;;      ("W" lambda
;;       (m)
;;       (interactive "sMinutes before warning: ")
;;       (org-entry-put
;;        (point)
;;        "APPT_WARNTIME" m))
;;      ("Agenda Views etc")
;;      ("v" . org-agenda)
;;      ("/" . org-sparse-tree)
;;      ("Misc")
;;      ("o" . org-open-at-point)
;;      ("?" . org-speed-command-help)
;;      ("<" org-agenda-set-restriction-lock 'subtree)
;;      (">" org-agenda-remove-restriction-lock)
;;      ("d" . widen)))
;;  '(org-use-speed-commands t)
;;  '(package-selected-packages
;;    '(tern deft default-text-scale zonokai-emacs zenburn-theme zen-and-art-theme yapfify xterm-color xkcd writeroom-mode white-sand-theme which-key web-mode web-beautify w32-browser vscdark-theme vdiff use-package undo-fu-session undo-fu underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tree-mode toxi-theme toc-org terminal-here tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit swiper-helm sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sphinx-doc spacegray-theme sourcerer-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restclient-test restclient-helm restart-emacs rebecca-theme ranger railscasts-theme quickrun pytest pyenv-mode pydoc py-isort purple-haze-theme pug-mode professional-theme prettier-js powershell poetry planet-theme pippel pipenv pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persistent-scratch peep-dired pdf-view-restore pcre2el overseer ov orgit organic-green-theme org-superstar org-super-agenda org-rich-yank org-present org-pomodoro org-mime org-download org-contrib org-cliplink open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme npm-mode nov nose nodejs-repl noctilux-theme naquadah-theme nameless mustang-theme multi-term monokai-theme monochrome-theme molokai-theme moe-theme modus-vivendi-theme modus-operandi-theme minimal-theme material-theme markdown-mode manage-minor-mode majapahit-theme madhat2r-theme macrostep lush-theme livid-mode live-py-mode light-soap-theme kaolin-themes json-reformat json-navigator json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme intellij-theme inspector inkpot-theme importmagic impatient-mode hybrid-mode highlight-indent-guides hide-lines heroku-theme hemisu-theme helm-xref helm-themes helm-swoop helm-pydoc helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-ls-git helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-this gnuplot gitignore-templates git-timemachine git-modes git-messenger git-link gandalf-theme fuzzy flycheck-package flycheck-elsa flatui-theme flatland-theme farmhouse-theme eziam-theme exotica-theme evil-org espresso-theme eshell-z eshell-prompt-extras esh-help es-mode erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks engine-mode emr emmet-mode elisp-slime-nav elfeed dracula-theme dotenv-mode doom-themes django-theme diminish darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode company-web company-anaconda color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme chocolate-theme cherry-blossom-theme busybee-theme bubbleberry-theme bm blacken birds-of-paradise-plus-theme bind-map beacon bash-completion badwolf-theme auto-yasnippet auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes ahk-mode afternoon-theme ace-jump-helm-line ac-ispell 2048-game)))
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  )

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
 '(evil-want-Y-yank-to-eol nil)
 '(org-agenda-files
   '("r:/Apps/Editorial/subnetting-flash-cards.org" "r:/Apps/Editorial/unchecked-musings.org" "r:/Apps/Editorial/todowork.org" "r:/Apps/Editorial/inbox.org" "r:/Apps/Editorial/Meetings.org" "r:/Apps/Editorial/somedaymaybehome.org" "r:/Apps/Editorial/somedaymaybework.org" "r:/Apps/Editorial/todohome.org"))
 '(org-drill-cram-hours 1)
 '(org-drill-leech-method 'warn)
 '(org-fontify-done-headline nil)
 '(org-fontify-todo-headline nil)
 '(org-refile-use-cache nil)
 '(org-speed-commands
   '(("Outline Navigation")
     ("n" org-speed-move-safe 'org-next-visible-heading)
     ("p" org-speed-move-safe 'org-previous-visible-heading)
     ("f" org-speed-move-safe 'org-forward-heading-same-level)
     ("b" org-speed-move-safe 'org-backward-heading-same-level)
     ("F" . org-next-block)
     ("B" . org-previous-block)
     ("u" org-speed-move-safe 'outline-up-heading)
     ("j" . org-goto)
     ("g" org-refile
      '(4))
     ("Outline Visibility")
     ("h" . org-cycle)
     ("H" . org-shifttab)
     (" " . org-display-outline-path)
     ("s" . org-toggle-narrow-to-subtree)
     ("'" . org-cut-subtree)
     ("=" . org-columns)
     ("Outline Structure Editing")
     ("i" . org-metaup)
     ("k" . org-metadown)
     ("r" . org-metaright)
     ("l" . org-metaleft)
     ("R" . org-shiftmetaright)
     ("L" . org-shiftmetaleft)
     ("i" progn
      (forward-char 1)
      (call-interactively 'org-insert-heading-respect-content))
     ("^" . org-sort)
     ("w" . org-refile)
     ("a" . org-archive-subtree-default-with-confirmation)
     ("@" . org-mark-subtree)
     ("#" . org-toggle-comment)
     ("Clock Commands")
     ("I" . org-clock-in)
     ("O" . org-clock-out)
     ("Meta Data Editing")
     ("t" . org-todo)
     ("," org-priority)
     ("0" org-priority 32)
     ("1" org-priority 65)
     ("2" org-priority 66)
     ("3" org-priority 67)
     (":" . org-set-tags-command)
     ("e" . org-set-effort)
     ("E" . org-inc-effort)
     ("W" lambda
      (m)
      (interactive "sMinutes before warning: ")
      (org-entry-put
       (point)
       "APPT_WARNTIME" m))
     ("Agenda Views etc")
     ("v" . org-paste-subtree)
     ("/" . org-sparse-tree)
     ("Misc")
     ("o" . org-open-at-point)
     ("?" . org-speed-command-help)
     ("<" org-agenda-set-restriction-lock 'subtree)
     (">" org-agenda-remove-restriction-lock)
     ("d" . widen)))
 '(org-src-block-faces 'nil)
 '(org-use-speed-commands t)
 '(package-selected-packages
   '(org-drill org-treeusage tern deft default-text-scale zonokai-emacs zenburn-theme zen-and-art-theme yapfify xterm-color xkcd writeroom-mode white-sand-theme which-key web-mode web-beautify w32-browser vscdark-theme vdiff use-package undo-fu-session undo-fu underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tree-mode toxi-theme toc-org terminal-here tao-theme tangotango-theme tango-plus-theme tango-2-theme tagedit swiper-helm sunny-day-theme sublime-themes subatomic256-theme subatomic-theme sphinx-doc spacegray-theme sourcerer-theme soothe-theme solarized-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smeargle slim-mode shell-pop seti-theme scss-mode sass-mode reverse-theme restclient-test restclient-helm restart-emacs rebecca-theme ranger railscasts-theme quickrun pytest pyenv-mode pydoc py-isort purple-haze-theme pug-mode professional-theme prettier-js powershell poetry planet-theme pippel pipenv pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persistent-scratch peep-dired pdf-view-restore pcre2el overseer ov orgit organic-green-theme org-superstar org-super-agenda org-rich-yank org-present org-pomodoro org-mime org-download org-contrib org-cliplink open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme npm-mode nov nose nodejs-repl noctilux-theme naquadah-theme nameless mustang-theme multi-term monokai-theme monochrome-theme molokai-theme moe-theme modus-vivendi-theme modus-operandi-theme minimal-theme material-theme markdown-mode manage-minor-mode majapahit-theme madhat2r-theme macrostep lush-theme livid-mode live-py-mode light-soap-theme kaolin-themes json-reformat json-navigator json-mode js2-refactor js-doc jbeans-theme jazz-theme ir-black-theme intellij-theme inspector inkpot-theme importmagic impatient-mode hybrid-mode highlight-indent-guides hide-lines heroku-theme hemisu-theme helm-xref helm-themes helm-swoop helm-pydoc helm-projectile helm-org-rifle helm-org helm-mode-manager helm-make helm-ls-git helm-git-grep helm-flx helm-descbinds helm-css-scss helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-this gnuplot gitignore-templates git-timemachine git-modes git-messenger git-link gandalf-theme fuzzy flycheck-package flycheck-elsa flatui-theme flatland-theme farmhouse-theme eziam-theme exotica-theme evil-org espresso-theme eshell-z eshell-prompt-extras esh-help es-mode erc-yt erc-view-log erc-social-graph erc-image erc-hl-nicks engine-mode emr emmet-mode elisp-slime-nav elfeed dracula-theme dotenv-mode doom-themes django-theme diminish darktooth-theme darkokai-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme csv-mode company-web company-anaconda color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme chocolate-theme cherry-blossom-theme busybee-theme bubbleberry-theme bm blacken birds-of-paradise-plus-theme bind-map beacon bash-completion badwolf-theme auto-yasnippet auto-compile apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes ahk-mode afternoon-theme ace-jump-helm-line ac-ispell 2048-game)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-date ((t (:foreground "#a991f1" :weight ultra-bold :height 2.0))))
 '(org-agenda-date-today ((t (:foreground "#cbc6ed" :underline t :slant italic :weight ultra-bold :height 2.3))))
 '(org-agenda-date-weekend ((t (:foreground "#656087" :weight ultra-bold :height 2.0)))))
)
