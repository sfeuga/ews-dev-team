# EWS Dev

### functions

In this file, you'll find useful functions like :

* ```installVimPlugin``` : Install All vim plugin unless Vundle is not installed.

* ```NoUpdateSinceMonths``` : List all branches without update since a month.

* ```DeleteUnusedBranch``` : List unused branches and ask if you want to delete them.

* ```LastCommitNumber``` : Simply display last commit number.

* ```RubocopMyFiles``` : Run Rubocop for updated files only.

* ```RubocopAfterCommit``` : Run Rubocop on the last committed files.

* ```ReekMyFiles``` : Run Reek for updated files only.

* ```ReekAfterCommit``` : Run Reek on the last committed files.

To install it, run :

```bash
curl -L -o .functions https://raw.githubusercontent.com/sfeuga/ews-dev-team/master/functions/functions
```

and source it.

### git-hook

* pre-commit hook:

  This hook delete all reference of your Github token before commit when you use a GEM from a private repo.

  To install it, run :
  
  ```bash
  curl -L -o .git/hooks/pre-commit https://raw.githubusercontent.com/sfeuga/ews-dev-team/master/git-hooks/pre-commit
  ```

### snippets

Run the following command to setup snippets :

For Vim :

```bash
[[ -f ~/.vimrc ]] && curl -L https://raw.githubusercontent.com/sfeuga/ews-dev-team/master/snippets/vim/summary >> ~/.vimrc
```

or for Sublime Text 3 :

```bash
[[ -d ~/.config/sublime-text-3/Packages/User ]] && curl -L https://raw.githubusercontent.com/sfeuga/ews-dev-team/master/snippets/sublime/summary.sublime-snippet -o ~/.config/sublime-text-3/Packages/User/summary.sublime-snippet
```

or for Atom :

```bash
[[ -f ~/.atom/snippets.cson ]] && curl -l https://raw.githubusercontent.com/sfeuga/ews-dev-team/master/snippets/atom/summary >> ~/.atom/snippets.cson
```

And enjoy.

### userstyles

Install [Stylish](https://userstyles.org/help/stylish) and Install style (css files) from their Github Raw URL.
