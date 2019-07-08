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
    }
});
```

### 子标签

```javascript
v-bind
v-if="condition"
v-for="item in list"
v-on:event_name="function_name"
v-model="name" // 双向绑定
```

### 组件

