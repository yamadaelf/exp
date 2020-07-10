function draw(){

    var a1 = new Array('凯露','可可萝','佩可莉姆','莉玛','玉泉美咲','双叶碧','绫濑由加莉','天野铃莓','风宫依里','栗林胡桃','未奏希','士条怜','草野优衣','春咲日和莉');

    var a2 = new Array('宵浜深月','大神美冬','宫坂珠希','远见空花','三角千歌','柏崎栞','野户真阳','上喜忍','仓石惠理子','茜美美','喜屋武香织','美波铃奈','虹村雪','出云宫子','风宫茜里');

    var a3 = new Array('姬塔','莫妮卡·拜斯温特','星野静流','白银纯','安芸真琴','藤堂秋乃','妮侬・朱贝尔','樱井望','佐佐木咲恋','支仓伊绪','柏崎初音','衣之咲璃乃','姬宫真步','柊杏奈');

    $(".pic1 span").html("");
    $(".pic2 span").html("");

    var one = 0;
    var two = 0;
    var three = 0;

    for(var i=1;i<11;i++)
    {
        var x = 1000;
        var y = 0;
        var q = parseInt(Math.random() * (x - y + 1));
        var a = 1;
        var ap = a1;

        if(i==10){
            if(q<=25){
                a = 3;
                ap = a3;
                three++;
            }else{
                a = 2;
                ap = a2;
                two++;
            }
        }else{
            if(q<=180 && q>25){
                a = 2;
                ap = a2;
                two++;
            }else if(q<=25){
                a = 3;
                ap = a3;
                three++;
            }else{
                one++;
            }
        }

        var l = ap.length;
        var girl = parseInt(Math.random()*(l-1));
        var sp = 'images/star'+a+'/'+(girl+1)+'.png';
        $(".p"+i).children('img').attr('src',sp);
        if(a==3){
            var ht = '<img src="'+sp+'">';
            $(".pp3").append(ht);
        }
        $(".p"+i).children('i').text(ap[girl]);
        for(var j=1;j<=a;j++){
            var ht = '<img src="images/st.png" style="width:30px;padding:0;">';
            $(".p"+i).children('span').append(ht);
        }
    }

    var ss = $(".all span").text();
    var s1 = $(".one span").text();
    var s2 = $(".two span").text();
    var s3 = $(".three span").text();
    $(".all span").text(parseInt(ss)+10);
    $(".one span").text(parseInt(s1)+parseInt(one));
    $(".two span").text(parseInt(s2)+parseInt(two));
    $(".three span").text(parseInt(s3)+parseInt(three));

}