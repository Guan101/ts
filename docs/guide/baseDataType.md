# 基础类型

**TS 就是 JS 的超集，JS 基础的类型都包含在内**

基础类型：Boolean、Number、String、null、undefined 以及 ES6 的  Symbol 和 ES10 的 BigInt。

- - - 
## 配置环境

`npm install typescript -g`

**运行tsc 文件名**<Br/>

`tsc + 你当前的ts文件名`,会编译出对应的js文件,使用

`node + js文件名`，即可运行查看打印结果


## 字符串类型
字符串使用string定义
```js
let str:string = '123'
let muban:string = `web${str}`
console.log(js,muban)
```

## 数字类型
支持十六进制、十进制、八进制和二进制
```js
let notANumber:number = NaN;//Nan
let num:number = 123;//普通数字
let infinityNumber:number = Infinity;//无穷大
let decimal:number = 6;//十进制
let hex:number = 0xf00d;//十六进制
let binary:number = 0b1010;//二进制
let octal:number = 0o744;//八进制
```

## 布尔类型
注意，使用构造函数 Boolean 创造的对象不是布尔值：
```js
let b:boolean = false
let b:boolean = Boolean(1)
// 以上都是正确的

let createBoolean:boolean = new Boolean(1)
//这样就会报错，因为实际上new Boolean()返回的是一个Boolean对象
// 需要改成
let createBoolean:Boolean = new Boolean(1)
```
## 空值类型
JavaScript 没有空值（Void）的概念，在 TypeScript 中，可以用 void 表示没有任何返回值的函数
```js
function voidFn():void{
    console.log('test void')
}
```
void类型的用法，主要是用在我们不希望调用者关心函数返回值的情况下，比如 **通常的异步回调函数** <br/>

```js
// 函数
function fn(): string {    //规定输出类型
 return '123'
 }
fn()

// void也可以定义undefined 和 null类型
 let u:void = undefined
 let n:void = null
```

## Null和undefined类型
```js
let u:undefined = undefined //定义undefined
let n:null = null//定义null
//但是void 类型是不可以给子类赋值的
```
>void 和 undefined 和 null 最大的区别
与 void 的区别是，undefined 和 null 是所有类型的子类型。也就是说 undefined 类型的变量，可以赋值给 string 类型的变量：

```js
let a:void = undefined
let b:string = '1'

b = a
// 这样把a给b赋值会报错，void类型不可以分给其他类型

let a:undefined = undefined
let b:string = '1'

b = a //这样是没有问题的
```




