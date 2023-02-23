# startup-haskell

Haskell(stack)のサンプルプログラム。  

## 実行方法

DevContainerに入って、以下のコマンドを実行する。  

```shell
stack run
```

もしくはDockerfileをビルドして、実行することも可能。  

```shell
docker build -t startup-haskell .
docker run -it --rm --name startup-haskell startup-haskell
```
