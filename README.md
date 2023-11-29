## 本项目实现的最终作用是基于JSP医院信息管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 医生信息管理
 - 医生排班管理
 - 就医指南管理
 - 床位信息管理
 - 留言管理
 - 科室管理
 - 管理员登录
 - 管理员管理
 - 药品信息管理
 - 预约信息管理
### 第2个角色为医生角色，实现了如下功能：
 - 个人资料修改
 - 医生角色登录
 - 预约信息管理
### 第3个角色为用户角色，实现了如下功能：
 - 医生信息查看
 - 医生排班查看
 - 就医指南查看
 - 提交预约
 - 用户主页
 - 用户登录
 - 留言
 - 预约医生
## 数据库设计如下：
# 数据库设计文档

**数据库名：** yiyuan_manage

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [chuangweixinxi](#chuangweixinxi) |  |
| [departmentxinxi](#departmentxinxi) |  |
| [doctorinfo](#doctorinfo) |  |
| [doctororder](#doctororder) |  |
| [dx](#dx) |  |
| [keshixinxi](#keshixinxi) |  |
| [liuyanban](#liuyanban) |  |
| [medicineinfo](#medicineinfo) |  |
| [paibanbiao](#paibanbiao) |  |
| [pinglun](#pinglun) |  |
| [userinfo](#userinfo) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [yaopininfotype](#yaopininfotype) |  |
| [yaopinleibie](#yaopinleibie) |  |
| [yaopinxinxi](#yaopinxinxi) |  |
| [yishengxinxi](#yishengxinxi) |  |
| [yonghuzhuce](#yonghuzhuce) |  |
| [youqinglianjie](#youqinglianjie) |  |
| [yuyueyisheng](#yuyueyisheng) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="chuangweixinxi">chuangweixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | mingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 名称  |
|  3   | keshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | fanghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | chuanghao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | tupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | zhuangtai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | jiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="departmentxinxi">departmentxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | department |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="doctorinfo">doctorinfo</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | doctorid |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  3   | password |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  4   | doctorname |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  5   | sex |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  6   | picture |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  7   | department |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  8   | professionaltitles |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  9   | school |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  10   | jobyear |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  11   | doctorinfo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="doctororder">doctororder</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | orderid |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  3   | ordernumber |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  4   | doctorid |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  5   | doctorname |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  6   | daytime |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  7   | weekday |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  8   | timequantum |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  9   | ordertime |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  10   | username |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  11   | realname |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  12   | idcard |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  13   | mobile |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  14   | status |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  15   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="keshixinxi">keshixinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | keshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="medicineinfo">medicineinfo</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | medicineid |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  3   | medicinename |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  4   | infotype |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  5   | supplier |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  6   | dop |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  7   | validiinfotime |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  8   | mainingredients |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | specification |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  10   | unit |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  11   | price |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  12   | inprice |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  13   | picture |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  14   | stock |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  15   | tipinfo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  16   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="paibanbiao">paibanbiao</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  3   | yishengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yishengxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | riqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 日期  |
|  6   | xingqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shiduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | shengyuhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="userinfo">userinfo</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | username |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  3   | password |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  4   | realname |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  5   | sex |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | birthday |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  7   | QQ |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  8   | email |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  9   | mobile |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  10   | idcard |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  11   | picture |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  12   | address |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | tipinfo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yaopininfotype">yaopininfotype</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | ID |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | infotype |   varchar   | 50 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yaopinleibie">yaopinleibie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yaopinxinxi">yaopinxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yaopinbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | yaopinmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  5   | gongyingshang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | shengchanriqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | youxiaoqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zhuyaochengfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | guige |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | danwei |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | jiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | rukujiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | tupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | kucun |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 库存  |
|  15   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  16   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yishengxinxi">yishengxinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yishengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | yishengxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | zhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 照片  |
|  7   | keshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | zhicheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 职称  |
|  9   | biyeyuanxiao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | yiling |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | yishengjianjie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yonghuzhuce">yonghuzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  6   | chushengnianyue |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  8   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  9   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  10   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  11   | touxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 头像  |
|  12   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  15   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | logo |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yuyueyisheng">yuyueyisheng</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yuyuehao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | bianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 编号  |
|  4   | yishengbianhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | yishengxingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | riqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 日期  |
|  7   | xingqi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | shiduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | yuyueshijian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | yonghuming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  11   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  12   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | shouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  14   | zhuangtai |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  15   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
