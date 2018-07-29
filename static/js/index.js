var app = new Vue({
    el: '#app',
    data: {
        is_photo_front: true,  // 控制海报是否正面朝上
        works: [],
    },
    mounted: function(){
        this.get_works();
    },
    methods: {
        turn: function() {  // 翻转函数
            this.is_photo_front = this.is_photo_front?false:true;
            console.log(this.is_photo_front);
        },
        get_works: function() { // 从服务器获取作品集数据, http://dev.feihu1996.cn/works/
            var _this = this;
            this.$http.get('http://dev.feihu1996.cn/works/', {
                params:{

                },
                header: {
                    
                }
            }).then(function(res){
                _this.works = res;
                console.log(res);
            }, function(error){
                console.log(error);
            });
        },
    }
});
