//确认并做下载文件
function downloadWithId(title, url, selectedId) {
    var _selectedId = arguments[2] || "selectedId";
    var id = $(_selectedId, getCurrentType()).val();
    if (!id) {
        alertMsg.warn("请先选择一条数据！");
        return false;
    }

    alertMsg.confirm(title, {
        okCall: function () {
            $(window.parent.document).find("#output_iframe").attr("src", url + "?id=" + id);
        }
    });
    return false;
}

function down(title, url) {
    alertMsg.confirm(title, {
        okCall: function () {
            $(window.parent.document).find("#output_iframe").attr("src", url);
        }
    });

    return false;
}

function genPdfMulti(title, url) {
    var selected = [];
    var $checkboxLi = $(":checkbox[name='ids']", getCurrentType());
    $checkboxLi.each(function () {
        if ($(this).attr("checked") == "checked") {
            selected.push($(this).attr("value"));
        }
    });

    if (selected.length == 0) {
        alertMsg.warn("至少选择一条数据");
        return false;
    }

    alertMsg.confirm(title, {
        okCall: function () {
            $(window.parent.document).find("#gen_pdf").attr("src", url + "?ids=" + selected.join(","));
            //setTimeout(reload, 5000);
        }
    });

    return false;
}

function reload() {

    navTabSearch($("#pagerForm", getCurrentType()));
    return false;
}

//确认并做操作,传一个id参数。
function ajaxDoWithId(title, url, selectedId,callback) {
    var _selectedId = arguments[2] || "selectedId";
    var id = $("#" + _selectedId, getCurrentType()).val();
    if (!id) {
        alertMsg.warn("请先选择一条数据！");
        return false;
    }
    if(url.indexOf("?")<0){
        url += "?id=" + id;
    }else{
        url+="&id="+id;
    }
    alertMsg.confirm(title, {
        okCall: function () {
            $.ajax({
                type: 'POST',
                url: url,
                data: { id: id, title: title },
                dataType: "json",
                cache: false,
                success: function (json) {
                    DWZ.ajaxDone(json);
                    if(callback){
                        callback(json);
                    }else{
                        reload();
                    }
                },
                error: DWZ.ajaxError
            });
        }
    });
    return false;
}

function ajaxDo(title, url) {
    alertMsg.confirm(title, {
        okCall: function () {
            $.ajax({
                type: 'POST',
                url: url,
                data: {title: title },
                dataType: "json",
                cache: false,
                success: function (json) {
                    DWZ.ajaxDone(json);
                    reload();
                },
                error: DWZ.ajaxError
            });
        }
    });
    return false;
}

//确认并做操作,传多个id参数。
function ajaxDoMulti(title, url) {
    var selected = [];
    var $checkboxLi = $(":checkbox[name='ids']", getCurrentType());
    $checkboxLi.each(function () {
        if ($(this).attr("checked") == "checked") {
            selected.push($(this).attr("value"));
        }
    });


    if (selected.length == 0) {
        alertMsg.warn("至少选择一条数据");
        return false;
    }

    alertMsg.confirm(title, {
        okCall: function () {

            $.ajax({
                type: 'POST',
                url: url,
                data: { ids: selected.join(",") },
                dataType: "json",
                cache: false,
                success: function (json) {
                    reload();
                },
                success: DWZ.ajaxDone,
                error: DWZ.ajaxError
            });
        }
    });
    return false;
}

function openDialog(title, url, width, height, selectedId,hid) {
    if (selectedId) {
        var id = $("#" + selectedId, getCurrentType()).val();
        if(!id){
            id=0;
        }
        if(url.indexOf("?")<0){
            url += "?id=" + id;
        }else{
            url+="&id="+id;
        }
    }
    $.pdialog.open(url, urlToRel(url), title, { width: width, height: height, mask: true,hid:hid });
}

//传一个id参数,打开一个窗口。
function openDialogWithId(title, url, width, height, selectedId,hid) {
    var _selectedId = arguments[4] || "selectedId";
    var id = $("#" + _selectedId, getCurrentType()).val();
    if (!id) {
        alertMsg.error("请先选择一条数据！");
        return false;
    }
    if(url.indexOf("?")<0){
        url += "?id=" + id;
    }else{
        url+="&id="+id;
    }
    $.pdialog.open(url, urlToRel(url), title, { width: width, height: height, mask: true,hid:hid });

    return false;
}

//传多个id参数,打开一个窗口。
function openDialogMulti(title, url, width, height) {
    var selected = [];
    var $checkboxLi = $(":checkbox[name='ids']", getCurrentType());
    $checkboxLi.each(function () {
        if ($(this).attr("checked") == "checked") {
            selected.push($(this).attr("value"));
        }
    });

    if (selected.length == 0) {
        alertMsg.warn("至少选择一条数据");
        return false;
    }
    $.pdialog.open(url + "?ids=" + selected.join(","), urlToRel(url), title, { width: width, height: height, mask: true });

    return false;
}

//传一个id参数,打开一个NavTab。
function openNavTabWithId(title, url, rel, selectedId) {
    var _selectedId = arguments[3] || "selectedId";
    var id = $(_selectedId, getCurrentType()).val();
    if (!id) {
        alertMsg.error("请先选择一条数据！");
        return false;
    }

    if (id.indexOf("_") >= 0) //uid当中包括id和标题信息
    {
        var arr = id.split("_");
        id = arr[0];
        title = arr[1];
        rel = arr[1];
    }

    navTab.openTab(rel, url + "?id=" + id, { title: title, fresh: false });

    return false;
}

function urlToRel(url) {
    if (!url) {
        return "";
    }

    var paramIndex = url.indexOf("?");
    if (paramIndex > 0) { //先把？后面的参数去掉
        url = url.substr(0, paramIndex);
    }

    url = url.toUpperCase(); //先全部转为大写
    var arr = url.split("/");
    var rel = arr.join("_");

    if (rel.indexOf("_") == 0) {
        rel = rel.substr(1, rel.length);
    }

    return rel;
}

function getCurrentType(){
    var dialog = $.pdialog.getCurrent();
    if(dialog){
        if(dialog.css("display")=="none"){
            return navTab.getCurrentPanel();
        }
        else{
            return $.pdialog.getCurrent();
        }
    }else{
        return navTab.getCurrentPanel();
    }
}