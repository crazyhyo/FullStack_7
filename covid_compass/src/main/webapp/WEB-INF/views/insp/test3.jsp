<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">	

<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath() %>/resources/DataTables/datatables.css">
	
</head>
<title></title>
<body>



<table id="example" class="display">

</table>

    <!-- dataTable 설정구간 여기에요 -->
    <script>
      // 데이터 입력받는 곳
      var dataSet = [
        [
          '<a class="project-name" href="./my-project.html">남양(주) 사이트 유지보수<a> <i class="fa fa-globe fa-lg"></i>',
          "mimi2022",
          "2011-04-25",
          '<i class="fa fa-spinner fa-pulse"></i> 진행중',
          ],
          [
          '테슬라 자율주행 렌더링 <i class="fa fa-shield fa-lg"></i>',
          "StoneEnergyTA",
          "2021-08-21",
          '<i class="fa fa-check-circle-o fa-lg"></i> 완료',
          ],
          [
          '현대자동차 배터리 용접 <i class="fa fa-lock fa-lg"></i>',
          "SpearWaterDA",
          "2020-03-11",
          '<i class="fa fa-spinner fa-pulse"></i> 진행중',
          ],
          [
          '구글 자연어 DB 프로젝트 <i class="fa fa-shield fa-lg"></i>',
          "BronzeRootUA",
          "2021-01-07",
          '<i class="fa fa fa-exclamation-triangle" style="color:red"></i> 파기요청',
          ],
          [
          '하나은행 공식홈페이지 <i class="fa fa-globe fa-lg"></i>',
          "EnergyWookAA",
          "2020-01-11",
          '<i class="fa fa-spinner fa-pulse"></i> 진행중',
          ],
          [
          '대한항공 키오스크 보수 <i class="fa fa-lock fa-lg"></i>',
          "RealHyeokPL",
          "2021-01-11",
          '<i class="fa fa-spinner fa-pulse"></i> 진행중',
        ],
      ];
      // 컬럼명 입력받는 곳
      var col_title = [
        { title: "프로젝트명" },
        { title: "담당자" },
        { title: "시작일" },
        { title: "진행상태" },
      ];

      // 소트용 데이터
      var sort_data = [
        { title: '진행상태'},
        { title: '진행중' },
        { title: "파기요청" },
        { title: "완료" },
      ];
      // Korean
      var lang_kor = {
        decimal: "",
        emptyTable: "데이터가 없습니다.",
        info: "_START_ - _END_ (총 _TOTAL_ 개)",
        infoEmpty: "0개",
        infoFiltered: "(전체 _MAX_ 개 중 검색결과)",
        infoPostFix: "",
        thousands: ",",
        lengthMenu: "_MENU_ 개씩 보기",
        loadingRecords: "로딩중...",
        processing: "처리중...",
        search: "검색 : ",
        zeroRecords: "검색된 데이터가 없습니다.",
        paginate: {
          first: "첫 페이지",
          last: "마지막 페이지",
          next: "다음",
          previous: "이전",
        },
        aria: {
          sortAscending: " :  오름차순 정렬",
          sortDescending: " :  내림차순 정렬",
        },
      };

      window.onload = function(){
        var table = $("#example").DataTable({
          data: dataSet,
          columns: col_title,
          language: lang_kor,
          dom: 'B<"clear">lfrtip',
          buttons: [
          "pdf",
          "copy",
          "excel",
          {
            text: "프로젝트 추가",
            action: function () {
              alert("추가 페이지로 이동");
            },
          },
          ]
        });

        table.buttons().container().appendTo($('#test'));
        $('#example_length').appendTo($('#test'));
        $('#example_filter').appendTo($('#test'));
        /* Column별 검색기능 추가 */ 
        $('.dataTables_wrapper .row div').removeClass('col-sm-6').addClass('filter-bar-probada')
        $("#example_filter").prepend(
        '<select id="select" name="status" class="form-control input-lg dataTables_filter"></select>'
        );
        $.each(sort_data, function (index, item) {
          $("#select").append("<option name='option_status'>" + item.title + "</option>");
        });

         $('#select').on('change', function () {
          var colName = $('#select option:selected').val();
          table.column(3).search(colName).draw();
          if(colName=="진행상황") table.column().search().draw();
        }); 
    
      }
    </script>


</body>
