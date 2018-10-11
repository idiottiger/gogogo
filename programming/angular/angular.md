# angular

## 1. 常用命令

```shell
npm install -g @angular/cli

//如果是通过代理，可以先设置代理
//npm set proxy=host:port

ng new my-app

//启动
ng serve --open

//新建组件
ng generate component xxx

//新建服务
ng generate service xxx
```

## 2. 概念

- 组件：```app/app.component.[css/html/ts]```

- 管道：一些常用的转换、格式化，比如：```uppercase```

- 双向绑定：```[(ngModel)]```，需要在  ```app.module.ts``` 中引入

- 重复器：```NgForof```，使用：

  ```javascript
  <div *ngFor="let xx of xxlist"></div>
  ```

- 事件绑定：```(click)="handleClick(item)"``` 事件处理方法需要在相应 module 的 ts 文件中

- 条件判断：```*ngIf```

- Observable：异步方法

- 路由

- 模块：modules NgModule 为一个组件集声明了编译的上下文环境，它专注于某个应用领域、某个工作流或一组紧密相关的能力。 NgModule 可以将其组件和一组相关代码（如服务）关联起来，形成功能单元。

## 3. 资料：

>架构：https://angular.cn/guide/architecture

![overview](https://angular.cn/generated/images/guide/architecture/overview2.png)



