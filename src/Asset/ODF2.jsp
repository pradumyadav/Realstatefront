<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="description" content="Child Rows">
<title>ODF2</title>

</head>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.8.4/moment.min.js"></script>
<script src="https://cdn.datatables.net/1.12.1/js/jquery.dataTables.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.datatables.net/1.12.1/js/dataTables.bootstrap4.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.3.0/js/dataTables.responsive.min.js"></script>
  <script src="https://cdn.datatables.net/responsive/2.3.0/js/responsive.bootstrap4.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/1.12.1/css/dataTables.bootstrap4.min.css">
  <link rel="stylesheet" href="https://cdn.datatables.net/responsive/2.3.0/css/responsive.bootstrap4.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
  <script src="https://cdn.datatables.net/fixedcolumns/4.3.0/js/dataTables.fixedColumns.min.js"></script>
  <link href="https://cdn.datatables.net/fixedcolumns/4.3.0/css/fixedColumns.dataTables.min.css" rel="stylesheet" type="text/css" /> 
  <!-- <script src="https://nightly.datatables.net/fixedcolumns/js/dataTables.fixedColumns.js"></script>
  <link href="https://nightly.datatables.net/fixedcolumns/css/fixedColumns.dataTables.css" rel="stylesheet" type="text/css" /> -->
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>

   <script src="https://cdn.datatables.net/plug-ins/1.13.4/sorting/datetime-moment.js"></script>
   
  <link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Google+Sans:400,500,700|Google+Sans+Text:400&amp;lang=en">
<link type="text/css" rel="stylesheet" href="https://fonts.googleapis.com/css?family=Google+Sans+Text:400&amp;text=%E2%86%90%E2%86%92%E2%86%91%E2%86%93&amp;lang=en">
<style>
body{
background-color: transparent; font-family: "Roboto" !important;
overflow-x:hidden ;
}
.dtfc-right-top-blocker{
	z-index: 10000 !important;
	top: 5px !important;
}
.container1{
}
table.dataTable tbody th, table.dataTable tbody td {
    padding: 5px;
}
/* table tfoot tr {
    bottom: 0;
    position: sticky;
    z-index: 5;
    background: #fff;
    color: black;
} */
table tfoot,
table tfoot th,
table tfoot td {
  /* position: -webkit-sticky; */
  position: sticky;
  bottom: 0;
  color: black;
  z-index:4;
  padding-right: 5px;
}
.pending_orders_div{
	dispaly:none;
	/* height: 600px; */
	overflow: scroll;
	background-color: white;
	border-radius: 10px;
	/* margin-top:20px; */
	margin: 5px;
}
.tableicons {
    font-size: 1.2rem;
line-height: 1rem;
}
      .tableicons i {
padding: 0 3px 0;
}
.Pending_orders{
	width: 100% !important;
}
#Pending_orders{
	width: 100% !important;
}
.highlight{
	margin: 1rem 0 2rem;
    border-radius: 3px;
    font-size: 0.9375rem;
    max-height: 40rem;
    background: rgb(180, 200, 255) !important;
}
.pending_orders_div::-webkit-scrollbar { 
  width: 0 !important;
  display: none; 
}
.popupdivformdata::-webkit-scrollbar { 
  width: 0 !important;
  display: none; 
}
.pending_orders_filter{
	height: 50%;
	width: 98%;
	background: #fff5;
	backdrop-filter: blur(7px);
	border-radius: 10px;
	display:block;
	border-radius: 10px;
    box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid rgba(204, 204, 204, 0.3);
    padding: 5px;
}
.pending_orders_filter input{
	width:20%;
	display: inline-block;
	border-radius: 5px;
	height:20px;
	font-weight: bold;
	 padding: 4px 3px;
    font-size: 13px;
    font-weight: 400;
    line-height: 1;
    color: #4d5875;
    background-color: #fff;
    border: 1px solid #dadae3 !important;
    border-radius: 4px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.pending_orders_filter label{
	width:20%;
	display: inline-block;
	margin-left : 20px;
	height:20px;
	margin-top:1%;
	font-weight: 500;
	color:black;
	font-family: 'Roboto';
	font-size: 12px;
}
table.dataTable thead > tr > th.sorting, table.dataTable thead > tr > th.sorting_asc, table.dataTable thead > tr > th.sorting_desc, table.dataTable thead > tr > th.sorting_asc_disabled, table.dataTable thead > tr > th.sorting_desc_disabled, table.dataTable thead > tr > td.sorting, table.dataTable thead > tr > td.sorting_asc, table.dataTable thead > tr > td.sorting_desc, table.dataTable thead > tr > td.sorting_asc_disabled, table.dataTable thead > tr > td.sorting_desc_disabled{
	/* padding-right: 0px !important; */
	background-color: white;
}
table.dataTable thead > tr > th.sorting:before, table.dataTable thead > tr > th.sorting:after, table.dataTable thead > tr > th.sorting_asc:before, table.dataTable thead > tr > th.sorting_asc:after, table.dataTable thead > tr > th.sorting_desc:before, table.dataTable thead > tr > th.sorting_desc:after, table.dataTable thead > tr > th.sorting_asc_disabled:before, table.dataTable thead > tr > th.sorting_asc_disabled:after, table.dataTable thead > tr > th.sorting_desc_disabled:before, table.dataTable thead > tr > th.sorting_desc_disabled:after, table.dataTable thead > tr > td.sorting:before, table.dataTable thead > tr > td.sorting:after, table.dataTable thead > tr > td.sorting_asc:before, table.dataTable thead > tr > td.sorting_asc:after, table.dataTable thead > tr > td.sorting_desc:before, table.dataTable thead > tr > td.sorting_desc:after, table.dataTable thead > tr > td.sorting_asc_disabled:before, table.dataTable thead > tr > td.sorting_asc_disabled:after, table.dataTable thead > tr > td.sorting_desc_disabled:before, table.dataTable thead > tr > td.sorting_desc_disabled:after{
	opacity: 0.5 !important;
	line-height: 6px;
}
table.dataTable thead th, table.dataTable tfoot th{
	font-weight: 600 !important;
}
.pending_orders_filter select{
	width:20%;
	display: inline-block;
	border-radius: 5px;
	height:20px;
	font-weight: bold;
}
.dataTables_wrapper .dataTables_length {
    float: left !important;
}
.dataTables_filter {
	color:white;
	
	/* margin-bottom: 10px; */
	font-size: 12px;
	/* margin-top: -27px; */
}
.dataTables_length{
	color:white;
	/* margin-top: -24px; */
	font-size: 12px;

}
.dataTables_filter label{
	color:black;
}
.dataTables_length label{
	color:black;
}
.dataTables_filter input{
	background-color: white;
}
.dataTables_length input{
	background-color: white;
	color:white;
}
.dataTable{
	margin-top:10px;
}
.label1{
	width : 200px;
}
.label2{
	width: 10px;
}
.order_items{
	position: relative;
	display: none;
	background : #fff7;
	margin-top:3px;
	backdrop-filter: blur(7px);
	border-radius: 5px;
	align-items: center;
    justify-content: start;
}
.Order_items_h{
	margin-top:3px;
	color: white;
	/* width:100%; */
	width:86%;
	border:3px solid white;
	border-radius: 10px;
	justify-content: center;
	margin-bottom:3px;
	/* border-radius: 10px;
    box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid rgba(204, 204, 204, 0.3);
    margin: 10px 30px 10px 10px; */
    /* padding: 10px; */
}
.Order_items_h label {
	margin-left:2%;
	margin-right:1%;
	font-weight: 500;
	width: 20%;
	display: inline-block;
	height: 10px;
	color: black;
	font-family: 'Roboto';
	font-size: 12px;
	
}

.Order_items_h input{
	width: 20%;
	display: inline-block;
	height: 10px;
	 padding: 1rem 0.45rem;
    font-size: 13px;
    font-weight: 400;
    line-height: 1.2;
    color: #4d5875;
    background-color: #fff;
    /* background-clip: padding-box; */
    border: 1px solid #dadae3 !important;
    border-radius: 4px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
	margin: 5px 0px;
}
.Order_items_h1{
margin-top:3px;
	color: white;
	/* width:98%; */
	border:3px solid white;
	border-radius: 10px;
	justify-content: center;
	margin-bottom:3px;
	border-radius: 3px;
    /* box-shadow: 0 4px 20px 0 #dce9fd!important; */
    border: 1px solid #dfdfdf;
    margin: 0px 6px;
    padding: 1px;
}
.Order_items_h1 label {
	margin-left:2%;
	margin-right:1%;
	font-weight: bold;
	width: auto;
	display: inline-block;
	height: 10px;
	font-size:12px;
	
}
.Order_items_h1 input{
	/* width: 13%; */
	display: inline-block;
	/* height: 10px; */
	 padding: 0.37rem 0.45rem;
    font-size: 13px;
    font-weight: 400;
    line-height: 1.2;
    color: #4d5875;
    background-color: #fff;
    /* background-clip: padding-box; */
    /* border: 1px solid #dadae3 !important; */
    border: none !important;
    border-radius: 4px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}

.formreports{
	/* height: 25px; */
	border:none;
    color: #2962cb;
    border-radius: 5px;
	margin-right: 50px;
    background-color: transparent;
	float: right;
    padding: 0.2rem 0.75rem;
}
table {
    border-spacing: 1;
    border-collapse: collapse;
    background: #fff;
    border-radius: 10px;
    margin: 0 auto;
    position: relative;
    border-radius:10px;
    /* border:5px solid white; */
}
thead th{
	top :0;
	position: sticky;
	z-index: 5;
	background: #fff;
	color:black;
}
table.dataTable thead th{
/* top :0;
	position: sticky;
	z-index: 5;
	background: #fff;
	color:black;
	vertical-align: middle; */
	font-size: 11px;
}
table.dataTable thead th, table.dataTable thead td{
	/* padding: 5px !important; */
	/* border-top: 0px;
    vertical-align: bottom;
    background: transparent;
    box-shadow: none;
    font-size: 11px;  */

}
.dataTables_length, .dataTables_info, .pagination{
font-size: 12px;
}
table td,table th {
    padding-left: 8px;
}
table thead tr {
    /* height: 40px;
    background: #36304a;
    color: #fff;
    border-radius: 10px;
    font-size: small; */
}
table tbody tr {
    height: 20px;
	background-color: white;
}
table thead tr td {
	text-align: left;
}
table tbody tr td {
    padding-left:10px;
    padding-right:10px;
}
.Pending_orders th {
    font-family: "Roboto" !important;
    font-size: 11px;
    color: #fff;
    line-height: 1;
    font-weight: unset;
}
.oddrow{
	/* background-color: #f5f5f5 !important; */
}
tbody tr {
    font-family: "Roboto" !important;
    font-size: small;
    /* color: gray; */
    line-height: normal;
    font-weight: unset;
}
.CURRENT_ORDER {
	background-color: #ccffcc;
}
tbody tr:hover {
    color: black;
    background-color: #F3F8FE;
    cursor: pointer;
}
.BookStock{
	display: none;
}
.width200{
	width: 100px;
}
.width100{
	width:50px;
}
.loadContent{
	overflow: scroll;
	margin-top:10px;
	background-color : White;
	border-radius: 4px;
	 box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid #dfdfdf;
    
}  
::-webkit-scrollbar {
	width: 17px;
}
::-webkit-scrollbar-thumb{
	/* width:12px;
	margin-right:-20px;
	background-color: #d6dee1;
 	border-radius: 20px;
  	border: 6px solid transparent;
  	background-clip: content-box; */
	  /* width: 0px;
	  background-color: #d6dee1;
	  border: 6px solid transparent;
    background-clip: content-box; */
	    width: 12px;
    margin-right: -20px;
    border-radius: 20px;
    border: 6px solid transparent;
    background-clip: content-box;
    background-image: -webkit-gradient(linear, left bottom, left top, color-stop(0.44, rgb(122,153,217)), color-stop(0.72, rgb(73,125,189)), color-stop(0.86, rgb(28,58,148)));
}
.rightmenu{
	overflow: scroll;
	margin-top:10px;
	background: white;
	border-radius: 4px;
	 box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid #dfdfdf;
}
#order_h{
	display: none;
	/* text-align: right; */
	/* margin-right:5%; */
	/* margin-top:5px; */
 
}
.labelfield{
	border: none;
	background: none;
	pointer-events:none;
}
#odfpopupheader #itemlistofblock tr{
    height: 20px;
}
.odlabel{
	height:10px;
}

