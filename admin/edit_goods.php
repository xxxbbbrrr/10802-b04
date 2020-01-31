<h1 class="ct">修改商品</h1>

<?php
    $row=find("goods",$_GET["id"]);
?>

<form action="./api/edit_goods.php" method="post" enctype="multipart/form-data">
    <table class="all">
        <tr>
            <td class="tt ct">所屬大分類</td>
            <td class="pp">
                <select name="main" id="big">
                <?php
                    $main=all("type",['parent'=>0]);
                    foreach($main as $m){
                        $sel=($m['id']==$row['main'])?"selected":"";
                        echo "<option value='".$m['id']."' $sel>".$m['text']."</option>";
                    }
                ?>
                </select></td>
        </tr>
        <tr>
            <td class="tt ct">所屬中分類</td>
            <td class="pp">
                <select name="sub" id="sub">
                <?php
                    $sub=all("type",['parent'=>$row['main']]);
                    foreach($sub as $s){
                        $sel=($m['id']==$row['sub'])?"selected":"";
                        echo "<option value='".$s['id']."'$sel>".$s['text']."</option>";
                    }
                ?>
                </select></td>
        </tr>
        <tr>
            <td class="tt ct">商品編號</td>
            <td class="pp">完成分類後自動分配</td>
        </tr>
        <tr>
            <td class="tt ct">商品名稱</td>
            <td class="pp"><input type="text" value="<?=$row['name'];?>" name="name"></td>
        </tr>
        <tr>
            <td class="tt ct">商品價格</td>
            <td class="pp"><input type="text" value="<?=$row['price'];?>" name="price"></td>
        </tr>
        <tr>
            <td class="tt ct">規格</td>
            <td class="pp"><input type="text" value="<?=$row['spec'];?>" name="spec"></td>
        </tr>
        <tr>
            <td class="tt ct">庫存量</td>
            <td class="pp"><input type="text" value="<?=$row['qt'];?>" name="qt"></td>
        </tr>
        <tr>
            <td class="tt ct">商品圖片</td>
            <td class="pp"><input type="file" name="file"></td>
        </tr>
        <tr>
            <td class="tt ct">商品介紹</td>
            <td class="pp"><textarea name="intro" style="width:300px;height:150px"><?=$row['intro'];?></textarea></td>
        </tr>
    </table>
    
    <div class="ct">
                    <input type="hidden" name="id" value="<?=$row['id'];?>">
        <input type="submit" value="修改">
        <input type="reset" value="重置">
        <input type="button" value="返回" onclick="lof('admin.php?do=th')">
    </div>
</form>


<script>


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