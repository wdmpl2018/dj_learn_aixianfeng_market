$(function() {
    $("#all_types").click(function (){
        console.log("aaa1111");

        var $all_types_container = $("#all_types_container");
        $all_types_container.show();

        var $all_type=$(this);

        var $span = $all_type.find('span').find('span');

        $span.removeClass('glyphicon-chevron-down').addClass("glyphicon-chevron-up");
    })

    $("#all_types_container").click(function () {
        
        var $all_types_container = $(this)

        $all_types_container.hide();

        var $all_type=$("#all_types");

        var $span = $all_type.find('span').find('span');

        $span.removeClass('glyphicon-chevron-up').addClass("glyphicon-chevron-down");
    })

    $("#sort_rule").click(function (){

        console.log('排序');
        var $sort_rule_container = $('#sort_rule_container');

        $sort_rule_container.slideDown();

        var $sort_rule = $(this);
        var $span = $sort_rule.find("span").find("span");

        $span.removeClass('glyphicon-chevron-down').addClass('glyphicon-chevron-up');

    })

    $("#sort_rule_container").click(function (){

        var $sort_rule_container = $(this);
        $sort_rule_container.slideUp();

        var $sort_rule = $("#sort_rule");
        var $span = $sort_rule.find("span").find("span");

        $span.removeClass('glyphicon-chevron-up').addClass('glyphicon-chevron-down');

    })

    $(".subShopping").click(function () {
            console.log('sub');

    })

    $(".addShopping").click(function () {
            console.log('add');

            var $add = $(this);

            //获取标签属性，区别是前者能获取包含自定义的所有属性的值
            //而prop只能获取内置的属性的值
            console.log($add.attr('goodsid'));
            console.log($add.prop('goodsid'));

            var goodsid = $add.attr('goodsid');
            $.get('/axf/addtocart/', {'goodsid': goodsid}, function (data) {
                 console.log(data);

                 if (data['status'] == 302 | data['status'] == 301 ) {
                     window.open('/axf/login/', target="_self");
                 } else if (data['status'] == 200) {
                     $add.prev('span').html(data['c_goods_num']);
                 }
            })
    })
})