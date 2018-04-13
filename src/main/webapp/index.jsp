<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8">
    <meta name="renderer" content="webkit" />
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=EDGE">
    <meta name="viewport" content="initial-scale=1,maximum-scale=1,user-scalable=no" />

    <script src="static/js/jquery-1.10.2.min.js"></script>
    <%--<link rel="stylesheet" type="text/css" href="http://unpkg.com/iview/dist/styles/iview.css">--%>
    <script type="text/javascript" src="static/js/vue.js"></script>
    <script type="text/javascript" src="static/js/iview-min.js"></script>
    <link rel="stylesheet" type="text/css" href="static/css/iview.css">

    <style>
        body {
            margin: 0px;
            height: 0px;
        }
        .header {
            padding-left: 50px;
            font-size: 32px;
            padding-top: 30px;
            height: 120px;
            width: 100%;
            border-bottom: 1px solid #999;
        }
        .main {
            margin-top: 20px;
            margin-left: 40%;
            width: 350px;
        }
        .btn-1 {
            margin-right: 234px;
        }
        /*#container {*/
            /*height: -webkit-fill-available;*/
            /*background-image: url("/static/images/timg.jpg");*/
            /*background-repeat: no-repeat;*/
        /*}*/
    </style>
    <title>登陆注册</title>
</head>
<body>
<div>
    <div class="header">启航号人才-项目匹配系统</div>
    <div id="container"  class="main">
        <Tabs>
            <tab-pane label="我是人才">
                <i-form ref="formInline" :model="formInline" :rules="ruleInline">
                    <form-item prop="username">
                        <i-input type="text" v-model="formInline.username" placeholder="Username">
                            <Icon type="ios-person-outline" slot="prepend"></Icon>
                        </i-input>
                    </form-item>
                    <form-item prop="password">
                        <i-input type="password" v-model="formInline.password" placeholder="Password">
                            <Icon type="ios-locked-outline" slot="prepend"></Icon>
                        </i-input>
                    </form-item>
                    <form-item>
                        <i-button class="btn-1" type="primary" @click="login()">登陆</i-button>
                        <i-button type="primary" @click="sigin()">注册</i-button>
                    </form-item>
                </i-form>
            </tab-pane>
            <tab-pane label="我是雇主">
                <i-form ref="formInline" :model="formInline2" :rules="ruleInline2">
                    <form-item prop="username2">
                        <i-input type="text" v-model="formInline2.username" placeholder="Username">
                            <Icon type="ios-person-outline" slot="prepend"></Icon>
                        </i-input>
                    </form-item>
                    <form-item prop="password2">
                        <i-input type="password" v-model="formInline2.password" placeholder="Password">
                            <Icon type="ios-locked-outline" slot="prepend"></Icon>
                        </i-input>
                    </form-item>
                    <form-item>
                        <i-button class="btn-1" type="primary" @click="login2()">登陆</i-button>
                        <i-button type="primary" @click="sigin2()">注册</i-button>
                    </form-item>
                </i-form>
            </tab-pane>
        </Tabs>
    </div>
</div>
<script src="static/js/myjs/index.js"></script>
</body>
</html>