.pending_orders_btn{
    /* border-radius: 15px; */
    /* width: 100px; */
    /* height: 20px; */
    margin-left: 10px;
    margin-right: 5px;
    border: none;
    color: #ffd800;
    /* border-radius: 5px; */
    background-color: none;
    background: none;
    cursor: pointer;
}
/* .pending_orders_btn :hover{
color: white;
background-color: red;
border: 0.5px solid white;
} */
.order_items_c{
	height: 150px;
	overflow: auto;
	/* background-color: #fff5; */
	width:99.2%;
	/* backdrop-filter: blur(7px); */
	/* border-radius: 10px; */
    /* box-shadow: 0 4px 20px 0 #dce9fd!important; */
    /* border: 1px solid rgba(204, 204, 204, 0.3); */
	margin: 5px;
    /* padding: 10px; */
}
#Pending_orders thead tr:nth-child(-n + 2) {
    z-index: 1;
}
.order_item_f{
	text-align: right;
	color:white;
	/* width:98%; */
	font-weight: bold;
	border-radius: 5px;
	border-radius: 10px;
    box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid rgba(204, 204, 204, 0.3);
    margin: 10px 30px 10px 10px;
    padding: 10px;
}
.order_item_f .summaryes2{
width:20%;
}
.order_item_f label{
color: black;
font-weight: 500;
font-family: 'Roboto';
}
.summaryes2{
text-align: center;
}
.order_item_f input{
width: 60px;
	margin-left: 10px;
	margin-right: 10px;
	border-radius: 5px;
	margin-top:5px;
	font-weight: bold;
	 padding: 0.2rem 0.45rem;
    font-size: 13px;
    font-weight: 400;
    line-height: 1.2;
    color: #4d5875;
    background-color: #fff;
    /* background-clip: padding-box; */
    border: 1px solid #dadae3 !important;
    border-radius: 4px;
    transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
}
.order_item_f input{
	
}
.alignright{
	text-align: right;
	color: black;
	text-decoration: none;

}
.alignleft{
	text-align: left;
	color: black;
	text-decoration: none;
}
.grid {
 	/* display: grid;
 	grid-template: 400px 150px / 50% 50%;
 	gap: 10px 10px; 
	margin: 0px 15px */
	display: grid;
    grid-template: 300px / 50% 50%;
    gap: 10px 10px;
    margin: 0px 15px;
    /* display: grid; */
    /* grid-template-columns: auto auto; */
    /* background-color: #2196F3; */
    /* padding: 10px;
}
.editableinput{
	width :70px;
	border: 1px solid #d7d7d7;
}
.other_order_footer{
	background: White;
	/* height: 40px; */
	height: fit-content;
	border-radius: 10px;
	 /* box-shadow: 0 4px 20px 0 #dce9fd!important; */
    /* border: 1px solid rgba(204, 204, 204, 0.3); */
	margin: 0px 10px 5px 0px;
    padding: 0px 7px;
}
.editableinput{
	width :70px;
	border: 1px solid #d7d7d7;
}
.stockfooter{
	display:grid;
	grid-template: 50% / 100%;
	background: transparent;
 	gap: 10px 10px;
    /* padding: 10px; */
}
.maximumbatchstock1{
	/* height:90%; */
	background-color: transparent;
	border-radius: 10px;
	box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid rgba(204, 204, 204, 0.3);
}
.maximumbatchstock2{
	height:fit-content;
	/* background-color: transparent; */
	border-radius: 10px;
  box-shadow: 0 4px 20px 0 #dce9fd!important;
    border: 1px solid rgba(204, 204, 204, 0.3);
}
.maximumbatchstock2Summary{
	height: 180px;
    /* width: 343px; */
    overflow: auto;
    border-radius: 10px;
    position: relative;
    /* z-index: 1000000000; */
    border: 1px solid #adadad;
    border-radius: 5px;
}
.BookStock_Header{
	background: #fff5;
	backdrop-filter: blur(7px);
}
.headerpopup{
	width:760px;
	height:30px;
	margin-top:5px;
	margin-left:5px;
	backdrop-filter: blur(7px);
	background: #fff7;
	border-radius: 5px;
	color:white;
	text-align: center;
	font-weight: bolder;
}
.popupdiv{
	display:none;
	position: absolute;
	top:15%;
	left:25%;
	width:820px;
	z-index:12;
	border: 1px solid black;
	border-radius: 10px;
	background: #444444;
}
.popupdivform{
display:none;
	position: absolute;
	top:10%;
	left:10%;
	width:1200px;
	height:500px;
	z-index:12;
	border: 1px solid black;
	border-radius: 10px;
	/* background: #444444; */
	overflow: scroll;
}
.popupdivformdata{
position: absolute;
top:0;
height:500px;
width:1200px;
overflow: scroll;

}
.popupdivformh{
position:absolute;
    top: 7px!important;
    right: 10px!important;
	z-index:13;

}
/* select#BOOK_STOCK_FILTER {
    border: 1px solid #dadae3;
    border-radius: 3px;

	height: 25px;
    font-size: 14px;
} */
.selectTags{
    border: 1px solid #dadae3;
    border-radius: 3px;
	/* padding: 5px; */
	height: 25px;
    font-size: 14px;
}
.closepopup{
	right:11px;
	position: absolute;
	background-color: red;
	color:white;
	font-weight: bold;
	margin-top:-30px;
	border-radius: 5px;
	cursor: pointer;
	height: 30px;
	width: 40px;
}
.popheader{
	position: relative;
	/* height:200px; */
	/* width:800px; */
	margin-left:10px;
	overflow: scroll;
	border-radius: 10px;
	background: white;
	/* margin-top:5px; */
}
.inp_c{
	border: none;
    font-size: 13px;
    font-weight: 500;
}
.popcontent{
	/* position:relative;
	height:300px;
	width:800px;
	margin-left:10px; */
	overflow: scroll;
	/* background: white;
	border-radius: 10px;
	margin-top:5px; */
}
.headerpopup a{
	margin-top:5px;
}
.popheader llabel{
	margin-right: 10px;
	width:300px;
	margin-left: 5px;
	color: #8C8C8C;
font-weight: 500;
font-family: 'Roboto';
}
.headerlabel{
	margin-left:10px;
	margin-right:10px;
	margin-top:10%;
	color: black;
font-weight: 500;
font-family: 'Roboto';
}
label{
	margin-left: 5px;
	margin-right: 10px;
	color: black;
font-weight: 500;
font-family: 'Roboto';
}
.totalqtyclass{
	width:60px;
	/* text-align: right; */
	text-align: center;
	/* border: 1px solid #d7d7d7; */
	/* height:10px; */
}
table.dataTable.no-footer {
    /* border-bottom: 1px solid transparent !important; */
	border-radius: 0px;
}
totallabelclass{
	width:150px;
	height:10px;
	font-size: smaller;
	color: black;
font-weight: 500;
font-family: 'Roboto';
}
.editableinput[readonly] {
	/* background-color: #ffe6e6; */
	border: 1px solid #d7d7d7;
    background: #ededed;
}
.editableinput[readonly]:focus {
    outline: none;
}
.common[readonly]:focus {
    outline: none;
}
.highlight {
	 background-color: red;
}
.printbuttonrow{
	 cursor: pointer;
	 background: none;
    border: none;
    /* border-radius: 5px; */
    font-size: 15px;
    /* padding: 10px 8px; */
}
.rowheader{color:black !important;text-decoration: none;font-size: 12px;}
.deletebuttonrow{
	background: none;
    /* border: 2px solid #DEDEDE; */
    border: none;
    /* border-radius: 5px; */
    font-size: 15px;
    /* padding: 10px 8px; */
    /* margin-left:8px; */
	cursor: pointer !important;
}
.deletebuttonrow a{
	margin-right: 1%;
	margin-left: 1%;
	padding: 5px;
	border-radius: 5px;
}
.printbuttonrow a {
	margin-right: 1%;
	margin-left: 1%;
	padding: 5px;
	border-radius: 5px;
}
.printmenu {
	display:none;
	position:absolute;
	right:40px;
	height:80px;
	overflow:scroll;
	z-index: 100;
	cursor: pointer;
	background: #fff;
    border-radius: 3px;
    border: 1px solid #dfdfdf;
}
.deleterecord{
	/* position: absolute;
	top: 20px;
    right: 3%; */
	/* width:100px; */
	border: none;
    color: #2962cb;
    border-radius: 5px;
    background-color: transparent;
    cursor: pointer;
	padding: 0.2rem 1rem;
}
.Pending_order_items{
	width:100%;
}
.Available_stock_item_code_wise_popup{
    border: 0.5px solid #2962cb;
    color: #2962cb;
    border-radius: 5px;
    background-color: transparent;
}
.right_bt{
	border: none;
	background: none;
	cursor: pointer !important;
	font-size: 14px;
    padding: 5px 15px;
    border-radius: 5px;
}
.right_bt:hover{
    background: #ebebeb;
}
.companyname_inp{
	color: #2E65CD;
    border: 1px solid #ccc;
    padding: 5px 7px;
    border-radius: 4px;
    width: 30%;
    text-align: center;

}
.pend_table{
	border: 1px solid #ebebeb;
    border-radius: 2px;
}
.show_onhover{
	display: none;
}
.lastTd:hover .hide_onhover{
	display:none;
}
.lastTd:hover .show_onhover{
	display:block;
}
.formnewgroup{
	width: auto;
    display: inline-flex;
    align-items: baseline;
}
.formnewgroup label {
    width: 100%;
}
.formnewgroup input {
    width: 100%;
    border: 1px solid transparent !important;
	margin: 0;
	padding: 10px 5px;
}
.hide_stocks{
  display: none;
  margin-top: -170px;
  position: relative;
  z-index: 100;
  width: 500px;
  margin-left: 120px;
  background: white;
}
.selected td{
	background-color: #dee2e6 !important;
	/* background-color: #621AFF; */
	color: black !important;
}
    
