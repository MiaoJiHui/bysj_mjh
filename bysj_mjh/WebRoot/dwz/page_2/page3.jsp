<!DOCTYPE html>
<html>
<head>
    <title></title>
    <style type="text/css">
        .formTable th{
            width:122px;
            height:22px;
            line-height: 22px;;
        }
        .formTable td{
            height:22px;
            line-height: 22px;
            width:200px;
        }
        .changeColor {
            border-color: #B8D0D6;
            background: none repeat scroll 0% 0% #7CC5E5;
        }

    </style>
    <script type="text/javascript">
        $(document).ready(function(){
           $(".tr1").click(function(){
              $(".gridTbody tr").each(function(){
                  $(this).removeClass("changeColor");
              });
               $(this).addClass("changeColor");
           }) ;
//            $("#test").dblclick(function(){
//                alert(1);
//            });
        });
    </script>
</head>
<body>
   <table class="formTable" style="width:100%;background-color:#fff;">
       <tbody>
          <tr>
              <th>
                  租约：
              </th>
              <td id="test">PA003</td>
              <th>
                  采购编号：
              </th>
              <td>
                  PO-0004
              </td>
              <th>计划交付日期：</th>
              <td>2014-08-19</td>
          </tr>
          <tr>
              <th>
                  交易货币：
              </th>
              <td>人民币</td>
              <th>
                  汇率：
              </th>
              <td>
                  1.00000000
              </td>
              <th>增值税：</th>
              <td>17.00000000%</td>
          </tr>
          <tr>
              <th>供应商：</th>
              <td colspan="5">华为</td>
          </tr>
          <tr style="height:50px;line-height: 50px;">
              <th>支持条款：</th>
              <td colspan="5"></td>
          </tr>
       </tbody>
   </table>
   <div class="pageContent" style="margin-top: 5px; width: 986px;">
       <div class="pageFormContent" style="padding: 0px;height: 310px;">
            <div class="tabs" currentIndex="0" eventType="click" style="margin:4px;">
               <div class="tabsHeader">
                   <div class="tabsHeaderContent">
                       <ul>
                           <li class=""><a href="javascript:;"><span>采购单明细表</span></a></li>
                           <li class=""><a href="javascript:;"><span>收货单明细表</span></a></li>
                           <li class=""><a href="javascript:;"><span>采购发票明细表</span></a></li>
                           <li class=""><a href="javascript:;"><span>采购付款明细表</span></a></li>
                       </ul>
                   </div>
               </div>
               <div class="tabsContent tabsContent2"  style="background-color:white;padding:0px;height:267px;"  >
                   <div class="tab1" style="padding:0px;">
                       <div class="grid" style="height: 253px;">
                           <div class="gridHeader">
                               <div class="gridThead">
                                   <table style="width:937px;">
                                      <thead>
                                       <tr>
                                           <th class="" style="width: 251px; height:20px;cursor: default;">
                                              <div class="gridCol" title="资产">
                                                  资产
                                              </div>
                                           </th>
                                           <th class="" style="width: 67px;height:20px; cursor: default;">
                                               <div class="gridCol" title="数量">
                                                   数量
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="单价">
                                                   单价
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="总价">
                                                   总价
                                               </div>
                                           </th>
                                           <th class="" style="width: 102px;height:20px; cursor: default;">
                                               <div class="gridCol" title="增值税">
                                                   增值税
                                               </div>
                                           </th>
                                           <th class="" style="width: 253px;height:20px; cursor: default;">
                                               <div class="gridCol" title="备注">
                                                   备注
                                               </div>
                                           </th>
                                       </tr>
                                      </thead>
                                   </table>
                               </div>
                           </div>
                           <div class="gridScroller" style="width: 974px; height: 235px; overflow: auto;" layouth="248">
                               <div class="gridTbody">
                                   <table class=""style="width:937px;">
                                       <tr class="tr1 ">
                                           <td style="width:251px;">
                                               <div>
                                                   大圆机
                                               </div>
                                           </td>
                                           <td style="width:67px;">
                                               <div>
                                                   5
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   30,000.00
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   150,000.00
                                               </div>
                                           </td>
                                           <td style="width:102px;">
                                               <div>
                                                   4,358.975
                                               </div>
                                           </td>
                                           <td style="width:253px;">
                                               <div>

                                               </div>
                                           </td>

                                       </tr>
                                   </table>
                               </div>
                           </div>
                   </div>
                       </div>
                   <div class="tab2" >
                       <div class="grid" style="height: 253px;">
                           <div class="gridHeader">
                               <div class="gridThead">
                                   <table style="width:937px;">
                                       <thead>
                                       <tr>
                                           <th class="" style="width: 127px; height:20px;cursor: default;">
                                               <div class="gridCol" title="资产">
                                                   资产
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="编号">
                                                   编号
                                               </div>
                                           </th>
                                           <th class="" style="width: 100px;height:20px; cursor: default;">
                                               <div class="gridCol" title="单价">
                                                   单价
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="序列号">
                                                   序列号
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="制造商序列号">
                                                   制造商序列号
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="生产日期">
                                                   生产日期
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="购入日期">
                                                   购入日期
                                               </div>
                                           </th>
                                       </tr>
                                       </thead>
                                   </table>
                               </div>
                           </div>
                           <div class="gridScroller" style="width: 974px; height: 235px; overflow: auto;" layouth="248">
                               <div class="gridTbody">
                                   <table style="width:937px;">
                                       <tr class="tr1 ">
                                       <td style="width:127px;">
                                           <div>
                                               大圆机
                                           </div>
                                       </td>
                                       <td style="width:127px;text-align: center;">
                                           <div>
                                               ASSET-0027
                                           </div>
                                       </td>
                                       <td style="width:100px;">
                                           <div>
                                               30,000.00
                                           </div>
                                       </td>
                                       <td style="width:127px;">
                                           <div>
                                               P0001
                                           </div>
                                       </td>
                                       <td style="width:127px;">
                                           <div>

                                           </div>
                                       </td>
                                       <td style="width:127px;">
                                           <div>

                                           </div>
                                       </td>
                                       <td style="width:127px;">
                                           <div>

                                           </div>
                                       </td>
                                   </tr>
                                       <tr class="tr1 ">
                                           <td style="width:127px;">
                                               <div>
                                                   大圆机
                                               </div>
                                           </td>
                                           <td style="width:127px;text-align: center;">
                                               <div>
                                                   ASSET-0027
                                               </div>
                                           </td>
                                           <td style="width:100px;">
                                               <div>
                                                   30,000.00
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   P0001
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>

                                       </tr>
                                       <tr class="tr1 ">
                                           <td style="width:127px;">
                                               <div>
                                                   大圆机
                                               </div>
                                           </td>
                                           <td style="width:127px;text-align: center;">
                                               <div>
                                                   ASSET-0027
                                               </div>
                                           </td>
                                           <td style="width:100px;">
                                               <div>
                                                   30,000.00
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   P0001
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                       </tr>
                                       <tr class="tr1 ">
                                           <td style="width:127px;">
                                               <div>
                                                   大圆机
                                               </div>
                                           </td>
                                           <td style="width:127px;text-align: center;">
                                               <div>
                                                   ASSET-0027
                                               </div>
                                           </td>
                                           <td style="width:100px;">
                                               <div>
                                                   30,000.00
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   P0001
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                       </tr>
                                       <tr class="tr1 ">
                                           <td style="width:127px;">
                                               <div>
                                                   大圆机
                                               </div>
                                           </td>
                                           <td style="width:127px;text-align: center;">
                                               <div>
                                                   ASSET-0027
                                               </div>
                                           </td>
                                           <td style="width:100px;">
                                               <div>
                                                   30,000.00
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   P0001
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>

                                               </div>
                                           </td>


                                       </tr>
                                   </table>
                               </div>
                           </div>
                       </div>
                   </div>
                   <div class="tab3">
                   <div class="grid" style="height: 253px;">
                   <div class="gridHeader">
                       <div class="gridThead">
                           <table style="width:937px;">
                               <thead>
                               <tr>
                                   <th class="" style="width: 127px; height:20px;cursor: default;">
                                       <div class="gridCol" title="所属发票">
                                           所属发票
                                       </div>
                                   </th>
                                   <th class="" style="width: 250px;height:20px; cursor: default;">
                                       <div class="gridCol" title="经营项目">
                                           经营项目
                                       </div>
                                   </th>
                                   <th class="" style="width: 127px;height:20px; cursor: default;">
                                       <div class="gridCol" title="金额">
                                           金额
                                       </div>
                                   </th>
                                   <th class="" style="width: 127px;height:20px; cursor: default;">
                                       <div class="gridCol" title="增值税">
                                           增值税
                                       </div>
                                   </th>

                                   <th class="" style="width: 250px;height:20px; cursor: default;">
                                       <div class="gridCol" title="备注">
                                           备注
                                       </div>
                                   </th>
                               </tr>
                               </thead>
                           </table>
                       </div>
                   </div>
                   <div class="gridScroller" style="width: 974px; height: 235px; overflow: auto;" layouth="248">
                       <div class="gridTbody">
                           <table style="width:937px;">
                               <tr class="tr1 ">
                                   <td style="width:127px;text-align: center;">
                                       <div>
                                           PI-0004
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           大圆机(P0001)
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           30,000.00
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           4,358.974
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           备注
                                       </div>
                                   </td>

                               </tr>
                               <tr class="tr1 ">
                                   <td style="width:127px;text-align: center;">
                                       <div>
                                           PI-0004
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           大圆机(P0002)
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           30,000.00
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           4,358.974
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           备注
                                       </div>
                                   </td>

                               </tr>
                               <tr class="tr1 ">
                                   <td style="width:127px;text-align: center;">
                                       <div>
                                           PI-0004
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           大圆机(P0003)
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           30,000.00
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           4,358.974
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           备注
                                       </div>
                                   </td>

                               </tr>
                               <tr class="tr1 ">
                                   <td style="width:127px;text-align: center;">
                                       <div>
                                           PI-0004
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           大圆机(P0004)
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           30,000.00
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           4,358.974
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           备注
                                       </div>
                                   </td>

                               </tr>
                               <tr class="tr1 ">
                                   <td style="width:127px;text-align: center;">
                                       <div>
                                           PI-0004
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           大圆机(P0005)
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           30,000.00
                                       </div>
                                   </td>
                                   <td style="width:127px;">
                                       <div>
                                           4,358.974
                                       </div>
                                   </td>
                                   <td style="width:250px;">
                                       <div>
                                           备注
                                       </div>
                                   </td>

                               </tr>

                           </table>
                       </div>
                   </div>
                   </div>
                   </div>
                   <div class="tab4">
                       <div class="grid" style="height: 253px;">
                           <div class="gridHeader">
                               <div class="gridThead">
                                   <table style="width:937px;">
                                       <thead>
                                       <tr>
                                           <th class="" style="width: 40px; height:20px;cursor: default;">
                                               <div class="gridCol" title="批次">
                                                   批次
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="所属发票">
                                                   所属发票
                                               </div>
                                           </th>
                                           <th class="" style="width: 100px;height:20px; cursor: default;">
                                               <div class="gridCol" title="百分比（%）">
                                                   百分比（%）
                                               </div>
                                           </th>
                                           <th class="" style="width: 127px;height:20px; cursor: default;">
                                               <div class="gridCol" title="应付金额">
                                                   应付金额
                                               </div>
                                           </th>
                                           <th class="" style="width: 110px;height:20px; cursor: default;">
                                               <div class="gridCol" title="已付金额">
                                                   已付金额
                                               </div>
                                           </th>
                                           <th class="" style="width: 110px;height:20px; cursor: default;">
                                               <div class="gridCol" title="未付金额">
                                                   未付金额
                                               </div>
                                           </th>
                                           <th class="" style="width: 110px;height:20px; cursor: default;">
                                               <div class="gridCol" title="付款到期日">
                                                   付款到期日
                                               </div>
                                           </th>
                                           <th class="" style="width: 40px;height:20px; cursor: default;">
                                               <div class="gridCol" title="状态">
                                                   状态
                                               </div>
                                           </th>
                                           <th class="" style="width: 100px;height:20px; cursor: default;">
                                               <div class="gridCol" title="未付金额">
                                                   付款日期
                                               </div>
                                           </th>
                                       </tr>
                                       </thead>
                                   </table>
                               </div>
                           </div>
                           <div class="gridScroller" style="width: 974px; height: 235px; overflow: auto;" layouth="248">
                               <div class="gridTbody">
                                   <table style="width:937px;">
                                       <tr class="tr1 ">
                                           <td style="width:40px;">
                                               <div>
                                                   1
                                               </div>
                                           </td>
                                           <td style="width:127px;text-align: center;">
                                               <div>
                                                   PI-0004
                                               </div>
                                           </td>
                                           <td style="width:100px;text-align: center;">
                                               <div>
                                                   100.0%
                                               </div>
                                           </td>
                                           <td style="width:127px;">
                                               <div>
                                                   150,000.00
                                               </div>
                                           </td>
                                           <td style="width:110px;">
                                               <div>
                                                   00.00
                                               </div>
                                           </td>
                                           <td style="width:110px;">
                                               <div>
                                                   150,000.00
                                               </div>
                                           </td>
                                           <td style="width:110px;text-align: center;">
                                               <div>
                                                   2014-08-20
                                               </div>
                                           </td>
                                           <td style="width:40px;text-align: center;">
                                               <div>
                                                   未付
                                               </div>
                                           </td>
                                           <td style="width:100px;text-align: center;">
                                               <div>

                                               </div>
                                           </td>
                                       </tr>
                                   </table>
                               </div>
                           </div>
                       </div>

                   </div>

               </div>
               <div class="tabsFooter">
                       <div class="tabsFooterContent">

                       </div>
                   </div>
            </div>
      </div>
       <div class="formBar">
           <ul>
               <li>
                   <div class="button">
                       <div class="buttonContent">
                           <button class="close" type="button">
                               关闭窗口
                           </button>
                       </div>
                   </div>
               </li>
           </ul>

       </div>
   </div>
</body>
</html>