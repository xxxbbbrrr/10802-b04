<h1 class="ct">新增商品</h1>

<form action="./api/add_goods.php" method="post" enctype="multipart/form-data">
    <table class="all">
        <tr>
            <td class="tt ct">所屬大分類</td>
            <td class="pp"><select name="main" id="big"></select></td>
        </tr>
        <tr>
            <td class="tt ct">所屬中分類</td>
            <td class="pp"><select name="sub" id="sub"></select></td>
        </tr>
        <tr>
            <td class="tt ct">商品編號</td>
            <td class="pp">完成分類後自動分配</td>
        </tr>
        <tr>
            <td class="tt ct">商品名稱</td>
            <td class="pp"><input type="text" id="name" name="name"></td>
        </tr>
        <tr>
            <td class="tt ct">商品價格</td>
            <td class="pp"><input type="text" id="price" name="price"></td>
        </tr>
        <tr>
            <td class="tt ct">規格</td>
            <td class="pp"><input type="text" id="spec" name="spec"></td>
        </tr>
        <tr>
            <td class="tt ct">庫存量</td>
            <td class="pp"><input type="text" id="qt" name="qt"></td>
        </tr>
        <tr>
            <td class="tt ct">商品圖片</td>
            <td class="pp"><input type="file" id="file" name="file"></td>
        </tr>
        <tr>
            <td class="tt ct">商品介紹</td>
            <td class="pp"><textarea name="intro" id="intro" style="width:300px;height:150px"></textarea></td>
        </tr>
    </table>
    
    <div class="ct">
        <input type="submit" value="新增">
        <input type="reset" value="重置">
        <input type="button" value="返回" onclick="lof('admin.php?do=th')">
    </div>
</form>


<script>

    getMain()

    $("#big").on("change",function(){
        let main=$(this).val()
        getSub(main)
    })

    function getMain(){
        $.get("./api/get_main.php",function(opt){
            $("#big").html(opt)
            let id=$("#big").val()
            getSub(id)
        })
    }

    function getSub(main){
        $.get("./api/get_sub.php",{main},function(opt1){
            $("#sub").html(opt1)
        })
    }



</script>