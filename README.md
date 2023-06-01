# My Configuration Files

### Use With Stow

- Creates sym links of the contents within each .dotfiles directory and places them in the home directory

```command
cd ~/.dotfiles/

stow --target=${HOME} */ 
-- or --
stow --target=${HOME} alacritty
```
