<!-- "back/add_item.php"複製過來改的 -->
<h2 class="ct">修改商品</h2>
<form action="./api/save_item.php" method="post" enctype="multipart/form-data">
    <table class="all">
        <tr>
            <td class="tt ct">所屬大分類</td>
            <td class="pp">
                <select name="big" id="big"></select>
            </td>
        </tr>
        <tr>
            <td class="tt ct">所屬中分類</td>
            <td class="pp">
                <select name="mid" id="mid"></select>
            </td>
        </tr>
        <tr>
            <td class="tt ct">商品編號</td>
            <td class="pp">完成分類後自動分配</td>
        </tr>
        <tr>
            <td class="tt ct">商品名稱</td>
            <td class="pp"><input type="text" name="name" id="name"></td>
        </tr>
        <tr>
            <td class="tt ct">商品價格</td>
            <td class="pp"><input type="text" name="price" id="price"></td>
        </tr>
        <tr>
            <td class="tt ct">規格</td>
            <td class="pp"><input type="text" name="spec" id="spec"></td>
        </tr>
        <tr>
            <td class="tt ct">庫存量</td>
            <td class="pp"><input type="text" name="stock" id="stock"></td>
        </tr>
        <tr>
            <td class="tt ct">商品圖片</td>
            <td class="pp"><input type="file" name="img" id="img"></td>
        </tr>
        <tr>
            <td class="tt ct">商品介紹</td>
            <td class="pp"><textarea name="intro" id="intro" style="width: 75%; height:150px;"></textarea></td>
        </tr>
    </table>
    <div class="ct">
        <input type="hidden" name="id" value="<?=$item['id'];?>">
        <input type="submit" value="修改">
        <input type="reset" value="重置">
        <input type="button" value="返回" onclick="location.href='?do=th'">
    </div>
</form>
<script>
    getBigs();

    function getBigs(){ 
        $.get("./api/get_bigs.php", (bigs)=>{
            $("#big").html(bigs);
            <?php
            if(isset($_GET['id'])){
                echo "$('#big option[value={$item['big']}]').prop('selected', true)";
            }
            ?>;
            getMids();
        });
    }
    function getMids(){
        let bigId=$("#big").val();
        $.get("./api/get_mids.php", {bigId},(mids)=>{
            $("#mid").html(mids);
            <?php
            if(isset($_GET['id'])){
                echo "$('#mid option[value={$item['mid']}]').prop('selected', true)";
            }
            ?>;
        });
    }
    $("#big").on("change",()=>{
        getMids();
    });
</script>