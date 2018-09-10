//install typescript
//npm install -g typescript

//basic type
let var_name : boolean = true;
let int_num : number = 10.02;
let string_var : string = 'hello type script';

let string_2 : string = `hello ${string_var}`;

let array_var : number[] = [1, 2, 3];
let array_var_2 : Array<number> = [3,2];

//enum
enum Color {Red=0, Black, Blue};

let color_var : Color = Color.Black;
let color_name : string = Color[2];

//any type
let any_var : any = 'hello any';
any_var = true;

let any_array : any[] = ['helo', 1, false];

//By default null and undefined are subtypes of all other types. That means you can assign null and undefined to something like number.
let var_null_number : number = null;