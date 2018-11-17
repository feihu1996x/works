# works

> 画廊式项目展示系统

## Tech Stack

- HTML/CSS/JavaScript
- Vue
- Python/Django/Xadmin
- MySQL
- Docker
- Supervisor
- Nginx
- Gunicorn

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

## Demo Link

[http://dev.feihu1996.cn/works/](http://dev.feihu1996.cn/works/ "works")
