# 微信小程序之路

## 1. 资源

#### 官方资源：

> https://developers.weixin.qq.com/miniprogram/introduction/index.html
> https://developers.weixin.qq.com/miniprogram/dev/index.html
> https://mp.weixin.qq.com/

#### 开发资源：

> https://www.zhihu.com/question/50907897
> https://github.com/Tencent/wepy

## 2. 优化

## 3. 后台

https://console.qcloud.com/lav2/dev



## 4. 支付

https://pay.weixin.qq.com/wiki/doc/api/index.html

### 1. 申请支付能力：需要以**公司名义申请的小程序在认证以后**才能申请支付功能

https://pay.weixin.qq.com/wiki/doc/api/wxa/wxa_api.php?chapter=3_1

https://pay.weixin.qq.com/wiki/doc/api/wxa/wxa_api.php?chapter=7_11&index=2

| 邮件中参数     | API参数名 | 详细说明                                                     |
| -------------- | --------- | ------------------------------------------------------------ |
| APPID          | appid     | appid是微信小程序后台APP的唯一标识，在小程序后台申请小程序账号后，微信会自动分配对应的appid，用于标识该应用。可在小程序-->设置-->开发设置中查看。 |
| 微信支付商户号 | mch_id    | 商户申请微信支付后，由微信支付分配的商户收款账号。           |
| API密钥        | key       | 交易过程生成签名的密钥，仅保留在商户系统和微信支付后台，不会在网络中传播。商户妥善保管该Key，切勿在网络中传输，不能在其他客户端中存储，保证key不会被泄漏。商户可根据邮件提示登录微信商户平台进行设置。也可按一下路径设置：微信商户平台(pay.weixin.qq.com)-->账户设置-->API安全-->密钥设置 |
| Appsecret      | secret    | AppSecret是APPID对应的接口密码，用于获取接口调用凭证时使用。 |



## 5 开发框架

### wepy 小程序开发框架

#### 5.1 文档

2.0 https://wepyjs.github.io/wepy-docs/2.x/#/

#### 5.2 安装

