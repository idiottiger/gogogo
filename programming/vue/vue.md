# vue 笔记
## 基础语法

###  vue 对象

```javascript
var vueObject = new Vue({
 	el: '#name_vue',  //标签名字
    data: {
    	prop_1: value_1,
    	prop_2: value_2,
    	...
	},
  methods: {
        method: function(){
            //
        }
    },
  //计算属性 vs 方法
  //计算属性有缓存，值发生改变以后才会执行，而方法只要渲染就会执行
	computed:{
    method: function(){
      
    }
  }  
});

//实例属性
vueObject.$data
vueObject.$el
vueObject.$watch
```

### vue 对象生命周期

```javascript
beforeCreate - created - beforeMount - mounted - beforeUpdate - updated - beforeDestroy - detroyed
```

![lifecycle](https://cn.vuejs.org/images/lifecycle.png)

### 子标签

```javascript
v-bind
v-if="condition"
v-for="item in list"
v-on:event_name="function_name"
v-model="name" // 双向绑定
v-once //只更新一次
```

### 组件

```javas
//定义 
Vue.component(
	'comp-name',
	{
		props:[prop_list, ... ],
		template: 'content'
	}
)

//使用
<template-name v-bind:$prop_name="..." v-bind:key="" />
```



