<h1 class="ct">會員管理</h1>
<table class="all">
    <tr class="tt">
        <td class="ct">姓名</td>
        <td class="ct">會員帳號</td>
        <td class="ct">註冊日期</td>
        <td class="ct">操作</td>
    </tr>
    <?php
    $rows=all("member");
    foreach($rows as $r){
    ?>
    <tr class="pp">
        <td class="ct"><?=$r['name'];?></td>
        <td class="ct"><?=$r['acc'];?></td>
        <td class="ct"><?=$r['regdate'];?></td>
        <td class="ct">
          <button onclick="lof('admin.php?do=edit_mem&id=<?=$r['id'];?>')">修改</button>
          <button onclick="del('member',<?=$r['id'];?>)">刪除</button>        
        </td>
    </tr>
    <?php
    }
    ?>
</table>
<div class="ct"><button onclick="lof('index.php')">返回</button></div>
