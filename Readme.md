### Install Java on EC2 (Amazon Linux)
```
$ sudo yum install -y java-1.8.0-openjdk-devel.x86_64
$ sudo alternatives --config java

1 プログラムがあり 'java' を提供します。

  選択       コマンド
-----------------------------------------------
*+ 1           java-1.8.0-openjdk.x86_64 (/usr/lib/jvm/java-1.8.0-openjdk-1.8.0.265.b01-1.amzn2.0.1.x86_64/jre/bin/java)

Enter を押して現在の選択 [+] を保持するか、選択番号を入力します:1
$ java -version
openjdk version "1.8.0_265"
OpenJDK Runtime Environment (build 1.8.0_265-b01)
OpenJDK 64-Bit Server VM (build 25.265-b01, mixed mode)
```

### Install embulk on EC2 (Amazon Linux)
```
$ curl --create-dirs -o ~/.embulk/bin/embulk -L "https://dl.embulk.org/embulk-latest.jar"
$ chmod +x ~/.embulk/bin/embulk
$ echo 'export PATH="$HOME/.embulk/bin:$PATH"' >> ~/.bashrc
$ source ~/.bashrc
```

### Install embulk pulgin
- Input from S3
```
$ embulk gem install embulk-input-s3
```
