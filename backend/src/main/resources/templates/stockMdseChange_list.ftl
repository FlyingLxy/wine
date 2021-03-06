
<@dt.init>

    <table id="dataTable" class="display" cellspacing="0" width="100%">
        <thead>
        <tr>
            <th>编号</th>
            <th>部门</th>
            <th>变动时间</th>
            <th>商品编码</th>
            <th>商品名称</th>
            <th>项目编号</th>
            <th>变动类型</th>
            <th>变动数量</th>
            <th>备注</th>
            <th>上传记录编号</th>
        </tr>
        </thead>

        <tfoot>
        <tr>
            <th>编号</th>
            <th>部门</th>
            <th>变动时间</th>
            <th>商品编码</th>
            <th>商品名称</th>
            <th>项目编号</th>
            <th>变动类型</th>
            <th>变动数量</th>
            <th>备注</th>
            <th>上传记录编号</th>
        </tr>
        </tfoot>
    </table>
    <script type="text/javascript" language="javascript" class="init">


        $(document).ready(function() {
            editor = new $.fn.dataTable.Editor( DataTable.editorConfig('${moduleName}',[ {
			    label: "部门:",
			    name: "department"
			}, {
			    label: "时间:",
			    name: "changeTime"
			}, {
			    label: "商品编码:",
			    name: "merchandiseId"
			}, {
			    label: "商品名称:",
			    name: "merchandiseName"
			}, {
			    label: "项目编号:",
			    name: "projectId"
			}, {
			    label: "变动类型:",
			    name: "changeType"
			}, {
			    label: "变动数量:",
			    name: "changeNumber"
			}, {
			    label: "备注:",
			    name: "memo"
			}
            ]) );


            table = $('#dataTable').DataTable( DataTable.dataTableConfig('${moduleName}',[
                { data: "id"},
                { data: "department" },
				{ data: "changeTime" },
				{ data: "merchandiseId" },
				{ data: "merchandiseName" },
				{ data: "projectId" },
				{ data: "changeType" },
				{ data: "changeNumber" },
				{ data: "memo" },
                { data: "uploadId",name:"uploadId"<#if uploadId??>,searchValue:"${uploadId?trim}"</#if>}
            ],[
                { extend: "create", editor: editor },
                { extend: "edit",   editor: editor },
                { extend: "remove", editor: editor },
                {
                    extend: 'collection',
                    text: '导出',
                    buttons: [
                        'copy',
                        'excel',
                        'csv',
                        'pdf',
                        'print'
                    ]
                }
            ],{initComplete: function ()
            {
            }}) );

            DataTable.enableColumnSearch(table);

            <#if uploadId??>
                DataTable.searchByColumn(table,'uploadId','${uploadId}');
            </#if>
        } );



    </script>


</@dt.init>