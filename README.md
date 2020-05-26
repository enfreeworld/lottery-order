## 模板
  - k8s部署文件模板 kustomize/template 
  - Dockerfile模板 Dockerfile.in
## 登录服务器编译
## 下载项目
git clone <项目url>
## 编译镜像
  - cd <项目路径>
  - ``
  ./builddocker.sh <appname> <tag>
  ``
## 生成部署文件
  - ``
  ./kustomize/gen.sh <appname> <tag> <port> <namespace>
``
## 部署到集群
  - ``
  kustomize build kustomize/config/overlays/development/ | kubectl create -f -
  ``
 