.hover_it:hover + .hide_stocks {
  display: block;
  z-index: 10;
  position: absolute;

}
div#maximumbatchstock2:hover {
    display: block;
	position: absolute;
}
.hide_content{
	display: none;
}
.totalqtyclass[readonly]:focus{
  outline:none;

}
.close_x{
	padding: 0px 5px;
    border: none;
    background-color: #ffabab;
    border-radius: 3px;
}
.dataTables_scrollHeadInner{
	/* width: 100% !important; */
}
#Pending_orders_info{
	/* position: sticky;
    bottom: 0;
    width: 80%;
    background: white; */
}
#Pending_orders_paginate{
	/* position: sticky;
    width: 20%;
    background: white;
	bottom: 0; */
}
.inc_zInd{
	z-index: 10 !important;
}
</style>
<!-- NEW MODAL FOR STOCK DETAILS -->
<style>
	.modal.left_modal,.modal.right_modal{position:fixed;z-index:99999}.modal.left_modal .modal-dialog,.modal.right_modal .modal-dialog{position:fixed;margin:auto;width:75%;height:100%;-webkit-transform:translate3d(0,0,0);-ms-transform:translate3d(0,0,0);-o-transform:translate3d(0,0,0);transform:translate3d(0,0,0)}.modal-dialog{margin:1.75rem auto}.card-body,.noncard-body{margin:0;position:relative}@media (min-width:576px){.left_modal .modal-dialog,.right_modal .modal-dialog{max-width:100%}}.modal.left_modal .modal-content,.modal.right_modal .modal-content{height:100vh!important}.modal.left_modal .modal-body,.modal.right_modal .modal-body{padding:15px 15px 30px}.modal-backdrop{display:none}.modal.left_modal.fade .modal-dialog{left:-50%;-webkit-transition:opacity .3s linear,left .3s ease-out;-moz-transition:opacity .3s linear,left .3s ease-out;-o-transition:opacity .3s linear,left .3s ease-out;transition:opacity .3s linear,left .3s ease-out}.modal.left_modal.fade.show .modal-dialog{left:0;box-shadow:0 0 19px rgba(0,0,0,.5)}.modal.right_modal.fade .modal-dialog{right:-50%;-webkit-transition:opacity .3s linear,right .3s ease-out;-moz-transition:opacity .3s linear,right .3s ease-out;-o-transition:opacity .3s linear,right .3s ease-out;transition:opacity .3s linear,right .3s ease-out}.modal.right_modal.fade.show .modal-dialog{right:100px;box-shadow:0 0 19px rgba(0,0,0,.5)}.modal-content{border-radius:0;border:none;-webkit-transform:translate(0,0);transform:translate(0,0);z-index:1;width:117%}.modal-header.left_modal,.modal-header.right_modal{padding:10px 15px;border-bottom-color:#eee;background-color:#fafafa}.modal_outer .modal-body{overflow-y:auto;overflow-x:hidden;height:91vh}.modal-backdrop.show{z-index:-1!important}.card{position:relative;box-shadow:none!important;width:100%;margin-bottom:0}.card-body{-ms-flex:1 1 auto;flex:1 1 auto;padding:20px}.noncard-body{-ms-flex:1 1 auto;flex:1 1 auto}#btn{min-width:5.375rem}.email-card .mail-body{padding:20px 0}.tabs-menu1 ul li a{padding:10px 10px 11px;display:block;font-size:12px;border-radius:6px 6px 0 0!important;font-weight:600}.btn-success{color:#17469f!important;background-color:#fff!important;border-color:#17469f;border-radius:50%;padding:5px;min-width:12px;font-size:.525rem;box-shadow:unset}.btn-success:hover{color:#fff!important;background-color:#17469f!important;border-color:#17469f}.form-group{margin-bottom:.5rem;display:block}  
</style> 
<body>
<div class="container1">

 	<div class="p_o1" id ="p_o1">
 	<!-- Pending Orders Filters data Table Load not Normal CSS-->
 			<!-- <div id="pending_orders_filter" class="pending_orders_filter"> 
 				<label>Name of Company </label><input type="text" id="serach_name_of_company" list="serach_name_of_company_list" onchange="getpending_orders()">
 				<datalist id="serach_name_of_company_list"></datalist>
 				<label>Branch Name </label><input type="text" id="serach_branch_name" list="serach_branch_name_list" value="%" onkeyup="getbranch_name()" onchange="getpending_orders()">
 				<datalist id="serach_branch_name_list"></datalist>
 				<label>Party Name </label><input type=text id="search_party_name" list="search_party_name_list" value="%" onkeyup="getparty_name()" onchange="getpending_orders()">
  				<datalist id="search_party_name_list"></datalist>
  				<label for="status">Status </label>
 				<select id="status" name="status" onchange="getpending_orders()">
   					<option value="Incomplete">Incomplete</option>
   					<option value="Completed">Completed</option>
   					<option value="All">All</option>
   					<option value="Deleted">Deleted</option>
 				</select>
				 <i class="fa-solid fa-plus" onclick="openModal();"></i>
 				<button onclick="opennewodfform()">Add New Order</button>
 			</div> -->
			 <div style="display: flex;justify-content:center;margin-top: 10px;background: #fff;position: sticky;z-index: 10;top: 0px;">
				<div class="centerDiv" style="flex: 1;display: flex;justify-content: center;transform: translateX(100px);">
						 <!-- <input type="text" id="serach_name_of_company" placeholder="companyname" list="serach_name_of_company_list" onchange="getpending_orders()" class="companyname_inp">
						 <datalist id="serach_name_of_company_list"><option value="ITACA CERAMIC PVT.LTD.">ITACA CERAMIC PVT.LTD.</option><option value="ITALAKE CERAMIC PVT LTD">ITALAKE CERAMIC PVT LTD</option><option value="Test Company Pvt Ltd">Test Company Pvt Ltd</option></datalist> -->
						 <div type="text" placeholder="companyname" list="serach_name_of_company_list" class="companyname_inp" onclick="openModal();" id="div_text" style="cursor: pointer;">Select Company Name</div>
						 <div style="margin-left: -25px;margin-top: 5px;"><i class="fa-solid fa-angle-down" onclick="openModal();" style="color:#2E65CD;"></i></div>
				</div>
			   <div class="pull-left" style="padding-right: 20px;z-index:1;">
				<button onclick="opennewodfform()" class="right_bt">
				<i class="fa-solid fa-plus" style="color: #2E65CD;font-size: 18px;"></i>&nbsp;&nbsp;Add New Order</button>
					<!-- <button class="right_bt" onclick="Printall()" >
				<i class="fa-solid fa-print" style="color: #2E65CD;font-size: 18px;"></i>&nbsp;&nbsp;Print All</button> -->
			   </div>
			   </div>
			   <div class="" style="margin: 0px 12px;">

				   <div class="table-responsive">
					<table
					  id="Pending_orders"
					  class="table table-bordered nowrap"
					  style="width: 100%;border-radius: 0px;"
					>
					
					</table>
				  </div>
			   </div>
			<div id="pending_orders_div" class="pending_orders_div">
			 	<!-- get data from function genrate_pending_orders_table()  Table With Normal CSS and TR tag Has two Classes evenrow and oddrow 
			 	if row is even then evenrow else oddrow 
			 	-->
			</div>
		</div>
		<div class="popupdivform" id="popupdivform">
			<div class="popupdivformh" id="popupdivformh" onclick="closeformpop()"><button class="close_x">X</button></div>
			<div class="popupdivformdata" id="popupdivformdata"></div>
				</div>
		</div>
		<div class="cont2"></div>
		<div class="hide_content" style="position: relative;z-index: 0;">
		<div class="order_items" id="order_items" style="display: flex; justify-content: space-between;">
		<div id="order_h" style="display:flex;justify-content: space-between;align-items: center;">
			<button onclick="open_pending_orders()" id="pending_orders_btn" class="pending_orders_btn"><i class="fa-solid fa-arrow-left" style="font-size: 1.5rem;cursor:pointer;"></i></button>
			<div style="text-align: center;font-size: 16px;color: #536EC4;font-weight: 600;padding-left: 8px;" class="">Order Details</div>
		 
		</div>
			<div class="Order_items_h" id="Order_items_h">
				<input type="HIDDEN" id="AID">
				<div style="display: none;">
					<label>Name of Company</label><input type="text" id="NAME_OF_COMPANY" readonly="true">
					<label>Branch Name</label><input type="text" id="BRANCH_NAME" readonly="true">
				</div>
				<div class="formnewgroup">
					<label style="width: 30%;">ODF No</label><input type="text" id="ODF_NO" readonly="true" class="common">
				</div>
			<div class="formnewgroup">
				<label style="width: 57%;">Sales Order No</label><input type="text" id="SALES_ORDER_NO" readonly="true" class="common">
			</div>
				<div class="formnewgroup">
					<label style="width: 48%;">Party Name</label><input type="text" id="PARTY_NAME" readonly="true" class="common">
				</div>
			    <div style="display: flex;justify-content: right;margin-top:-26px;">
					<button class="deleterecord" id="deleterecord" onclick="deleterecord()" style="margin-right: 5px;">
						<i class="fa-solid fa-trash" style="font-size: 18px;"></i>
					</button>
					<button class="formreports" id="printlistshow">
						<i class="fa-solid fa-print" style="color: #2E65CD;font-size: 18px;"></i>
					</button>
					<div class="printmenu" id="printmenu">
					</div>
				</div>
			</div>
			</div>
			<div style="position: relative;z-index: -1;border: 1px solid #dfdfdf;margin: 0px 10px;border-radius: 3px;">
				<div class="order_items_c" id="order_items_c">
					 <!-- get data from function genrateOrder_item_detailsTable()  -->
				</div>
				<div class="order_item_f" style="display:none;">
				<table>
				<tbody>
				<tr>
				<td><label>Total Order Qty / Weight (Tons)</label></td>
				<td><label>Total Book Qty / Weight (Tons)</label></td>
				<td><label>Dispatched Qty / Weight (Tons)</label></td>
				<td><label>Pending To Dispatch / Weight (Tons)</label></td>
				<td><label>Order Balance / Weight (Tons)</label></td>
				</tr>
				<tr>
				<td style="text-align: center;"><input id="total_order_qty" class="totalqtyclass" readonly="true"><input id="total_order_qty_weight_tons" class="totalqtyclass" readonly="true"></td>
				<td><input id="total_book_qty" class="totalqtyclass" readonly="true"><input id="total_book_qty_weight_tons" class="totalqtyclass" readonly="true"></td>
				<td><input id="total_issued_qty" class="totalqtyclass" readonly="true"><input id="total_issued_qty_weight_tons" class="totalqtyclass" readonly="true"></td>
				<td><input id="total_balance_booked_qty" class="totalqtyclass" readonly="true"><input id="total_balance_book_qty_weight_tons" class="totalqtyclass" readonly="true"></td>
				<td><input id="total_order_balance_qty" class="totalqtyclass" readonly="true"><input id="total_order_balance_qty_weight_tons" class="totalqtyclass" readonly="true"></td>
				<td></td>
				</tr>
					</tbody>
					</table>
				</div>
				<div class="BookStock" id="BookStock">
					<div class="getOrders">
					</div>
					<div class="Order_items_h1">
						<input type="HIDDEN" id="BID" readonly="true">
						<input type="HIDDEN" id="CID" readonly="true">
						<div class="d-flex" style="justify-content: space-between;align-items: center;">
							<div class=" mb-2" style="display: none;">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Item Code</label><input type="text" id="ITEM_CODE" readonly="true" class="common">
								</div>
							</div>
							<div class=" mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Size</label><input type="text" id="SIZE" readonly="true" class="common">
								</div>
							</div>
							<div class="cmb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Category</label><input type="text" id="CATEGORY" readonly="true" class="common">
								</div>
							</div>
							<div class=" mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Design Name</label><input type="text" id="DESIGN_NAME" readonly="true" class="common">
								</div>
							</div>
							<div class="mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Quality</label><input type="text" id="QUALITY" readonly="true" class="common">
								</div>
							</div>
							<div class=" mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Brand</label><input type="text" id="BRAND" readonly="true" class="common">
								</div>
							</div>
							<div class=" mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Packing Code</label><input type="text" id="PACKING_CODE" readonly="true" class="common">
								</div>
							</div>
							<div class=" mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Packing Qty</label><input type="text" id="PACKING_QTY" readonly="true" class="common">
								</div>
							</div>
							<div class=" mb-2">
								<div style="display: inline-block;justify-content: space-between;align-items:center;">
									<label>Order Qty</label><input type="text" id="ORDER_QTY" readonly="true" class="common">
								</div>
							</div>
						</div>
						
					</div>
					<!-- <div class="text-center">
						<select id="BOOK_STOCK_FILTER" name="BOOK_STOCK_FILTER" onchange="create_odf_table()">
								   <option value="Show All">Show All</option>
								   <option value="Available For Book">Available For Book</option>
								   <option value="Without Book In Other Orders">Without Book In Other Orders</option>
						 </select>
						 <button onclick="Available_stock_item_code_wise_popup()" class="Available_stock_item_code_wise_popup">Show Other Brand Stock</button>		
					</div> -->
					<div class="text-center mt-1" style="display: flex;justify-content: space-around; align-items: center;">
						<div class="stockfooter" id="stockfooter" >
							<div class="maximumbatchstock1" style="display:none">
							<table>
					  <tbody>
					  <tr>
					  <td><label class="totallabelclass">Godown Stock</label></td>
					  <td><label class="totallabelclass">Total Booked Stock</label></td>
					  <td><label class="totallabelclass">Total Available To Book</label></td>
					  <td><label class="totallabelclass">Free Stock</label></td>
					  </tr>
					  <tr>
					  <td class=""><input id ="current_stock" class="totalqtyclass" readonly="true"></td>
					  <!-- <td class=""><input id = "totalbookedstock" class="totalqtyclass" readonly="true"></td> -->
					  <td class=""><input id ="total_available_to_book" class="totalqtyclass" readonly="true"></td>
					  <td class=""><input id = "free_stock" class="totalqtyclass" readonly="true"></td>
					  <td></td>
					  </tr>
						  </tbody>
						  </table>  					  					
								 
							 </div>
							 <div style="color: #536EC4;" class="hover_it"> 
							  <span style="background: #f3f3f3;padding: 7px;border-radius: 5px;font-size: 14px;font-weight: 600;cursor: pointer;">Batch Wise Stock Qty</span></div>
							<div class="maximumbatchstock2 hide_stocks" id="maximumbatchstock2">
								   
									<div class="maximumbatchstock2Summary" id ="maximumbatchstock2Summary" style="width:auto;">
						  
									</div>
							</div>
					  </div>
						<div style="text-align: center;font-size: 14px;color: #536EC4;font-weight: 600;margin-right: 60px;" class="">
							Stock Details</div>
							<select id="BOOK_STOCK_FILTER" class="selectTags" name="BOOK_STOCK_FILTER" onchange="create_odf_table()" style="margin-right: 5px;">
								   <option value="Show All">Show All</option>
								   <option value="Available For Book">Available For Book</option>
								   <option value="Without Book In Other Orders">Without Book In Other Orders</option>
						 </select>
						 <select class="selectTags" id="PACKING_TYPE" name="PACKING_TYPE" onchange="create_odf_table()">
							<option value="Packing Qty Wise Stock">Packing Qty Wise Stock</option>
						   <option value="Packing Code Wise Stock">Packing Code Wise Stock</option>
				 </select>
						 <button onclick="Available_stock_item_code_wise_popup()" class="Available_stock_item_code_wise_popup" style="padding: 0px 12px;font-size: 14px;border-radius: 2px;">Show Other Brand Stock</button>
						 <div style="text-align: center;font-size: 14px;color: #536EC4;font-weight: 600;margin-left: 60px;" class="">Other Pending Orders</div>
    
					</div>
						<!-- parent Grid 1 -->
					 <div class="grid">
						<div class="loadContent" id="loadContent">
						<!-- get data from function create_odf_table()  -->
						</div>
						 <div class="rightmenu" id="rightmenu">
						 <!-- get data from function create_balance_orders_table()  -->
						 </div>
						 <!-- chield Grid 2 -->
						 <!-- <div class="stockfooter" id="stockfooter" >
							  <div class="maximumbatchstock1" style="display:none">
							  <table>
						<tbody>
						<tr>
						<td><label class="totallabelclass">Godown Stock</label></td>
						<td><label class="totallabelclass">Total Booked Stock</label></td>
						<td><label class="totallabelclass">Total Available To Book</label></td>
						<td><label class="totallabelclass">Free Stock</label></td>
						</tr>
						<tr>
						<td class=""><input id ="current_stock" class="totalqtyclass" readonly="true"></td>
						<td class=""><input id = "totalbookedstock" class="totalqtyclass" readonly="true"></td>
						<td class=""><input id ="total_available_to_book" class="totalqtyclass" readonly="true"></td>
						<td class=""><input id = "free_stock" class="totalqtyclass" readonly="true"></td>
						<td></td>
						</tr>
							</tbody>
							</table>  					  					
								   
							   </div>
							   <div style="display: flex;justify-content: end;align-items: end;width: fit-content;padding: 0px;text-align: right;height: 30px;color: #536EC4;float: right;" class="hover_it"> 
								<span style="background: #f3f3f3;padding: 7px;border-radius: 5px;font-size: 14px;font-weight: 600;cursor: pointer;">Batch Wise Stock Qty</span></div>
							  <div class="maximumbatchstock2 hide_stocks" id="maximumbatchstock2">
									 
									  <div class="maximumbatchstock2Summary" id ="maximumbatchstock2Summary" style="width:auto;">
							
									  </div>
							  </div>
						</div> -->
							  <div class="other_order_footer" id="other_order_footer" style="display: none;">
							  <table>
						<tbody>
						<tr>
						<td><label>Order Count</label></td>
						<td><label>Total Order Qty</label></td>
						<td><label>Booked Qty</label></td>
						<td><label>After Order Stock</label></td>
						</tr>
						<tr>
						<td class="alignright"><input id = "order_count" value="0" class="totalqtyclass" readonly="true"></td>
						<td class="alignright"><input id = "totalorderqty" value="0" class="totalqtyclass" readonly="true"></td>
						<td class="alignright"><input id ="total_book_in_other_order" class="totalqtyclass" readonly="true"></td>
						<td class="alignright"><input id = "afterorderqty" value="0" class="totalqtyclass" readonly="true"> </td>
						<td></td>
						</tr>
							</tbody>
							</table>  	
							  
								  
								  
								  
								  
							  </div>
					 </div>
			 </div>
			</div>
		</div>
			
	</div>

 <!-- <div style="display: none;">
<div class="popupdiv" id="popupdiv">
		<div class="headerpopup" id ="headerpopup">
		</div>
		<button onclick="closepop()" class="closepopup">X</button>
		<div>
			<div class="popheader" id ="popheader"></div>
			<div class="popcontent" id="popcontent"></div>
		</div>
</div>
<div class="popupdivform" id="popupdivform">
<div class="popupdivformh" id="popupdivformh" onclick="closeformpop()"><button>X</button></div>
<div class="popupdivformdata" id="popupdivformdata"></div></div>
</div> -->
 
<div class="modal modal_outer right_modal fade show" id="stock_modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel2" aria-modal="true" style="display: none;">					
	<div class="modal-dialog" role="document">
	   <form method="post" id="get_quote_frm">
			<div class="modal-content ">						  
				<div class="card-body">
					<div class="row">
						<div class="" id="popupdiv" style="width:100%;">
							<div class="" id ="headerpopup">
							</div>
							<!-- <button onclick="closepop()" class="closepopup">X</button> -->
							<div>
								<div class="popheader" id ="popheader"></div>
								<div class="" id="popcontent" style="margin-right: 103px;margin-right: 102px;height: 300px;overflow: auto;margin-bottom: 25px;"></div>
							</div>
					</div>
					<!-- <div class="popupdivform" id="popupdivform">
					<div class="popupdivformh" id="popupdivformh" onclick="closeformpop()"><button>X</button></div>
					<div class="popupdivformdata" id="popupdivformdata"></div>
						</div> -->
					</div>	
				</div>
			</form></div>
	  
	</div>
	
</div>
<!-- Modal -->
<div class="modal fade" id="menuModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true" style="margin-top:25px ;">
	<div class="modal-dialog">
	  <div class="modal-content" style="border: 1px solid #e7e7e7;border-radius: 5px;width:auto;">
		<div class="modal-body">
		 <div id="pending_orders_filter" class="mb-3" style=""> 
          <div class="row">
            <div class="col-md-6">
              <div class="mb-3">
				<label for="exampleInputEmail1" class="form-label" style="color: gray;font-size: 13px;">Name of Company </label>
				<input type="text" id="serach_name_of_company" list="serach_name_of_company_list" class="form-control" autocomplete="off">
				<datalist id="serach_name_of_company_list"></datalist>
              </div>
           </div>
	    <div class="col-md-6">
           <div class="mb-3">
             <label class="form-label" style="color: gray;font-size: 13px;">Branch Name </label><input type="text" id="serach_branch_name" list="serach_branch_name_list" value="%" onkeyup="getbranch_name()" class="form-control" autocomplete="off">
			 <datalist id="serach_branch_name_list"></datalist>
		</div>
		</div>
		<div class="col-md-6">
		<div class="mb-3">
		<label class="form-label" style="color: gray;font-size: 13px;">Party Name </label><input type="text" id="search_party_name" list="search_party_name_list" value="%" onkeyup="getparty_name()"  class="form-control" autocomplete="off">
		<datalist id="search_party_name_list"></datalist>
			</div>
		</div>
         <div class="col-md-6">
         <div class="mb-3">
		<label for="status" style="color: gray;font-size: 13px;">Status </label>
		<select id="status" name="status" class="form-control">
			<option value="Incomplete">Incomplete</option>
			<option value="Completed">Completed</option>
			<option value="All">All</option>
			<option value="Deleted">Deleted</option>
			</select>
		</div>
		</div> 
		<div class="col-md-12" style="text-align: end;">
			<button type="button" class="btn btn-primary" onclick="getpending_orders();" data-dismiss="modal">Submit</button></div>  
			</div>
		</div>
		</div>
		<!-- <div class="modal-footer">
		  <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
		  <button type="button" class="btn btn-primary" onclick="getpending_orders();" data-bs-dismiss="modal">Submit</button>
		</div> -->
	  </div>
	</div>
  </div>
<script>
var getUrl=window.location;
window.baseurl=getUrl.protocol+"//"+getUrl.host+"/"+getUrl.pathname.split("/")[1]+"/";
var modal = document.getElementById("popupdiv");
var popcontent= document.getElementById("popcontent");
var popheader = document.getElementById("popheader");
function open_pending_orders(){
	    // getpending_orders();
		$("tr").removeClass("selected");
		$(".hide_content").hide();
		// $("#pending_orders_div").css("height","auto");
		$('#Pending_orders').closest('.dataTables_scrollBody').css('max-height', '72vh');
        // $('#Pending_orders').DataTable().draw();
		document.getElementById("p_o1").style.display="block";
		// document.getElementById("order_items_c").style.height="210px";
		document.getElementById("pending_orders_btn").setAttribute('onclick',  'close_pending_orders()');
}
function close_pending_orders(){
	    document.getElementById("order_items_c").style.height="150px";
   		document.getElementById("pending_orders_btn").setAttribute('onclick',  'open_pending_orders()');
		document.getElementById("p_o1").style.display="none";
}
function genraterandom(length) {
    let result = '';
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
    const charactersLength = characters.length;
    let counter = 0;
    while (counter < length) {
      result += characters.charAt(Math.floor(Math.random() * charactersLength));
      counter += 1;
    }
    return result;
}
var random = genraterandom(5);
function getpending_orders(){
		var name_of_company = document.getElementById('serach_name_of_company').value;
		var branch_name = document.getElementById('serach_branch_name').value;
		var search_party_name =  document.getElementById('search_party_name').value;
		var status =  document.getElementById('status').value;
		if (name_of_company.trim() != "" && branch_name.trim() != "" && search_party_name.trim() != ""){
				var s="@j@";
				var random = genraterandom(5);
				var valuestring =status+s+encodeURI(name_of_company)+s+encodeURI(branch_name)+s+encodeURI(search_party_name)+s+random+s;
				$.ajax({
			  	type: "GET",
			  	url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63240&cloudcode=ceramicdemo&ids=order_status/nameofcompany/branch_name/party_name/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json",
		        success: function(result){
		        	console.log(result);
		        	var resultdata =JSON.stringify(result).toString();
		        	genrate_pending_orders_table(result);
					
		        },
			  	dataType: "json"
				});
				}
		else {
		}	
}
function genrate_pending_orders_table(result){
	// created Table will be fech on div (pending_orders_div)
		const jsonresult = result;//JSON.parse('{"data":'+result+'}');
	// 	var heading_div = '<div style="text-align: left;font-size: 16px;color: #536EC4;font-weight: 600;margin-top:10px;">Pending Orders</div>'
	// 	var header ='<table class="Pending_orders pend_table table table-striped" id="Pending_orders">'+
	// 				'<thead>'+
	// 				'<tr>'+''+
	// 				'<th>Sr.</th>'+
	// 				'<th>ODF No</th>'+
	// 				'<th>Party Name</th>'+
	// 				'<th>City</th>'+
	// 				'<th>State</th>'+
	// 				'<th>Sales Executive</th>'+
	// 				'<th>Total Order Qty</th>'+
	// 				'<th>Booked Stock</th>'+
	// 				'<th>Dispatched Qty</th>'+
	// 				'<th>Pending To Dispatch</th>'+
	// 				'<th>Order Bal Qty</th>'+
	// 				'<th>Status</th>'+
	// 				'<th>Sales Order No</th>'+
	// 				'<th>Sales Co-ordinator</th>'+
	// 				// '<th>Action</th>'+
	// 				'</tr></thead>'+
	// 				'<tbody>';
	// 				var tablebody="";
	// for(j=0;j<jsonresult.length;j++){
	// 	data=jsonresult[j];
	// 	var oddoreven = j%2?'oddrow':'evenrow';
	// 	var onclick = "getOrder_item_details("+data.AID+",'"+data.NAME_OF_COMPANY+"','"+data.BRANCH_NAME+"','"+data.ODF_NO+"','"+data.SALES_ORDER_NO+"','"+data.PARTY_NAME.replaceAll("'","")+"')";
	// 	var onclick_delete_odf = "deleterecordrowwise("+data.AID+",'"+data.ODF_NO+"')";
	// 	var field = '<tr class="'+oddoreven+' '+"lastTd"+'" >'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+(j+1)+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.ODF_NO+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.PARTY_NAME+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.CITY+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.STATE+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.SALES_EXECUTIVE+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.ORDER_QTY+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.Book_Stock+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.Issued_qty+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.Balance_booked_qty+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.PENDING_QTY+'</a>'+'</td>'+
	// 				'<td style="text-align: center;vertical-align: middle;height: 45px;line-height: 0px;" class="">'+'<a class="rowheader hide_onhover" style="line-height:25px;">'+data.STATUS+'</a>'+'<div style="display:flex;"><button class="printbuttonrow show_onhover" onclick="openreportpopuprow('+data.AID+')" ><i class="fa-solid fa-print" style="color: #2E65CD;"></i></button>'+'<button class="deletebuttonrow show_onhover" onclick="'+onclick_delete_odf+'" ><i class="fa-solid fa-trash" style="color: #2E65CD;"></i></button></div>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.SALES_ORDER_NO+'</a>'+'</td>'+
	// 				'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.SALES_COORDINATOR+'</a>'+'</td>'+
					
	// 				// '<td style="text-align:center;">'+'<button class="printbuttonrow" onclick="openreportpopuprow('+data.AID+')" ><i class="fa-solid fa-print" style="color: #2E65CD;"></i></button>'+'<button class="deletebuttonrow" onclick="'+onclick_delete_odf+'" ><i class="fa-solid fa-trash" style="color: #2E65CD;"></i></button>'+'</td>'+
	// 				'</tr>';
	// 	tablebody += field;
	// }
	// 	  document.getElementById("pending_orders_div").innerHTML =heading_div+header+tablebody+'</tbody></table>';
  	    //  $('#Pending_orders').DataTable({
		// 	pageLength: 50,
		// 	scrollY: '400px',
		// 	"sScrollX": "100%",
    	// 	"sScrollXInner": "110%",
		// 	"bScrollCollapse": true,
        // 	scrollCollapse: true,
  	    //  } 
  	     
  	    //  );
			var serial_numb = 1;
			var tables;
			if ($.fn.dataTable.isDataTable("#Pending_orders")) {
					tables = $("#Pending_orders").DataTable();
					tables.clear();
					tables.rows.add(jsonresult).draw();
					$($.fn.dataTable.tables(true)).DataTable().columns.adjust();
				}
			  else{
				  $.fn.dataTable.moment('DD/MM/YYYY');
				  tables =  $('#Pending_orders').DataTable({
					data: jsonresult,
					scrollY: '72vh',
					scrollX: true,
					scrollCollapse: true,
					fixedColumns:   {
						left: 2,
						right: 1
					},
				  lengthMenu: [[20,50,100,500 , 1000, -1],[20,50,100, 500, 1000, 'All']],
				//   "order": [[0, 'asc']],
				  columns: [
				//   {"title": "Sr.",
				// 	  render: function (data, type, row, meta) {
				// 		  return meta.row + meta.settings._iDisplayStart + 1;
				// 	  }
				//   },
				
				  { data: "ODF_NO", title: "Sr." },
				  { data: "ODF_NO", title: "ODF No." },
				  { data: "SALES_ORDER_NO", title: "Sales Order No." },
				  { data: "PARTY_NAME", title: "Party Name" },
				  { data: "CITY", title: "City" },
				  { data: "STATE", title: "State" },
				  { data: "SALES_COORDINATOR", title: "Sales Coordinator" },
				  { data: "SALES_EXECUTIVE", title: "Sales Executive" },
				  { data: "ORDER_QTY", title: "Order Qty" },
				  { data: "Book_Stock", title: "Book Stock" },
				  { data: "Issued_qty", title: "Issued Qty" },
				  { data: "Balance_booked_qty", title: "Balance Booked Qty" },
				  { data: "PENDING_QTY", title: "Pending Qty" },
				  { data: "STATUS", title: "Status" },
				//   { data: "ODF_DATE", title: "ODF_DATE" },
				//   { data: "NAME_OF_COMPANY", title: "NAME_OF_COMPANY" },
		
				//   {
				// 			  title: "Action",
				// 			  data: null,
				// 			  "render": function ( data,type,row) {
		
				// 		return '<div class="tableicons"><i class="fa-solid fa-print" style="color:#2E65CD" onclick="openreportpopuprow('+data.AID+')"></i><i class="fa-solid fa-trash" style="color:#2E65CD" onclick="deleterecordrowwise('+data.AID+',\''+data.ODF_NO+'\')"></i></div>'
				// 			},
				// 		  },
				{
            "title": "Action",
            "defaultContent": "<div class='tableicons'><i class='fa-solid fa-print' style='color:#2E65CD'></i><i class='fa-solid fa-trash' style='color:#2E65CD'></i></div>"
          }
				  ],
				columnDefs: [{
                targets: 0,
                data: null,
                "render": function ( data, type, row, meta ) {
                return serial_numb++;
                },
                defaultContent: '0',
                },
				{  className: "inc_zInd", targets: 0 },
				{  className: "inc_zInd", targets: 1 },
				{  className: "inc_zInd", targets: 14 },
			],
		  
			  });

     
			  $('#Pending_orders tbody').on('click', 'td', function () {
				  if ($(this).index() == 14 ) { 
					  return;
				  }   
				  else{
					  $(this).closest('tr').children("td").css("box-shadow","unset");
					  $(this).closest('table').find('tr.selected').removeClass('selected');
					  $(this).closest('tr').addClass("selected");
					  getOrder_item_details(tables.row(this).data().AID,tables.row(this).data().NAME_OF_COMPANY,tables.row(this).data().BRANCH_NAME,tables.row(this).data().ODF_NO,tables.row(this).data().SALES_ORDER_NO,tables.row(this).data().PARTY_NAME.replaceAll("'",""));
				  }                  
				  });
					 $("#menuModal").modal('hide');
					  $("#div_text").text($("#serach_name_of_company").val());
					  setTimeout(()=>{
						  $($.fn.dataTable.tables(true)).DataTable().columns.adjust();
					  },500);
					  // $('#Pending_orders  td').on('click', function() {
					  // 	$(this).closest('tr').children("td").css("box-shadow","unset");
					  // 	$(this).closest('table').find('tr.selected').removeClass('selected');
					  // 	$(this).closest('tr').addClass("selected");
					  //   });
			  }

  		// document.getElementById("pending_orders_div").style.display="block";
		//   document.getElementsByClassName("even").style.background = "#f5f5f5";
	
}

$(document).ready(function() {
  //Highlight clicked row
  $('#Pending_orders  td').on('click', function() {
    // Remove previous highlight class
    $(this).closest('table').find('tr.selected').removeClass('selected');
    // add highlight to the parent tr of the clicked td
    $(this).closest('tr').addClass("selected");
  });
  $('#Pending_order_items  td').on('click', function() {
    // Remove previous highlight class
    $(this).closest('table').find('tr.selected').removeClass('selected');
    // add highlight to the parent tr of the clicked td
    $(this).closest('tr').addClass("selected");
  });
  $('#Pending_order_items_stock_table  td').on('click', function() {
    // Remove previous highlight class
    $(this).closest('table').find('tr.selected').removeClass('selected');
    // add highlight to the parent tr of the clicked td
    $(this).closest('tr').addClass("selected");
  });
});
function getOrder_item_details(AID,NAME_OF_COMPANY,BRANCH_NAME,ODF_NO,SALES_ORDER_NO,PARTY_NAME){
	//document.getElementById("pending_orders_filter").style.display="none";
		$(this).parent().css("background-color","#c1e5ff");
		$('#Pending_orders').closest('.dataTables_scrollBody').css('max-height', '200px');
        // $('#Pending_orders').DataTable().draw();
		$(".hide_content").show();
		$("#pending_orders_btn").hide();
		document.getElementById("AID").value=AID;
		document.getElementById("NAME_OF_COMPANY").value=NAME_OF_COMPANY;
		document.getElementById("BRANCH_NAME").value=BRANCH_NAME;
		document.getElementById("ODF_NO").value=ODF_NO;
		document.getElementById("SALES_ORDER_NO").value=SALES_ORDER_NO;
		document.getElementById("PARTY_NAME").value=decodeURI(PARTY_NAME);
		// document.getElementById("pending_orders_div").style.height="18.8rem";
		// document.getElementById("pending_orders_div").style.display="none";
		document.getElementById("BookStock").style.display="none";
		genrateOrder_item_detailsTable();
}

function genrateOrder_item_detailsTable(){
	
	var AID = document.getElementById("AID").value;
	var random = genraterandom(5);
	$.ajax({
		  type: "GET",
		  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63264&ids=AID/random/&"+"valuestring="+AID+"@j@"+random+"@j@&cloudcode=ceramicdemo&type=json"											
			,   success: function(result){
	        	var divname="order_items_c";
	        	// console.log('Item data --- ');
	        	console.log(result);
	        	const jsonresult = result;
	        	var header ='<table class="Pending_order_items" id="Pending_order_items" style="border: 1px solid #dfdfdf;border-radius: 5px;">'+
	        	'<thead>'+
	        	'<tr style="background:transparent;border-bottom: 1px solid #dfdfdf;font-size:12px;">'+''+
	        	'<th style="color:black;">Sr.</th>'+
	        	'<th style="color:black;">Size</th>'+
	        	'<th style="color:black;">Category</th>'+
	        	'<th style="color:black;">Design</th>'+
	        	'<th style="color:black;">Brand</th>'+
	        	'<th style="color:black;">Quality</th>'+
	        	'<th style="color:black;">Packing Code</th>'+
	        	'<th style="color:black;">Packing Qty</th>'+
	        	'<th style="color:black;">Order Qty</th>'+
	        	'<th style="color:black;">Book Qty</th>'+
	        	'<th style="color:black;">Dispatched Qty</th>'+
	        	'<th style="color:black;">Pending To Dispatch</th>'+
	        	'<th style="color:black;">Order Bal Qty</th>'+
	        	'</tr></thead>'+
	        	'<tbody>';
	        	var tablebody ="";
	        	var total_order_qty=0;
	        	var total_book_qty=0;
	        	var total_issued_qty=0;
	        	var total_balance_booked_qty=0;
	        	var total_order_balance_qty=0;
	        	var total_packing_qty=0;
	        	for(j=0;j<jsonresult.length;j++){
	        		data=jsonresult[j];
	        		var oddoreven = j%2?'oddrow':'evenrow';
	        		var onclick ="openbook_stock('"+data.NAME_OF_COMPANY+"','"+data.BRANCH_NAME+"','"+data.ITEM_CODE+"','"+data.QUALITY+"','"+data.BRAND+"','"+data.PACKING_CODE+"',"+data.PACKING_QTY+","+data.BID+","+data.CID+",'"+data.SIZE+"','"+data.CATEGORY+"','"+data.DESIGN+"',"+data.ORDER_QTY+")";
	        		var field = '<tr class="'+oddoreven+'" >'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+(j+1)+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.SIZE+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.CATEGORY+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.DESIGN+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.BRAND+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.QUALITY+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.PACKING_CODE+'</a>'+'</td>'+
	        		'<td onclick="'+onclick+'" style="text-align:right;">'+'<a class="rowheader" >'+data.PACKING_QTY+'</a>'+'</td>'+
	        		'<td class="alignright" onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.ORDER_QTY+'</a>'+'</td>'+
	        		'<td class="alignright" onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.BOOK_QTY+'</a>'+'</td>'+
	        		'<td class="alignright" onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.ISSUED_QTY+'</a>'+'</td>'+
	        		'<td class="alignright" onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.BALANCE_BOOK_QTY+'</a>'+'</td>'+
	        		'<td class="alignright" onclick="'+onclick+'" >'+'<a class="rowheader" >'+data.PENDING_QTY+'</a>'+'</td>'+
	        		'</tr>';
	        		tablebody += field;
	        		total_order_qty += data.ORDER_QTY;
	        		total_book_qty += data.BOOK_QTY;
	        		total_issued_qty += data.ISSUED_QTY;
	        		total_balance_booked_qty += data.BALANCE_BOOK_QTY;
	        		total_order_balance_qty +=data.PENDING_QTY;
	        		total_packing_qty +=data.PACKING_QTY;
	        	}
				if(jsonresult.length < 4){
						tablebody =(jsonresult.length == 0 ? tablebody +="<tr></tr><tr style='text-align:center;'>Stock is not Available</tr><tr></tr><tr></tr>":tablebody); 
						tablebody =(jsonresult.length == 1 ? tablebody +="<tr></tr><tr></tr><tr></tr>":tablebody); 
						tablebody =(jsonresult.length == 2 ? tablebody +="<tr></tr><tr></tr>":tablebody); 
						tablebody =(jsonresult.length == 3 ? tablebody +="<tr></tr>":tablebody); 
				}
	        	// document.getElementById("total_order_qty").value=total_order_qty;
	        	// document.getElementById("total_book_qty").value=total_book_qty;
	        	// document.getElementById("total_balance_booked_qty").value=total_balance_booked_qty;
	        	// document.getElementById("total_issued_qty").value=total_issued_qty;
	        	// document.getElementById("total_order_balance_qty").value=total_order_balance_qty;
       		     if (jsonresult.length>0){   	
	        	footerdata= jsonresult[0];
	        	// document.getElementById("total_order_qty_weight_tons").value=footerdata.TOTAL_ORDER_QTY_WEIGHT_TONS;
	        	// document.getElementById("total_book_qty_weight_tons").value=footerdata.TOTAL_BOOK_QTY_WEIGHT_TONS;
	        	// document.getElementById("total_issued_qty_weight_tons").value=footerdata.TOTAL_ISSUED_QTY_WEIGHT_TONS;
	        	// document.getElementById("total_balance_book_qty_weight_tons").value=footerdata.TOTAL_BALANCE_BOOK_QTY_WEIGHT_TONS;
	        	// document.getElementById("total_order_balance_qty_weight_tons").value=footerdata.PENDING_QTY_WEIGHT_TONS;
       		     }
       		     
	        	// document.getElementById("order_items_c").innerHTML =header+tablebody+'</tbody><tfoot><tr style="text-align: right;font-size:14px;font-weight:700;background-color:#CFE3FC"><td colspan="7" style="">Total</td><td style="text-align:right;font-size:14px;font-weight:700;">'+total_packing_qty+'</td><td style="">'+jsonresult[0].TOTAL_ORDER_QTY+'</td><td style="">'+jsonresult[0].TOTAL_BOOK_QTY+'</td><td style="">'+jsonresult[0].TOTAL_ISSUED_QTY+'</td><td style="">'+jsonresult[0].PENDING_QTY+'</td><td style="">'+jsonresult[0].ORDER_QTY+'</td></tr><tr style="text-align: right;font-size:14px;font-weight:700;background-color:#F1F9FF;"><td colspan="7" ">Weight in Tons</td><td style="text-align:right;font-size:14px;font-weight:700;">'+jsonresult[0].WEIGHT_PER_PCS+'</td><td style="">'+jsonresult[0].TOTAL_ORDER_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].TOTAL_BOOK_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].TOTAL_ISSUED_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].TOTAL_BALANCE_BOOK_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].PENDING_QTY_WEIGHT_TONS+'</td></tr></tfoot></table>';
	        	document.getElementById("order_items_c").innerHTML =header+tablebody+'</tbody><tfoot><tr style="text-align: right;font-size:14px;font-weight:700;background-color:#CFE3FC"><td colspan="7" style="">Total</td><td style="text-align:right;font-size:14px;font-weight:700;"></td><td style="">'+jsonresult[0].TOTAL_ORDER_QTY+'</td><td style="">'+jsonresult[0].TOTAL_BOOK_QTY+'</td><td style="">'+jsonresult[0].TOTAL_ISSUED_QTY+'</td><td style="">'+total_balance_booked_qty+'</td><td style="">'+total_order_balance_qty+'</td></tr><tr style="text-align: right;font-size:14px;font-weight:700;background-color:#F1F9FF;"><td colspan="7" ">Weight in Tons</td><td style="text-align:right;font-size:14px;font-weight:700;"></td><td style="">'+jsonresult[0].TOTAL_ORDER_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].TOTAL_BOOK_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].TOTAL_ISSUED_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].TOTAL_BALANCE_BOOK_QTY_WEIGHT_TONS+'</td><td style="">'+jsonresult[0].PENDING_QTY_WEIGHT_TONS+'</td></tr></tfoot></table>';

				document.getElementById("order_items").style.display="flex";
				$('#Pending_order_items  td').on('click', function() {
					$(this).closest('tr').children("td").css("box-shadow","unset");
					$(this).closest('table').find('tr.selected').removeClass('selected');
					$(this).closest('tr').addClass("selected");
				});
	        },
		  dataType: "json"
		});
}
function openbook_stock(NAME_OF_COMPANY,BRANCH_NAME,ITEM_CODE,QUALITY,BRAND,PACKING_CODE,PACKING_QTY,BID,CID,SIZE,CATEGORY,DESIGN,ORDER_QTY){
	$(this).closest('table').find('tr.selected').removeClass('selected');
    // add highlight to the parent tr of the clicked td
    $(this).closest('tr').addClass("selected");
		$("#pending_orders_btn").show();
		document.getElementById("ITEM_CODE").value=ITEM_CODE;
		document.getElementById("SIZE").value=SIZE;
		document.getElementById("CATEGORY").value=CATEGORY;
		document.getElementById("DESIGN_NAME").value=DESIGN;
		document.getElementById("QUALITY").value=QUALITY;
		document.getElementById("BRAND").value=BRAND;
		document.getElementById("PACKING_CODE").value=PACKING_CODE;
		document.getElementById("PACKING_QTY").value=PACKING_QTY;
		document.getElementById("BID").value=BID;
		document.getElementById("CID").value=CID;
		document.getElementById("ORDER_QTY").value=ORDER_QTY;
		document.getElementById("pending_orders_btn").setAttribute('onclick',  'open_pending_orders()');
		create_odf_table();
    }
