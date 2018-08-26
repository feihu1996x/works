# works

## 项目描述

画廊式项目展示系统

## 技术栈

HTML
CSS(3)
JavaScript
Vue.js
Django(Web 后端服务)
Xadmin(后台管理系统)
MySQL
Docker(容器端口映射)
Supervisor(进程管理)
Nginx(反向代理)

## Build and Setup

```bash

# 安装依赖
yum install mysql-devel gcc gcc-devel python-devel -y
pip install -r requirements.txt

# 导入数据库
mysql -uroot -p works < works.sql

# 启动Web App
python3 begin.py

```

## Website

[http://dev.feihu1996.cn/hpshsystem/](http://dev.feihu1996.cn/hpshsystem/ "hpshSystem")
