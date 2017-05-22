<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/17 0017
  Time: 23:06
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="building">
    <title>buildHumor</title>
</head>

<body>
<div class="container">
    <div class="margin-top margin-bottom">
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-plus"></span></button>
        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#myModal"><span class="glyphicon glyphicon-book"></span></button>
    </div>
    <div class="one-row">
        <div class="left-nav">
            <ul class="nav-wrapper">
                <li class="nav-year">2017</li>
                <li class="nav-month">
                    <div class="detail-data">
                        <div class="done">12个</div>
                        <div class="undone">2个</div>
                    </div>
                    <div class="month-sec">
                        5月
                    </div>
                </li>
                <li class="nav-month">
                    <div class="detail-data">
                        <div class="done">5个</div>
                        <div class="undone">1个</div>
                    </div>
                    <div class="month-sec">
                        4月
                    </div>
                </li>
                <li class="nav-month">
                    <div class="detail-data">
                        <div class="done">3个</div>
                        <div class="undone">0个</div>
                    </div>
                    <div class="month-sec">
                        3月
                    </div>
                </li>
            </ul>
        </div>
        <div class="right-content">
            <div class="content" id="jockContent">
                <div class="content-list date-brief">
                    <span class="emphasis">06</span>/<span class="fade-brief">05</span>
                </div>
                %{--<div class="content-list">--}%
                    %{--<div class="tool-box">--}%
                        %{--<button class="btn btn-default">完成</button>--}%
                        %{--<button class="btn btn-danger">删除</button>--}%
                    %{--</div>--}%
                    %{--<div class="content-text">小飞告诉我，他要离职了，有更好的公司更好的待遇，大家都很羡慕，然后就跟我说，你只是看到有些人表面上风光无限，却不知道他们在背地里也顺风顺水呀</div>--}%
                %{--</div>--}%
                %{--<div class="content-list">--}%
                    %{--<div class="content-text">事实上生病唯一的好处大概就是，当你被骂你有病啊，这个时候特别坦然</div>--}%
                %{--</div>--}%
                %{--<div class="content-list">--}%
                    %{--<div class="content-text">医生给我把脉的时候皱着眉，我一惊，忙问，医生说我脉象如何？医生瞅了一眼摇摇头说，卖相挺丑的--}%
                    %{--医生给我把脉的时候皱着眉，我一惊，忙问，医生说我脉象如何？医生瞅了一眼摇摇头说，卖相挺丑的</div>--}%
                %{--</div>--}%
            </div>
        </div>
    </div>
</div>
<div class="modal fade" id="myModal" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">发布新段子</h4>
            </div>
            <div class="modal-body">
                <form id="jockForm">
                    <textarea class="form-control" required placeholder="输入一个段子" name="jock" id="jock"></textarea>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                <button type="button" class="btn btn-primary" id="save">保存</button>
            </div>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div><!-- /.modal -->
<script id="entry-template" type="text/x-handlebars-template">
    {{#each jocks}}
        <div class="content-list {{#isTrue isDone 'active'}}{{/isTrue}}" data-id="{{id}}">
            <div class="tool-box">
                {{#if isDone}}
                    <button class="btn btn-danger btn-xs setDone" data-status="1">撤销完成</button>
                {{else}}
                    <button class="btn btn-success btn-xs setDone" data-status="0">完成</button>
                {{/if}}
                <button class="btn btn-danger btn-xs del">删除</button>
            </div>
            <div class="content-text">{{name}}</div>
        </div>
    {{/each}}
</script>
<content tag="footer">
    <asset:javascript src="handlebars-v4.0.8.js"/>
    <asset:javascript src="handlebars-helper.js"/>
    <asset:javascript src="layer/layer.js"/>
    <asset:javascript src="building/buildHumor.js"/>
</content>
</body>
</html>