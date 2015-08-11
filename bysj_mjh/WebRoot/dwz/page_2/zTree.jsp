<!DOCTYPE html>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="/themes/css/zTreeStyle.css" type="text/css">
    <script type="text/javascript" src="/js/jquery.ztree.core-3.5.js"></script>
    <script type="text/javascript">
        var zTreeObj,
                setting = {
                    view: {
                        selectedMulti: false
                    }
                },
                zNodes =
                        [
                            {"name":"针织机"},
                            {"name": "针织机械", open: true,
                                children: [
//                                    { "name": "袜机", open: false,
//                                        children: [
//                                            {"name": "love"},
//                                            {"name": "tqq"}
//                                        ]},
                                    { "name": "袜机"},
                                    { "name": "无缝系列"},
                                    { "name": "大圆机"}]

                            },
                            {"name": "挖掘机", open: true,   //父节点
                                children: [
//                                    { "name": "袜机", open: false,
//                                        children: [
//                                            {"name": "love"},
//                                            {"name": "tqq"}
//                                        ]},
                                    { "name": "重型挖机"}]
                            },
                            {"name":"汽车"}

                        ];
        $(document).ready(function () {
            zTreeObj = $.fn.zTree.init($("#tree4"), setting, zNodes);

        });

        $(document).ready(function () {
            $("#input2").click(function () {
                $("#div4").slideToggle(300);
            });
        });
    </script>
    <script type="text/javascript">
        var zTreeObj,
                setting = {
                    view: {
                        selectedMulti: false
                    }
                },
                zNodes =
                        [

                            {"name": "网站导航2", open: true,   //父节点
                                children: [
                                    { "name": "mjh", open: false,
                                        children: [
                                            {"name": "love"},
                                            {"name": "tqq"}
                                        ]},
                                    { "name": "still"},
                                    { "name": "love"},
                                    { "name": "you", open: false,
                                        children: [
                                            {"name": "love"},
                                            {"name": "forever", open: true,
                                                children: [
                                                    {"name": "exist"}
                                                ]}
                                        ]}
                                ]
                            }

                        ];
        $(document).ready(function () {
            zTreeObj = $.fn.zTree.init($("#tree3"), setting, zNodes);

        });

        $(document).ready(function () {
            $("#select").click(function () {
                $("#div3").slideToggle(300);
            });
        });
    </script>
    <script type="text/javascript">
        var zTreeObj,
                setting = {
                    view: {
                        selectedMulti: false
                    }
                },
                zNodes =
                        [
                            {"name": "网站导航1", open: true,    //父节点
                                children: [
                                    { "name": "google", "url": "http://g.cn", "target": "_blank"},
                                    { "name": "baidu", "url": "http://baidu.com", "target": "_blank"},
                                    { "name": "sina", "url": "http://www.sina.com.cn", "target": "_blank"}
                                ]
                            },
                            {"name": "网站导航2", open: true,   //父节点
                                children: [
                                    { "name": "mjh", open: false,
                                        children: [
                                            {"name": "love"},
                                            {"name": "tqq"}
                                        ]},
                                    { "name": "still"},
                                    { "name": "love"},
                                    { "name": "you", open: false,
                                        children: [
                                            {"name": "love"},
                                            {"name": "forever", open: true,
                                                children: [
                                                    {"name": "exist"}
                                                ]}
                                        ]}
                                ]
                            }

                        ];
        $(document).ready(function () {
            zTreeObj = $.fn.zTree.init($("#tree2"), setting, zNodes);



        });

        $(document).ready(function () {
            $("#button").click(function () {
                $("#div2").fadeToggle(300);
            });
        });
    </script>
    <script type="text/javascript">
        var zTreeObj,
                setting = {
                    view: {
                        selectedMulti: false
                    }
                },
                zNodes =
                        [
                            {"name": "网站导航1", open: true,    //父节点
                                children: [
                                    { "name": "google", "url": "http://g.cn", "target": "_blank"},
                                    { "name": "baidu", "url": "http://baidu.com", "target": "_blank"},
                                    { "name": "sina", "url": "http://www.sina.com.cn", "target": "_blank"}
                                ]
                            },
                            {"name": "网站导航2", open: true,   //父节点
                                children: [
                                    { "name": "mjh", open: false,
                                        children: [
                                            {"name": "love"},
                                            {"name": "tqq"}
                                        ]},
                                    { "name": "still"},
                                    { "name": "love"},
                                    { "name": "you", open: false,
                                        children: [
                                            {"name": "love"},
                                            {"name": "forever", open: true,
                                                children: [
                                                    {"name": "exist"}
                                                ]}
                                        ]}
                                ]
                            }

                        ];
        $(document).ready(function () {
            zTreeObj = $.fn.zTree.init($("#tree"), setting, zNodes);
            $("#tree_10_span").click(function(){
                alert("love!");
            });
        });

        $(document).ready(function () {
            $("#input").click(function () {
                $("#div").slideToggle(300);
            });
        });
    </script>
</head>
<body>
<div style="float:left;width:190px;height:280px;">
<input type="text" id="input" size="27" style="" value="请点我">
<div id="div" style="width:174px;height:250px;z-index: 10;overflow:auto;background-color:#f5f5f5;border:1px solid #B8D0D6;border-top-width:0px;">
<ul id="tree" class="ztree" style="width:160px; overflow:auto;">
</ul>
</div>
</div>
<div style="float:left;width:190px;height:280px;">
    <button id="button">请点我</button>
    <div id="div2" style="display:none;width:175px;height:246px;z-index: 10;overflow:auto;background-color:#ffffff;border:1px solid #B8D0D6;">
        <ul id="tree2" class="ztree" style="width:160px; overflow:auto;">
        </ul>
    </div>
</div>
<div style="float:left;width:190px;height:280px;">
    <input id="select" value="可传参数" style="cursor:default;"size="23">
    <div id="div3" style="display:none;width:175px;height:246px;z-index: 10;overflow:auto;background-color:#ffffff;border:1px solid #B8D0D6;">
        <ul id="tree3" class="ztree" style="width:160px; overflow:auto;">
        </ul>
    </div>
</div>
<div style="float:left;width:190px;height:280px;">
    <input id="input2" value="这是一个demo，直接拿来改" style=""size="23">
    <div id="div4" style="display:none;width:175px;height:246px;z-index: 10;overflow:auto;background-color:#f5f5f5;border:1px solid #B8D0D6;">
        <ul id="tree4" class="ztree" style="width:160px; overflow:auto;">
        </ul>
    </div>
</div>
<script type="text/javascript">
    $(function(){
        $("#tree3 li a").click(function(){
            $("#select").val($(this).text());
        });
        $("#tree4 li a").click(function(){
           $("#input2").val($(this).text());
        });
    });

</script>
</body>
</html>