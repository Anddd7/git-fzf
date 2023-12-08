# git-fzf

standardized your commit message with fzf.

> similar like [commitizen/cz-cli](https://github.com/commitizen/cz-cli), but can be used for any git project.
> also get inspired by [bigH/git-fuzzy](https://github.com/bigH/git-fuzzy), inject this command as a git extension.

## Installation

### zsh

apply the shell

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Anddd7/git-fzf/main/install.sh)"
```

## Usage

```bash
g fzf-commit "this is your message"
# or
gfzfc "this is your message"
```

## Customize your prefix

create `.commit-template` to customize your prefix

```plain
(feat)
(docs)
(fix)
(style)
(test)
(chore)
```

### Example: Overwrite & Hierarchy

it support hierarchy, and will overwrite the prefix from bottom to top

```sh
home
└── anddd7
    ├── project1
    │   └── .commit-template      # for project1
    ├── project2
    │   └── .commit-template      # for project2
    └── workspace
        ├── .commit-template      # for all sub projects
        ├── oss-project1
        └── oss-project2
```

### Example: Emoji

define your prefix with emoji

```sh
🚀feature
💊repair
📑docs
🏂optimize
🍺misc
```

### Example: Frequently used

add your frequently used msg, instead of writing it every time

```sh
fix bug
fix misc
refine the docs
```

## Uninstall

### zsh

apply the shell

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/Anddd7/git-fzf/main/uninstall.sh)"
```

## Others