function create_odf_table(){
	var NAME_OF_COMPANY = document.getElementById("NAME_OF_COMPANY").value;
	var BRANCH_NAME = document.getElementById("BRANCH_NAME").value;
	var ITEM_CODE = document.getElementById("ITEM_CODE").value;
	var QUALITY = document.getElementById("QUALITY").value;
	var BRAND = document.getElementById("BRAND").value;
	var PACKING_CODE = document.getElementById("PACKING_CODE").value;
	var BID = document.getElementById("BID").value;
	var CID = document.getElementById("CID").value;
	var BOOK_STOCK_FILTER = document.getElementById("BOOK_STOCK_FILTER").value;
	var PACKING_QTY = document.getElementById("PACKING_QTY").value;
	var PACKING_TYPE = document.getElementById("PACKING_TYPE").value;
	var seprator="@j@";
	var random = genraterandom(5);
	var valuestring = encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITEM_CODE)+seprator+encodeURI(QUALITY)+seprator+encodeURI(BRAND)+seprator+encodeURI(PACKING_CODE)+seprator+PACKING_QTY+seprator+encodeURI(PACKING_TYPE)+seprator+BID+seprator+CID+seprator+encodeURI(BOOK_STOCK_FILTER)+seprator+random;
   // console.log(window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63265&ids=NAME_OF_COMPANY/BRANCH_NAME/ITEM_CODE/QUALITY/BRAND/PACKING_CODE/BID/CID/BOOK_STOCK_FILTER/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json");
	$.ajax({
		  type: "GET",
		  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63265&ids=NAME_OF_COMPANY/BRANCH_NAME/ITEM_CODE/QUALITY/BRAND/PACKING_CODE/PACKING_QTY/PACKING_TYPE/BID/CID/BOOK_STOCK_FILTER/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"													
	,success: function(result){
	console.log(result);
	const jsonresult = result;
	var header ='<table class="Pending_order_items_stock_table" id="Pending_order_items_stock_table">'+
	'<thead>'+
	'<tr style="font-size:12px;">'+''+
	'<th>Location</th>'+
	'<th>Batch No</th>'+
	'<th>QC</th>'+
	'<th>Godwon Stock</th>'+
	'<th>Book In Other</th>'+
	'<th>Available Stock</th>'+
	'<th>Book Qty</th>'+
	'<th>DO Qty</th>'+
	'<th>Issued Qty</th>'+
	'<th>Pkg Cd</th>'+
	'<th>GRN Or MRN</th>'+
	'</tr></thead>'+
	'<tbody>';
	var tablebody ="";
	var current_stock= 0;
	var totalbookedstock =0;
	var total_available_to_book=0;
	var total_book_in_other_order=0;
	var issued_quantity=0;
	for(j=0;j<jsonresult.length;j++){
		data=jsonresult[j];
		var oddoreven = j%2?'oddrow':'evenrow';
		var ADD_INFO1= encodeURI(data.ADD_INFO);
		var onchange="saveorupdate("+data.CID+",'"+data.GRN_MRN+"','"+data.BATCH_NO+"','"+data.GODOWN_CODE+"','"+data.GODOWN_NAME+"',"
		+data.AVAILABLE_FOR_BOOK+",'"+ADD_INFO1+"',"+data.ISSUED_QTY+",'"+data.NAME_OF_COMPANY+"','"+data.BRANCH_NAME+"','"+data.ITM_CODE+"','"+data.BRAND+"','"+data.QUALITY+
		"','"+data.PKG_CODE+"','"+data.UNIT+"','BOOK_QTY, DFF_DID','"+j+"','poi_')";
		var onclick="popupbatch_block_details('"+data.NAME_OF_COMPANY+"','"+data.BRANCH_NAME+"','"+data.ITM_CODE+"','"+data.PKG_CODE+"','"+data.BRAND+"','"+data.GRN_MRN+"','"+data.BATCH_NO+"','"+data.GODOWN_NAME+"','"+data.QUALITY+"')";
		var field = '<tr class="'+oddoreven+'" >'+
		'<td class="alignleft" >'+'<input id="poi_DFF_DID_'+j+'" type="hidden" class="editableinput" onchange="'+onchange+'" value="'+data.DFF_DID+'" >'
		+''+
		'<a onclick="'+onclick+'" >'+data.GODOWN_NAME+'</a>'+'</td>'+
		'<td class="alignleft" >'+'<a class="alignleft" onclick="'+onclick+'" >'+data.BATCH_NO+'</a>'+'</td>'+
		'<td class="text-center" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.QUALITY_CHECK+'</a>'+'</td>'+
		'<td class="text-center" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.TOTAL_STOCK_QTY+'</a>'+'</td>'+
		'<td class="text-center" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.BOOK_IN_OTHER_ORDER+'</a>'+'</td>'+
		'<td class="text-center" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.AVAILABLE_FOR_BOOK+'</a>'+'</td>'+
		'<td class="text-center" >'+'<input id="poi_BOOK_QTY_'+j+'" type="numeric" class="editableinput" onchange="'+onchange+'" value="'+data.BOOK_QTY+'" '+data.READONLY_OR_EDITABLE+'></td>'+
		'<td class="text-center" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.DO_QTY+'</a>'+'</td>'+
		'<td class="text-center" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.ISSUED_QTY+'</a>'+'</td>'+
		'<td class="alignleft" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.PKG_CODE+'</a>'+'</td>'+
		'<td class="alignleft" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.GRN_MRN+'</a>'+'</td>'+
		'</tr>';
		current_stock += data.TOTAL_STOCK_QTY;
		totalbookedstock += data.BOOK_QTY;
		total_available_to_book += data.AVAILABLE_FOR_BOOK;
		total_book_in_other_order += data.BOOK_IN_OTHER_ORDER;
		issued_quantity += data.ISSUED_QTY;
		tablebody += field;                        
}
		if(jsonresult.length>0){
			document.getElementById("loadContent").innerHTML =header+tablebody+'</tbody><tfoot><tr style="background: #e1e1e1;text-align: right;font-size:14px;font-weight:700;"><td colspan="3" style="text-align:left;background-color:#F5F5F5;">Total</td><td style="background-color:#F5F5F5;text-align:center;font-size:14px;font-weight:700;" id="current_stock">'+current_stock+'</td><td style="text-align:center;background-color:#F5F5F5;">'+total_book_in_other_order+'</td><td style="text-align:center;background-color:#F5F5F5;">'+total_available_to_book+'</td><td class="alignright" style="background-color:#F5F5F5"><input id="totalbookedstock" class="totalqtyclass" style="border: none;background: #F5F5F5;font-weight: 600;" readonly="true" value='+totalbookedstock+'></td><td style="background-color:#F5F5F5;"></td><td style="text-align:center;background-color:#F5F5F5;">'+issued_quantity+'</td><td style="text-align:center;background-color:#F5F5F5;"></td><td style="text-align:center;background-color:#F5F5F5;"></td></tr></tfoot></table>';
		}
		else {
			document.getElementById("loadContent").innerHTML="Stock Is Not Available ";
			balance_order_stock();
		}
			balance_order_stock();
			document.getElementById("current_stock").value =current_stock;
			document.getElementById("total_available_to_book").value =total_available_to_book;	
			// document.getElementById("total_book_in_other_order").value =total_book_in_other_order;
			// document.getElementById("total_book_in_other_orders").value =total_book_in_other_order;
			// document.getElementById("totalbookedstock").value =totalbookedstock;
			document.getElementById("free_stock").value =(total_available_to_book-totalbookedstock);
			document.getElementById("BookStock").style.display="block";
			document.getElementById("order_h").style.display="flex";
			// document.getElementById("order_items_c").style.height="150px";
			document.getElementById("p_o1").style.display="none"; 
			$('#Pending_order_items_stock_table  td').on('click', function() {
				$('#balance_orders_table tr').removeClass("selected");
				$(this).closest('tr').children("td").css("box-shadow","unset");
				$(this).closest('table').find('tr.selected').removeClass('selected');
				$(this).closest('tr').addClass("selected");
 			 });      	
	        // balance_order_stock();
	        maximumbatch();
	        },
		  dataType: "json"
		});
}

