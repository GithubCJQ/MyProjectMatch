var vm = new Vue({
    el: '#container',
    data : {
        formInline: {
            username: '',
            password: ''
        },
        formInline2: {
            username: '',
            password: ''
        },
        ruleInline: {
            username: [
                { required: true, message: '请输入用户名', trigger: 'blur' }
            ],
            password: [
                { required: true, message: '请输入密码', trigger: 'blur' },
                { type: 'string', min: 6, message: 'The password length cannot be less than 6 bits', trigger: 'blur' }
            ]
        },
        ruleInline2: {
            username2: [
                { required: true, message: '请输入用户名', trigger: 'blur' }
            ],
            password2: [
                { required: true, message: '请输入密码', trigger: 'blur' },
                { type: 'string', min: 6, message: 'The password length cannot be less than 6 bits', trigger: 'blur' }
            ]
        },

    },
    mounted: function () {
    },
    methods:{
        login:function(){
            $.ajax({
                type: 'GET',
                url: "user/login",
                //contentType : "application/json;charset=UTF-8",
                data:{
                    username:vm.formInline.username,
                    password:vm.formInline.password
                },
                dataType:"json",
                success: function (data) {
                    //alert(data.password);
                    window.location.href = "user/test"
                },
                error: function(XMLHttpRequest, textStatus, errorThrown) {
                    alert("用户名密码错误");
                }
            })
        },
        login2:function(){

        },
        sigin:function(){

        },
        sigin2:function(){

        }
    }
})