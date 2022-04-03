## 下载配置文件

下载仓库并将配置文件拷贝到对应目录：

```shell
git clone https://github.com/wendx/myvimrc.git ~/myvimrc/
cp ~/myvimrc/vimrc ~/.vimrc
cp ~/myvimrc/inputrc ~/.inputrc
```

## 下载vim-plug用来管理插件

下载vim-plug仓库：

```shell
git clone https://github.com/junegunn/vim-plug.git ~/.vim/autoload
```

或是直接下载plug.vim：

```shell
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## 安装插件

打开vim，执行以下命令安装配置插件。

```shell
:PlugInstall
```

更新vim-plug自身：

```shell
:PlugUpgrade
```

安装或更新所有插件：

```
:PlugUpdate
```

## 等待插件安装完成

Enjoy it！