function balance_order_stock(){
	var NAME_OF_COMPANY = document.getElementById("NAME_OF_COMPANY").value;
	var BRANCH_NAME = document.getElementById("BRANCH_NAME").value;
	var ITEM_CODE = document.getElementById("ITEM_CODE").value;
	var QUALITY = document.getElementById("QUALITY").value;
	var BRAND = document.getElementById("BRAND").value;
	var PACKING_CODE = document.getElementById("PACKING_CODE").value;
	var BID = document.getElementById("BID").value;
	var CID = document.getElementById("CID").value;
	var BOOK_STOCK_FILTER = document.getElementById("BOOK_STOCK_FILTER").value;
	var PACKING_QTY = document.getElementById("PACKING_QTY").value;
	var PACKING_TYPE = document.getElementById("PACKING_TYPE").value;
	var random = genraterandom(5);

		var seprator="@j@";
		var valuestring = encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITEM_CODE)+seprator+encodeURI(QUALITY)+seprator+encodeURI(BRAND)+seprator+encodeURI(PACKING_CODE)+seprator+encodeURI(PACKING_QTY)+seprator+encodeURI(PACKING_TYPE)+seprator+BID+seprator+CID+random+seprator;
    	$.ajax({
		  	type: "GET",
		  	url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63268&ids=NAME_OF_COMPANY/BRANCH_NAME/ITEM_CODE/QUALITY/BRAND/PACKING_CODE/PACKING_QTY/PACKING_TYPE/BID/CID/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"													
			,success: function(result){
	        	create_balance_orders_table(result);	        	
	        },
		  	dataType: "json"
		});
}
function maximumbatch(){
	var NAME_OF_COMPANY = document.getElementById("NAME_OF_COMPANY").value;
	var BRANCH_NAME = document.getElementById("BRANCH_NAME").value;
	var ITEM_CODE = document.getElementById("ITEM_CODE").value;
	var QUALITY = document.getElementById("QUALITY").value;
	var BRAND = document.getElementById("BRAND").value;
	var PACKING_CODE = document.getElementById("PACKING_CODE").value;
	var BID = document.getElementById("BID").value;
	var CID = document.getElementById("CID").value;
		var seprator="@j@";
		var random = genraterandom(5);
		var valuestring = encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITEM_CODE)+seprator+encodeURI(QUALITY)+seprator+encodeURI(BRAND)+seprator+encodeURI(PACKING_CODE)+seprator+BID+seprator+CID+seprator+random;
    	$.ajax({
			  type: "GET",
			  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63287&ids=NAME_OF_COMPANY/BRANCH_NAME/ITEM_CODE/QUALITY/BRAND/PACKING_CODE/BID/CID/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"													
			  ,success: function(result){
					const jsonresult = result;
					var header ='<table class="maximumbatch table table-bordered" id="maximumbatch" style="width:100%;">'+
					'<thead>'+
					'<tr style="font-size:12px;">'+''+
					'<th style="background-color:#fff;border:none;">Sr No</th>'+
					'<th style="background-color:#fff;border-bottom:none;">Batch No</th>'+
					'<th style="background-color:#fff;border:none;">Shade</th>'+
					'<th style="background-color:#fff;border-bottom:none;">Available Stock</th>'+
					'</tr></thead>'+
								'<tbody>';
					var tablebody ="";
					var totalorderqty=0;
					var afterorderqty=0;
					hdata=jsonresult[0];	
						for(j=0;j<jsonresult.length;j++){
								data=jsonresult[j];
								var oddoreven = j%2?'oddrow':'evenrow';
								var field = '<tr class="'+oddoreven+'" >'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+(j+1)+'</a>'+'</td>'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+data.BATCH+'</a>'+'</td>'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+data.SHADE+'</a>'+'</td>'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+data.AVAILABLE_QTY+'</a>'+'</td>'+			
								'</tr>';
								tablebody += field;
		   				 }
								document.getElementById("maximumbatchstock2Summary").innerHTML =header+tablebody+'</tbody></table>';
	        	},
		 	  	dataType: "json"
				});	
}
function create_balance_orders_table(result){
			const jsonresult = result;
			var header ='<table class="balance_orders_table" id="balance_orders_table">'+
						'<thead>'+
						'<tr style="font-size:12px;">'+''+
						'<th>Sr No</th>'+
						'<th>ODF No</th>'+
						'<th>ODF Date</th>'+
						'<th>Party Name</th>'+
						'<th>City</th>'+
						'<th>State</th>'+
						'<th>Sales Co-Ordinator</th>'+
						'<th>Sales Executive</th>'+
						'<th>Order Qty</th>'+	
						'<th>Balance Book</th>'+
						'<th>Planned Qty</th>'+
    					'<th>Planned Status</th>'+
						'<th>Planned Date</th>'+
						'<th>Production Status</th>'+
						'</tr></thead>'+
						'<tbody>';
			var tablebody ="";
			var totalorderqty=0;
			var afterorderqty=0;
			var planned_quantity=0;
			hdata=jsonresult[0];
			var total_book_in_other_order=0;
			var total_book_in_other_order2=0;
				for(j=0;j<jsonresult.length;j++){
					data=jsonresult[j];
					var oddoreven = j%2?'oddrow':'evenrow';
					var onclick="openbook_stock_popup('"+data.NAME_OF_COMPANY+"','"+data.BRANCH_NAME+"','"+data.ITEM_CODE+"','"+data.QUALITY+"','"+data.BRAND+"','"+data.PACKING_CODE+"',"+data.BID+","+data.CID+")";
					var field = '<tr class="'+oddoreven+' '+data.CURRENT_ORDER_CHECK+'" >'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+(j+1)+'</a>'+'</td>'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+data.ODF_NO+'</a>'+'</td>'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+data.ODF_DATE+'</a>'+'</td>'+
								'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+data.CLIENT_NAME+'</a>'+'</td>'+
								'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.CITY+'</a>'+'</td>'+
								'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.STATE+'</a>'+'</td>'+
								'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.SALES_COORDINATOR+'</a>'+'</td>'+
								'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.SALES_EXECUTIVE+'</a>'+'</td>'+
								'<td style="text-align:center;">'+'<a class="alignright" onclick="'+onclick+'" >'+data.ORDER_QTY+'</a>'+'</td>'+
								'<td style="text-align:center;">'+'<a class="alignright" onclick="'+onclick+'" >'+data.ODF_ISS_BAL_QTY+'</a>'+'</td>'+
								'<td style="text-align:center;">'+'<a class="alignright" onclick="'+onclick+'" >'+data.PLANNED_QTY+'</a>'+'</td>'+
		    					'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.PLANNED_STATUS+'</a>'+'</td>'+
								'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.PLANNED_DATE+'</a>'+'</td>'+
		    					'<td>'+'<a class="alignright" onclick="'+onclick+'" >'+data.PRODUCTION_STATUS+'</a>'+'</td>'+
								'</tr>';
								total_book_in_other_order+=data.ODF_ISS_BAL_QTY;
								total_book_in_other_order2 +=data.ODF_ISS_BAL_QTY;
					tablebody += field;
					totalorderqty += data.ORDER_QTY;
					planned_quantity += data.PLANNED_QTY;
				}	
					var current_order_qty = document.getElementById("ORDER_QTY").value;
					document.getElementById("rightmenu").innerHTML =header+tablebody+'</tbody><tfoot><tr style="font-size:14px;font-weight:700;"><td colspan="8" style=";background-color:#F5F5F5;">(After Order Stock <input id="afterorderqty2" value="0" class="totalqtyclass" readonly="true" style="border: none;color: red;font-weight: 600;background:none;">)</td><td style="text-align:right;font-size:14px;font-weight:700;background-color:#F5F5F5;"><input id="totalorderqty2" value="0" class="totalqtyclass" readonly="true" style="background-color:#F5F5F5;border: none;font-weight: 600;text-align:center;"></td><td style="background-color:#F5F5F5;"><input id="total_book_in_other_orders2" value="0" class="total_book_in_other_orders2" readonly="true" style="background-color:#F5F5F5;border: none;font-weight: 600;text-align:center;"></td><td style="background-color:#F5F5F5;" colspan="5"><input id="planned_quantity" class="totalqtyclass" readonly="true" style="border: none;font-weight: 600;background-color:#F5F5F5;"></td></tr></tfoot></table>';
					document.getElementById("totalorderqty2").value =totalorderqty;
					document.getElementById("totalorderqty").value =totalorderqty;
					document.getElementById("planned_quantity").value =planned_quantity;
					// document.getElementById("total_book_in_other_orders").value =total_book_in_other_order;
					document.getElementById("total_book_in_other_orders2").value =total_book_in_other_order2;

					var total_stock = document.getElementById("current_stock").value;
					document.getElementById("order_count").value =jsonresult.length;
					document.getElementById("afterorderqty").value = (total_stock-(parseFloat(totalorderqty)));
					document.getElementById("afterorderqty2").value = (total_stock-(parseFloat(totalorderqty)));
					var number = Number($("#afterorderqty2").val());
					if(number > 0){
						$("#afterorderqty2").css("color","#00db00");
					}
					else{
						$("#afterorderqty2").css("color","red");
					}
				
				if((total_stock-(parseFloat(totalorderqty)))>0){
						document.getElementById("afterorderqty").style.background = "#ccffcc";
					}
				else{
						// document.getElementById("afterorderqty").style.background = "#ff9999";
					}
				$('#balance_orders_table td').on('click', function() {
					$('#Pending_order_items_stock_table tr').removeClass("selected");
					$(this).closest('tr').children("td").css("box-shadow","unset");
					$(this).closest('table').find('tr.selected').removeClass('selected');
					$(this).closest('tr').addClass("selected");
 			 	});  
	//document.getElementById("order_items").style.display="block";
}
function saveorupdate(CID,GRN_MRN,BATCH_NO,GODOWN_CODE,GODOWN_NAME,AVAILABLE_FOR_BOOK,ADD_INFO,ISSUED_QTY,NAME_OF_COMPANY,BRANCH_NAME,ITM_CODE,BRAND,QUALITY,PKG_CODE,UNIT,formids,rowno,divid){
	/*console.log('CID -- '+CID+' GRN MRN -- '+GRN_MRN+'Batch no '+BATCH_NO+'Gd Cd -- '+GODOWN_CODE+'GD NM -- '+GODOWN_NAME+'AVL Stk -- '+AVAILABLE_FOR_BOOK+'   Add Info --  '+ADD_INFO+
			'Issue Qty -- '+ISSUED_QTY+'name of com -- '+NAME_OF_COMPANY+'Branch Name -- '+BRANCH_NAME+' Itm Cd -- '+ITM_CODE+' Brand '+BRAND
			+' Qualiy -- '+QUALITY+' Pkg Qty '+PKG_CODE+'UNIT '+UNIT+' formids -- '+formids+'rowno '+rowno);*/
			var DFF_DID = document.getElementById(divid+'DFF_DID'+'_'+rowno).value;
			var BOOK_QTY = document.getElementById(divid+'BOOK_QTY'+'_'+rowno).value;
			if( BOOK_QTY.trim() == ''){document.getElementById(divid+'BOOK_QTY'+'_'+rowno).value="0";
			BOOK_QTY = document.getElementById(divid+'BOOK_QTY'+'_'+rowno).value;
			}
			var seprator="@j@";
			var random = genraterandom(5);
			var valuestring= DFF_DID+seprator+CID+seprator+GRN_MRN+seprator+encodeURI(BATCH_NO)+seprator+encodeURI(GODOWN_CODE)+seprator+encodeURI(GODOWN_NAME)+seprator+AVAILABLE_FOR_BOOK+seprator+ADD_INFO.replaceAll('&','%26')+seprator+ISSUED_QTY+seprator+BOOK_QTY+seprator+encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITM_CODE)+seprator+encodeURI(BRAND)+seprator+encodeURI(QUALITY)+seprator+encodeURI(PKG_CODE)+seprator+encodeURI(UNIT)+seprator+random+seprator;
			if (AVAILABLE_FOR_BOOK>=BOOK_QTY){
					$.ajax({ type: "GET",
					  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63335&ids=DFF_DID/CID/GRN_MRN/BATCH_NO/GODOWN_CODE/GODOWN_NAME/AVAILABLE_FOR_BOOK/ADD_INFO/ISSUED_QTY/BOOK_QTY/NAME_OF_COMPANY/BRANCH_NAME/ITM_CODE/BRAND/QUALITY/PKG_CODE/UNIT/random/&valuestring="+valuestring+""													
						,success: function(result){
							if(result[0].STATUS != 'SUCCESSFUL'){
								alert(result[0].STATUS);
								create_odf_table();
							}
							else {
							   	document.getElementById(divid+'DFF_DID'+'_'+rowno).value=result[0].ODF_DID;
			        			if (divid!='poi_'){
			        				create_odf_table();
			        				}
			        			else{
			        				var lenghttbody = document.getElementById("Pending_order_items_stock_table").tBodies[0].rows.length;
			        				var book_stock_qty =0;
			        			for(j=0;j<lenghttbody;j++){
			        				rowbook_qty = document.getElementById("poi_BOOK_QTY_"+j).value;
			        		 		book_stock_qty += parseFloat(rowbook_qty);
			        			}
			        			document.getElementById("totalbookedstock").value=book_stock_qty;
			        			var avl_to_book = document.getElementById("total_available_to_book").value ;
			        			document.getElementById("free_stock").value= (avl_to_book-book_stock_qty);
								genrateOrder_item_detailsTable();
			        			}	
							}
		     				
					},dataType: "json"});
			}
			else {
				alert('Book Qty : '+BOOK_QTY+' AVAILABLE_FOR_BOOK : '+AVAILABLE_FOR_BOOK);
			}
}
function popupbatch_block_details(NAME_OF_COMPANY,BRANCH_NAME,ITM_CODE,PKG_CODE,BRAND,GRN_MRN,BATCH_NO,GODOWN_NAME,QUALITY){
	$(this).closest('table').find('tr.selected').removeClass('selected');
    // add highlight to the parent tr of the clicked td
    $(this).closest('tr').addClass("selected");
	var seprator="@j@";
	var random = genraterandom(5);
		var valuestring= encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITM_CODE)+seprator+encodeURI(PKG_CODE)+seprator+encodeURI(BRAND)+seprator+encodeURI(GRN_MRN)+seprator+encodeURI(BATCH_NO)+seprator+encodeURI(GODOWN_NAME)+seprator+encodeURI(QUALITY)+seprator+random;
	 $.ajax({
			  type: "GET",
			  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63297&ids=NAME_OF_COMPANY/BRANCH_NAME/ITM_CODE/PKG_CODE/BRAND/GRN_MRN/BATCH_NO/GODOWN_NAME/QUALITY/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"													
	,   	   success: function(result){
				popup_batch_stock_table(result);
		        },
			  dataType: "json"
			});}
	function popup_batch_stock_table(result){
		console.log('creating POPUP from popup_batch_stock_table function');
		// modal.style.height="600px";
		const jsonresult = result;
		var header ='<table class="popup_batch_details" id="popup_batch_details" style="border: 1px solid #ccc;width:100%;">'+
		'<thead style="border-bottom: 1px solid #ccc;">'+
		'<tr style="font-size:12px;">'+''+
		'<th style="color: black;">Sr No</th>'+
		'<th style="color: black;">ODF No</th>'+
		'<th style="color: black;">ODF Date</th>'+
		'<th style="color: black;">Party Name</th>'+
		'<th style="color: black;">City</th>'+
		'<th style="color: black;">State</th>'+
		'<th style="color: black;">Balance Book</th>'+
		'<th style="color: black;">Book Qty</th>'+
		'<th style="color: black;">DO Qty</th>'+
		'<th style="color: black;">Issued Qty</th>'+
		'</tr></thead>'+
		'<tbody>';
		hdata=jsonresult[0];
		var popupheader='<table><tbody>'+
		'<tr style="display: flex;margin-bottom: 50px;justify-content: space-between;align-items: center;margin-top: 25px;"><td><label class="llabel" style="font-size: 11px;color: gray;">Name of Company</label><input value="'+hdata.NAME_OF_COMPANY+'" readonly class="inp_c"></td>'+'<td><label class="rlabel" style="font-size: 11px;color: gray;">Branch</label><input class="inp_c" value="'+hdata.BRANCH+'" readonly></td>'+
		'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Item Code</label><input class="inp_c" value="'+hdata.ITEM_CODE+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Size</label><input class="inp_c" value="'+hdata.SIZE+'" readonly></td>'+
		'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Category</label><input class="inp_c" value="'+hdata.CATEGORY+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Quality</label><input class="inp_c" value="'+hdata.QUALITY+'" readonly></td>'+
		'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Brand</label><input class="inp_c" value="'+hdata.BRAND+'" readonly></td>'+'</tr><tr style="display: flex;margin-bottom: 50px;justify-content: space-between;align-items: center;margin-top: 25px;"><td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Pkg Qty</label><input class="inp_c" value="'+hdata.PKG_QTY+'" readonly></td>'+
		'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Unit</label><input class="inp_c" value="'+hdata.UNIT+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Batch No</label><input class="inp_c" value="'+hdata.BATCH_NO+'" readonly></td>'+
		'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Production Date</label><input class="inp_c" value="'+hdata.PRODUCTION_DATE+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">GRN Or MRN No </label><input class="inp_c" value="'+hdata.GRN_MRN+'" readonly></td>'+
		'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Godown Name</label><input class="inp_c" value="'+hdata.GODOWN_NAE+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Stock Qty</label><input class="inp_c" value="'+hdata.STOCK_QTY+'" readonly></td>'+'</tr>'+
		'</tbody></table>';
		document.getElementById("popheader").innerHTML =popupheader;
		var tablebody ="";
			for(j=0;j<jsonresult.length;j++){
				data=jsonresult[j];
				var oddoreven = j%2?'oddrow':'evenrow';
				console.log('oddoreven  -  '+oddoreven);
				var onchange ="release_stock("+data.DFF_HID+","+data.AVAILABLE_TO_RELEASE_BOOK+","+data.BOOKED_QTY+","+data.ISSUED_QTY+",'"+j+"')";
				var field = '<tr class="'+oddoreven+'" >'+
				'<td>'+'<a class="alignleft" onclick="'+onclick+'" >'+(j+1)+'</a>'+'</td>'+
				'<td class="alignleft" >'+'<input id="poi_DFF_DID_'+j+'" type="hidden" class="editableinput" onchange="'+onchange+'" value="'+data.DFF_HID+'" >'
				+'<a class="alignleft" onclick="'+onclick+'" >'+data.ODF_NO+'</a>'+'</td>'+
				'<td class="alignleft" >'+'<a onclick="'+onclick+'" >'+data.ODF_DATE+'</a>'+'</td>'+
				'<td class="alignleft" >'+'<a class="alignleft" onclick="'+onclick+'" >'+data.PARTY_NAME+'</a>'+'</td>'+
				'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.CITY+'</a>'+'</td>'+
				'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.STATE+'</a>'+'</td>'+
				'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.AVAILABLE_TO_RELEASE_BOOK+'</a>'+'</td>'+
				'<td class="alignright" >'+'<input id="release_book_qty_'+j+'" type="numeric" class="editableinput" onchange="'+onchange+'" value="'+data.BOOKED_QTY+'" '+data.READONLY_OR_EDITABLE+'></td>'+
				'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.DO_QTY+'</a>'+'</td>'+
				'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.ISSUED_QTY+'</a>'+'</td>'+
				'</tr>';
				tablebody += field;
		}
		document.getElementById("popcontent").innerHTML =header+tablebody+'</tbody></table>';
		document.getElementById("headerpopup").innerHTML ='<i class="fa-solid fa-arrow-left" onclick="hide_stock_modal();" style="font-size: 1.5rem;color: #ffd800;padding-right: 15px;cursor:pointer;"></i><a style="font-size:20px;font-weight:500;">Batch Wise Booked Stock Details</a>';
		modal.style.display = "block";
		$("#stock_modal").modal('show');

	}
	function closepop(){
		modal.style.display = "none";
		$("#stock_modal").modal('hide');

	}
	function openbook_stock_popup(NAME_OF_COMPANY,BRANCH_NAME,ITEM_CODE,QUALITY,BRAND,PACKING_CODE,BID,CID){
		var seprator="@j@";
		var PACKING_QTY = document.getElementById("PACKING_QTY").value;
		var PACKING_TYPE = document.getElementById("PACKING_TYPE").value;
		var random = genraterandom(5);
		var valuestring = encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITEM_CODE)+seprator+encodeURI(QUALITY)+seprator+encodeURI(BRAND)+seprator+encodeURI(PACKING_CODE)+seprator+PACKING_QTY+seprator+encodeURI(PACKING_TYPE)+seprator+BID+seprator+CID+seprator+random;
	    console.log(valuestring);
		$.ajax({
			  type: "GET",
			  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63265&ids=NAME_OF_COMPANY/BRANCH_NAME/ITEM_CODE/QUALITY/BRAND/PACKING_CODE/PACKING_QTY/PACKING_TYPE/BID/CID/BOOK_STOCK_FILTER/random/&valuestring="+valuestring+"@j@Show%20All@j@&cloudcode=ceramicdemo&type=json"													
	,   	   success: function(result){
		            console.log("Item Data : ");
		        	create_odf_table_popup(result);
		        	balance_order_stock(NAME_OF_COMPANY,BRANCH_NAME,ITEM_CODE,QUALITY,BRAND,PACKING_CODE,BID,CID);
		        },
			  dataType: "json"
			});
	}	
