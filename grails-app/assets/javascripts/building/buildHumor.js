$(function () {
    var jockTmpl = Handlebars.compile($("#entry-template").html());
    $('#save').click(function () {
        if($('#jockForm').valid()) {
            $.post(
                '/jock/addJock',
                {jock: $('#jock').val()},
                function (d) {
                    if(d.status=='success') {
                        $('#jock').val('');
                        $('#myModal').modal('hide');
                        window.location.reload();
                    }else{
                        alert('新增失败')
                    }
                }
            )
        }
    });
    $('#jockContent').on('click', '.del', function () {
        var $row = $(this).parents('.content-list');
        var id = $row.data('id');
        layer.confirm('是否删除？', function(index){
            $.get(
                '/jock/delJock',
                {id: id},
                function (d) {
                    if(d.status=='success') {
                        $row.remove()
                    }else{
                        layer.alert('删除失败')
                    }
                    layer.close(index)
                }
            )
        });
    });
    $('#jockContent').on('click', '.setDone', function () {
        var $setDone = $(this);
        var status = $setDone.data('status');
        var $row = $(this).parents('.content-list');
        var id = $row.data('id');
        $.get(
            '/jock/setDone',
            {id: id, status: status},
            function (d) {
                if(d.status=='success') {
                    if(status=='1') {
                        $row.removeClass('active');
                        $setDone.replaceWith('<button class="btn btn-success btn-xs setDone" data-status="0">完成</button>')
                    }else{
                        $row.addClass('active');
                        $setDone.replaceWith('<button class="btn btn-danger btn-xs setDone" data-status="1">撤销完成</button>')
                    }
                }else{
                    layer.alert('设置失败')
                }
            }
        )
    });
    $.get(
        '/jock/list',
        function (d) {
            $('#jockContent').html(jockTmpl({jocks: d}))
        }
    )
});