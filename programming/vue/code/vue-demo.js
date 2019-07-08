var app = new Vue({
    el: '#vueApp',
    data: {
        message: 'hello vue world'
    }
});

var spanApp = new Vue({
    el: '#spanApp',
    data: {
        message: 'page loaded on: ' + new Date().toLocaleString(),
        showName: true,
        todoList: [
            { name: 'check the name', id: 1 },
            { name: 'check the pwd', id: 2 },
            { name: 'check the money', id: 3 }
        ],
        inputContent: "default"
    },
    methods: {
        sayHello: function () {
            alert("hello");
        }
    },
    computed: {
        contentComputed: function(){
            return this.inputContent.split('').reverse().join('');
        }
    }
});

Vue.component(
    'todo-item', {
        props: ['todo'],
        template: '<li>{{todo.text}}</li>'
    }
);

var toDoItemApp = new Vue({
    el: '#toDoItem',
    data: {
        itemList: [
            { id: 0, text: 'test 1' },
            { id: 1, text: 'test 2' },
            { id: 2, text: 'test 3' }
        ]
    }
});