function create_odf_table_popup(result){
	const jsonresult = result;
	var header ='<table class="Pending_order_items_stock_pop_up"  style="border:1px solid #ccc;width:100%;">'+
	'<thead style="border-bottom: 1px solid #c5c2c2;">'+
	'<tr style="font-size:12px;">'+''+
	'<th style="color:black;">GRN Or MRN</th>'+
	'<th style="color:black;">Location</th>'+
	'<th style="color:black;">Batch No</th>'+
	'<th style="color:black;">Godwon Stock</th>'+
	'<th style="color:black;">Book In Other</th>'+
	'<th style="color:black;">Available Stock</th>'+
	'<th style="color:black;">Book Qty</th>'+
	'<th style="color:black;">DO Qty</th>'+
	'<th style="color:black;">Issued Qty</th>'+
	'</tr></thead>'+
	'<tbody>';
	var tablebody ="";
	var current_stock= 0;
	var totalbookedstock =0;
	hdata=jsonresult[0];
	var popupheader='<table style="width:100%;"><tbody>'+
	'<tr style="display: flex;margin-bottom: 50px;justify-content: space-between;align-items: center;margin-top: 25px;"><td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;"">Name of Company</label><input class="inp_c" value="'+hdata.NAME_OF_COMPANY+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Branch Name</label><input class="inp_c" value="'+hdata.BRANCH_NAME+'" readonly></td>'+
	'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Party Name</label><input class="inp_c" value="'+hdata.PARTY_NAME+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Sales Order No</label><input class="inp_c" value="'+hdata.SALES_ORDER_NO+'" readonly></td>'+
	'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">ODF NO</label><input class="inp_c" value="'+hdata.ODF_NO+'" readonly></td>'+'</tr><tr style="display: flex;margin-bottom: 50px;justify-content: space-between;align-items: center;margin-top: 25px;"><td style="display:grid;"><label style="font-size: 11px;color: gray;" class="rlabel">ODF Date</label><input class="inp_c" value="'+hdata.ODF_DATE+'" readonly></td>'+		
	'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Item Code</label><input class="inp_c" value="'+hdata.ITM_CODE+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Brand</label><input class="inp_c" value="'+hdata.BRAND+'" readonly></td>'+
	'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Category</label><input class="inp_c" value="'+hdata.CATEGORY+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Quality</label><input class="inp_c" value="'+hdata.QUALITY+'" readonly></td>'+'</tr>'+
	'</tbody></table>';
	document.getElementById("popheader").innerHTML =popupheader;
	for(j=0;j<jsonresult.length;j++){
		data=jsonresult[j];
		var oddoreven = j%2?'oddrow':'evenrow';
		console.log('oddoreven  -  '+oddoreven);
		var ADD_INFO1= encodeURI(data.ADD_INFO);
		var onchange="saveorupdate("+data.CID+",'"+data.GRN_MRN+"','"+data.BATCH_NO+"','"+data.GODOWN_CODE+"','"+data.GODOWN_NAME+"',"
		+data.AVAILABLE_FOR_BOOK+",'"+ADD_INFO1+"',"+data.ISSUED_QTY+",'"+data.NAME_OF_COMPANY+"','"+data.BRANCH_NAME+"','"+data.ITM_CODE+"','"+data.BRAND+"','"+data.QUALITY+
		"','"+data.PKG_CODE+"','"+data.UNIT+"','BOOK_QTY, DFF_DID','"+j+"','poi_popup_')";
		var field = '<tr class="'+oddoreven+'" >'+
		'<td class="alignleft" >'+'<input id="poi_popup_DFF_DID_'+j+'" type="hidden" class="editableinput" onchange="'+onchange+'" value="'+data.DFF_DID+'" >'
		+'<a class="alignleft" onclick="'+onclick+'" >'+data.GRN_MRN+'</a>'+'</td>'+
		'<td class="alignleft" >'+'<a onclick="'+onclick+'" >'+data.GODOWN_NAME+'</a>'+'</td>'+
		'<td class="alignleft" >'+'<a class="alignleft" onclick="'+onclick+'" >'+data.BATCH_NO+'</a>'+'</td>'+
		'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.TOTAL_STOCK_QTY+'</a>'+'</td>'+
		'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.BOOK_IN_OTHER_ORDER+'</a>'+'</td>'+
		'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.AVAILABLE_FOR_BOOK+'</a>'+'</td>'+
		'<td class="alignright" >'+'<input id="poi_popup_BOOK_QTY_'+j+'" type="numeric" class="editableinput" onchange="'+onchange+'" value="'+data.BOOK_QTY+'" '+data.READONLY_OR_EDITABLE+'></td>'+
		'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.DO_QTY+'</a>'+'</td>'+
		'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.ISSUED_QTY+'</a>'+'</td>'+
		'<td class="alignright" >'+'<a class="alignright" onclick="'+onclick+'" >'+data.PKG_CODE+'</a>'+'</td>'+
		'</tr>';
		current_stock += data.TOTAL_STOCK_QTY;
		totalbookedstock += data.BOOK_QTY;
		tablebody += field;
}
if(jsonresult.length>0){
	console.log('current_stock -- '+current_stock);
	console.log('totalbookedstock -- '+totalbookedstock);
	document.getElementById("popcontent").innerHTML =header+tablebody+'</tbody></table>';
	document.getElementById("headerpopup").innerHTML ='<i class="fa-solid fa-arrow-left" onclick="hide_stock_modal();" style="font-size: 1.5rem;color: #ffd800;padding-right: 15px;cursor:pointer;"></i><a style="font-size:20px;font-weight:500;">Pending Order Wise Book Stock</a>';
	} else {
		document.getElementById("popcontent").innerHTML="Stock Is Not Available ";
	}
modal.style.display = "block";
$("#stock_modal").modal('show');

}
function getnameofcompany(){
	var name_of_company = document.getElementById('serach_name_of_company').value;
	
	$.ajax({
	type: "GET",
	  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63337&cloudcode=ceramicdemo&ids=nameofcompany/&valuestring="+name_of_company+"@j@&cloudcode=ceramicdemo&type=json"												
	,		success: function(result){
			console.log("Item Data : ");
			console.log(result);
			const jsonresult = result;
			var resultset ="";
			for(j=0;j<jsonresult.length;j++){
			data=jsonresult[j];
			console.log(data.Name_of_Company);
			resultset += '<option value="'+data.Name_of_Company+'">'+data.Name_of_Company+'</option>';
			}
			document.getElementById("serach_name_of_company_list").innerHTML = resultset;
			if(jsonresult.length == 1)
			{
				data=jsonresult[0];
				document.getElementById('serach_name_of_company').value = data.Name_of_Company;
				getpending_orders();
			}

			        },
				  dataType: "json"
				});
	}
