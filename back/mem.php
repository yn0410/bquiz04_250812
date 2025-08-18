<h2 class="ct">會員管理</h2>
<table class="all">
    <tr class="tt ct">
        <td>姓名</td>
        <td>會員帳號</td>
        <td>註冊日期</td>
        <td>操作</td>
    </tr>
    <?php
    $mems=$User->all();
    foreach($mems as $mem):
    ?>
    <tr class="pp ct">
        <td><?=$mem['name'];?></td>
        <td><?=$mem['acc'];?></td>
        <td><?=$mem['regdate'];?></td>
        <td>
            <button class="edit-btn" data-id="<?=$mem['id'];?>">修改</button>
            <button class="del-btn" data-id="<?=$mem['id'];?>">刪除</button>
        </td>
    </tr>
    <?php
    endforeach;
    ?>
</table>