function getbranch_name(){
	var s="@j@";
	var name_of_company = document.getElementById('serach_name_of_company').value;
	var branch_name = document.getElementById('serach_branch_name').value;
	$.ajax({
	type: "GET",
	  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63338&cloudcode=ceramicdemo&ids=branch_name/nameofcompany/&valuestring="+branch_name+s+name_of_company+"@j@&cloudcode=ceramicdemo&type=json"											
	,		success: function(result){
			console.log("Item Data : ");
			console.log(result);
			const jsonresult = result;
			var resultset ="";
			for(j=0;j<jsonresult.length;j++){
			data=jsonresult[j];
			console.log(data.Name_of_Company);
			resultset += '<option value="'+data.Branch_Name.split('   ---   ')[0]+'">'+data.Branch_Name+'</option>';
			}
			document.getElementById("serach_branch_name_list").innerHTML = resultset;
			        },
				  dataType: "json"
				});
	}
function getparty_name(){
	var s="@j@";
	var name_of_company = document.getElementById('serach_name_of_company').value;
	var branch_name = document.getElementById('serach_branch_name').value;
	var search_party_name =  document.getElementById('search_party_name').value;

	$.ajax({
	type: "GET",
	  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63339&cloudcode=ceramicdemo&ids=Client_Name/&valuestring="+search_party_name+"@j@&cloudcode=ceramicdemo&type=json"										
	,		success: function(result){
			console.log("Item Data : ");
			console.log(result);
			const jsonresult = result;
			var resultset ="";
			for(j=0;j<jsonresult.length;j++){
			data=jsonresult[j];
			console.log(data.Name_of_Company);
			resultset += '<option value="'+data.Client_Name.split('   ---   ')[0]+'">'+data.Client_Name+'</option>';
			}
			document.getElementById("search_party_name_list").innerHTML = resultset;
			        },
				  dataType: "json"
				});
	}
	
function release_stock(ODF_DID,AVAILABLE_TO_RELEASE,BOOK_QTY,ISSUE_QTY,rowno){
	var booked_qty = document.getElementById('release_book_qty_'+rowno).value;
	if( booked_qty.trim() == ''){document.getElementById('release_book_qty_'+rowno).value="0";
	booked_qty = document.getElementById('release_book_qty_'+rowno).value;
	}
	if (AVAILABLE_TO_RELEASE>=booked_qty){
	    var s="@j@";
		var valuestring= ODF_DID+s+ISSUE_QTY+s+booked_qty+s;
			$.ajax({
				  type: "GET",
				  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=62561&cloudcode=ceramicdemo&ids=ODF_DID/ISSUE_QTY/AVAILABLE_TO_RELEASE/&valuestring="+valuestring+"",
					  success: function(result){
						console.log(result);
						if(result[0].STATUS != 'SUCCESSFUL'){
								alert(result[0].STATUS);
								document.getElementById('release_book_qty_'+rowno).value=result[0].BOOK_QTY;
								create_odf_table();
							}
							else {
								create_odf_table();
							}
				        },
				dataType: "json"
				});
	}
	else {
		alert('Release Qty Should Be Less Than Or Equals to Balance Book');
	}
	}
function Available_stock_item_code_wise_popup(){
    var NAME_OF_COMPANY = document.getElementById("NAME_OF_COMPANY").value;
	var BRANCH_NAME = document.getElementById("BRANCH_NAME").value;
	var ITEM_CODE = document.getElementById("ITEM_CODE").value;
	var QUALITY = document.getElementById("QUALITY").value;
    var seprator="@j@";
	var valuestring = encodeURI(NAME_OF_COMPANY)+seprator+encodeURI(BRANCH_NAME)+seprator+encodeURI(ITEM_CODE)+seprator+encodeURI(QUALITY);
	$.ajax({
		  type: "GET",
		  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63370&cloudcode=ceramicdemo&ids=NAME_OF_COMPANY/BRANCH_NAME/ITEM_CODE/QUALITY/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"												
,   	   success: function(result){
			console.log("Item Data : ");
	        console.log(result);
			const jsonresult = result;
			var header ='<table class="Available_stock_ietm_code_wise" id="Available_stock_ietm_code_wise" style="width:100%;border: 1px solid #c5c5c5;">'+
				'<thead style="border-bottom: 1px solid #c5c2c2;">'+
				'<tr style="font-size:12px;">'+''+
				'<th style="color:black;">Sr No</th>'+
				'<th style="color:black;">Brand</th>'+
				'<th style="color:black;">Pkg Code</th>'+
				'<th style="color:black;">Pkg Qty</th>'+
				'<th style="color:black;">Stock Qty</th>'+
				'<th style="color:black;">Booked Qty</th>'+
				'<th style="color:black;">Free Stock</th>'+
				'</tr></thead>'+
				'<tbody>';
				var tablebody ="";
				var total_STOCK_QTY =0;
				for(j=0;j<jsonresult.length;j++){
					data=jsonresult[j];
					var oddoreven = j%2?'oddrow':'evenrow';
					console.log('oddoreven  -  '+oddoreven);
					var field = '<tr class="'+oddoreven+'" >'+
					'<td class="alignleft" >'+'<a>'+(j+1)+'</a>'+'</td>'+
					'<td class="alignleft" >'+'<a>'+data.BRAND+'</a>'+'</td>'+
					'<td class="alignleft" >'+'<a>'+data.PKG_CODE+'</a>'+'</td>'+
					'<td class="alignright" >'+'<a>'+data.PKG_QTY+'</a>'+'</td>'+
					'<td class="alignright" >'+'<a>'+data.STOCK_QTY+'</a>'+'</td>'+
					'<td class="alignright" >'+'<a>'+data.BOOKED_QTY+'</a>'+'</td>'+
					'<td class="alignright" >'+'<a>'+data.FREE_STOCK+'</a>'+'</td>'+
					'</tr>';
					total_STOCK_QTY += data.STOCK_QTY;
					tablebody += field;
			}
			document.getElementById("popcontent").innerHTML =header+tablebody+'</tbody></table>';  
			document.getElementById("headerpopup").innerHTML ='<i class="fa-solid fa-arrow-left" onclick="hide_stock_modal();"style="font-size: 1.5rem;color: #ffd800;padding-right: 15px;cursor:pointer;"></i><a style="font-size:20px;font-weight:500;">Item Code Wise Other Available Stock</a>'
	    	hdata=jsonresult[0];
	    	var popupheader='<table style="width:100%"><tbody>'+
	    	'<tr style="display:flex;margin-bottom: 50px;justify-content: space-between;align-items: center;margin-top: 25px;"><td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Name of Company</label><input class="inp_c" value="'+hdata.NAME_OF_COMPANY+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Branch Name</label><input class="inp_c" value="'+hdata.BRANCH+'" readonly></td>'+
	    	'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Item Code</label><input class="inp_c" value="'+hdata.ITEM_CODE+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Size</label><input class="inp_c" value="'+hdata.SIZE+'" readonly></td>'+'</tr>'+
	    	'<tr style="display:flex;margin-bottom: 50px;justify-content: space-between;align-items: center;margin-top: 25px;"><td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Category</label><input class="inp_c" value="'+hdata.CATEGORY+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Quality</label><input class="inp_c" value="'+hdata.QUALITY+'" readonly></td>'+
	    	'<td style="display:grid;"><label class="llabel" style="font-size: 11px;color: gray;">Design</label><input class="inp_c" value="'+hdata.DESIGN+'" readonly></td>'+'<td style="display:grid;"><label class="rlabel" style="font-size: 11px;color: gray;">Total Stock Qty</label><input class="inp_c" value="'+total_STOCK_QTY+'" readonly></td>'+'</tr>'+
	    	'</tbody></table>';
	    	document.getElementById("popheader").innerHTML =popupheader;
			// modal.style.height="600px";
			modal.style.display = "block";
			$("#stock_modal").modal('show');

	        },
		  dataType: "json"
		});	
}
function openreportpopup(reportname){
	
	var AID = document.getElementById("AID").value;
	if( AID.trim() == ''){
	}
	else{
	var url_popup = window.baseurl+"sendMailReport.do?actn=PrintData&idlist=@&fieldid="+AID+"&fieldId="+AID+"&fieldValue=&formid=2575&matchingFields=&reportid="+AID+"&moduleconditions=&reportname="+reportname;
	window.open(url_popup,'Pending To deispatch','height=600,width=700');
	}
}
function openreportpopuprow(AID){
	var url_popup = window.baseurl+"sendMailReport.do?actn=PrintData&idlist=@&fieldid="+AID+"&fieldId="+AID+"&fieldValue=&formid=2575&matchingFields=&reportid="+AID+"&moduleconditions=&reportname=Order%20Fulfillment%20Item%20Wise";
	window.open(url_popup,'Pending To deispatch','height=600,width=700');
}
document.onkeydown = function(e){
    e = e || window.event;
    var key = e.which || e.keyCode;
    if(event.altKey && event.which === 80){
     openreportpopup('Order%20Fulfillment%20Item%20Wise');
    }
    if(event.which === 27){
    	closepop();
       }
}
function checkparameterforautoloaddetails(){
	var R_AID = '<%=request.getParameter("AID")%>';
	var R_nameofcompany = '<%=request.getParameter("nameofcompany")%>';
	var R_branch_name = '<%=request.getParameter("branch_name")%>';
	var R_odf_no = '<%=request.getParameter("odf_no")%>';
	var R_so_no = '<%=request.getParameter("so_no")%>';
	var R_party_name = '<%=request.getParameter("party_name")%>';
	if (R_AID != 'null'){
		document.getElementById("p_o1").style.display="none";
		document.getElementById("AID").value=R_AID;
		document.getElementById("NAME_OF_COMPANY").value=R_nameofcompany;
		document.getElementById("BRANCH_NAME").value=R_branch_name;
		document.getElementById("ODF_NO").value=R_odf_no;
		document.getElementById("SALES_ORDER_NO").value=R_so_no;
		document.getElementById("PARTY_NAME").value=decodeURI(R_party_name);
		document.getElementById('search_party_name').value=decodeURI(R_party_name);
		document.getElementById("serach_name_of_company").value=R_nameofcompany;
		getnameofcompany();
		genrateOrder_item_detailsTable();
		// document.getElementById("pending_orders_div").style.height="18.8rem";
		// document.getElementById("order_items_c").style.height="300px";
		document.getElementById("order_items_c").style.height="150px";
		document.getElementById("order_h").style.display="flex";
		$(".hide_content").css("display","block");
		document.getElementById("BookStock").style.display="none";
	}
}
$(document).on('click', function (e) {
    if ($(e.target).closest("#printmenu").length === 0) {
        
    }
});
// function showprintmeun(){
// 	document.getElementById('printmenu').style.display="grid";
// 	$("#printmenu").css("display", "block");
// }


$("#printlistshow").click(function(e){
    $("#printmenu").show();
     e.stopPropagation();
});

$("#printmenu").click(function(e){
    e.stopPropagation();
});

$(document).click(function(){
    $("#printmenu").hide();
});

var popupList = document.getElementById('printmenu');
var button = document.getElementById('printlistshow');
// window.onclick = function(event) {
//     if (event.target != popupList && event.target != button){
//       popupList.style.display = "none";
//   }
//   }
function getprintlist(){
$.ajax({
		type: "GET",
	  	url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63390&cloudcode=ceramicdemo&ids=formname/&valuestring=ODF@j@&cloudcode=ceramicdemo&type=json"												
		,success: function(result){
			const jsonresult = result;
			var resultset ="";
			var header='<table class="printlist_table" id="printlist_table"><tbody>';
			var tablebody="";
			for(j=0;j<jsonresult.length;j++){
			data=jsonresult[j];
			var onclick = "openreportpopup('"+data.REPORT_NAME+"')";
			var oddoreven = j%2?'oddrow':'evenrow';
			field ='<tr class="'+oddoreven+'" >'+
			'<td>'+'<a class="rowheader" onclick="'+onclick+'" >'+data.REPORT_NAME+'</a>'+'</td></tr>';
			tablebody += field;
			}
			document.getElementById("printmenu").innerHTML =header+tablebody+'</tbody></table>';
			}, dataType: "json"
			});
}
function deleterecord(){
	var ODF_NO=document.getElementById("ODF_NO").value;
	if (confirm("Are You Sure! You Want To Delete ODF No "+ODF_NO) == true) {
	    console.log('you press ok');
	    var AID =document.getElementById("AID").value;
	    var random = genraterandom(6);
	    var s="@j@";
	    var valuestring= AID+s+random;
	    $.ajax({
	    		type: "GET",
	    			  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63392&ids=AID/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"													
	    		,success: function(result){
	    			const jsonresult = result;
	    			if(result[0].STATUS != 'SUCCESSFUL'){
						alert(result[0].STATUS);
					} else {
	    			document.getElementById("BookStock").style.display="none";
	    			document.getElementById("p_o1").style.display="block";
	    			document.getElementById("order_items").style.display="none";
	    			document.getElementById("pending_orders_div").style.height="600px";
	    			getpending_orders();
					}
	    			console.log(jsonresult);
	    			}, dataType: "json"
	    			});
	    
	  } else {
	  	    console.log('you press cancel');
	  }
}

function deleterecordrowwise(AID,ODF_NO){
	
	if (confirm("Are You Sure! You Want To Delete ODF No "+ODF_NO) == true) {
	    console.log('you press ok');
	    var random = genraterandom(6);
	    var s="@j@";
	    var valuestring= AID+s+random;
	    $.ajax({
	    		type: "GET",
	    			  url: window.baseurl+"getFunction.do?actn=getsqljsondata&sqlfieldid=63392&ids=AID/random/&valuestring="+valuestring+"@j@&cloudcode=ceramicdemo&type=json"													
	    		,success: function(result){
	    			const jsonresult = result;
	    			if(result[0].STATUS != 'SUCCESSFUL'){
						alert(result[0].STATUS);
					} else {
	    			getpending_orders();
					}
	    			console.log(jsonresult);
	    			}, dataType: "json"
	    			});
	    
	  } else {
	  	    console.log('you press cancel');
	  }
	
}
function opennewodfform(){
	var url_popup = window.baseurl+"getFormLink.do?actn=EditEnter&formid=2575&reportid=-1&id=2575&ask=COMMAND_NAME_1";
	//window.open(url_popup,'Pending To deispatch','height=600,width=1000');
	previewUrl(url_popup,'popupdivformdata');
	document.getElementById("popupdivform").style.display="block";
}


function previewUrl(url,target){
    //use timeout coz mousehover fires several times
    clearTimeout(window.ht);
    window.ht = setTimeout(function(){
        var div = document.getElementById(target);
        div.innerHTML = '<iframe style="width:100%;height:100%;" frameborder="0" src="' + url + '" />';
    },20);      
}   
function closeformpop(){
	document.getElementById("popupdivform").style.display="none";
	getpending_orders();
}
try
{
	var originalClose = parent.jQuery.colorbox.close;
	parent.jQuery.colorbox.close = function(){
		try{
			parent.retrievefieldvalues(parent.document.forms[0]['idselected'].value);
			originalClose();
			parent.jQuery.colorbox.close = originalClose;
		}
		catch(e){
			originalClose();
			parent.jQuery.colorbox.close = originalClose;
		}
	};
}
catch(e)
{
	console.log(e);
}
getprintlist()
getnameofcompany()
checkparameterforautoloaddetails()
</script>
<script>
	function openModal(){
		$('#menuModal').modal('show');
	}
	function hide_stock_modal(){
		$('#stock_modal').modal('hide');
	}
</script>
</body>
</html>