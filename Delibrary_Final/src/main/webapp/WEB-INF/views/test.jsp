<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.5/css/bootstrap.min.css">
    <style type="text/css">
    /* tables */
	@import url("https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css");
	@import url("https://fonts.googleapis.com/css?family=Roboto+Condensed:400,300,700|Source+Sans+Pro:100,300,400,600,700,300italic,400italic,600italic,700italic");
	$heading_font: 'Roboto Condensed';
	.databaseTable_holder {
	  //border-radius: 4px;
	  overflow: hidden;
	  margin: 3rem auto 3rem auto;
	  display: table;
	  table-layout: fixed;
	  width: 100%;
	}
	div[class*="databaseTable_import_wrap"] {
		max-width: 100%;
		overflow-x: scroll;
		overflow-y: scroll;
		overflow: -moz-scrollbars-none;
		-ms-overflow-style: none;
		border: 1px solid #ccc;
	  //border-radius: 0 0 4px 4px;
		border-top: none;
	}
	.databaseTable {
			position: relative;
			//border-radius: 4px;
	}
	.databaseTable_import_wrap div img {
		padding: 40px;
	}
	.databaseTable_import_wrap div {
		font: 1em/1.5em "Source Sans Pro", segoe ui, arial, sans-serif;
		text-transform: uppercase;
		padding: 1.25em;
	}
	.databaseTable_heading {
		background-color: #7EB535;
		color: #fff;
		font-weight: normal;
		height: 3em;
		position: relative;
	}
	.databaseTable_title {
		position: absolute;
		left: 0.75rem;
		top: 0;
		bottom: 0;
		font: 100 1.5em/2em $heading_font;
		width: calc( 100% - 202px - 1em ); /* width of searchbox */
	  text-overflow: ellipsis;
		overflow: hidden;
	  white-space: nowrap; 
	}
	.databaseTable_heading:after {
		content: '';
		position: absolute;
		bottom: 0;
		left: 0;
		right: 0;
		height: 0.125em;
		background: rgba(0,0,0,0.1);
	}
	.databaseTable_heading input {
		position: absolute;
		right: 0;
		top: 0;
		bottom: 0;
		margin: 0;
		height: 100%;
		padding: 0px 0.5em;
		border: none;
		background: rgba(0,0,0,0.15);
		color: #fff;
		font: 100 1em/1.8em "Source Sans Pro", segoe ui, arial, sans-serif;
	}
	.databaseTable_import {
		font: 1em/1.5em "Source Sans Pro", segoe ui, arial, sans-serif;
		background-color: #fff;
		margin: 0px;
		width: 100%;
		text-align: left;
		border-collapse: collapse;
	}
	.databaseTable_import tr.even {
	  background: #f5f5f5;
	}
	.databaseTable_import th {
		background-color: #efefef;
		border-bottom: solid 0.125em #dfdfdf;
		color: #444;
		padding: 0.5em 0.5em;
		text-transform: uppercase;
		font: 700 1em/1em roboto condensed, arial, sans-serif;
	}
	.databaseTable_import th:hover {
		background-color: #efefef;
		border-bottom: solid 0.125em #D28700;
	}
	.databaseTable_import .headerSortUp {
		background-image: url(https://campus.mst.edu/emctest/t4_template/content_types/search_sort_table/images/asc.gif);
	}
	.databaseTable_import .headerSortDown {
		background-image: url(https://campus.mst.edu/emctest/t4_template/content_types/search_sort_table/images/desc.gif);
	}
	.databaseTable_import .headerSortDown, .databaseTable_import .headerSortUp {
		border-bottom-color: #D28700;
		background-color: #f9f9f9;
	}/*
	.databaseTable_import .header:first-of-type {
		border-left: 1px solid #ccc;
	}*/
	.databaseTable_import thead tr .header {
		background-image: url(https://campus.mst.edu/emctest/t4_template/content_types/search_sort_table/images/bg.gif);
	  background-size: 1.333em;
		background-repeat: no-repeat;
		background-position: center right;
		cursor: pointer;
		padding-right: 2em;
		border-right: 1px solid #ccc;
	}
	.databaseTable_import td {
		color: #333;
		padding: 0.25em 0.5em;
		vertical-align: middle;
		white-space: nowrap;
		border: none;
		border-bottom: 1px solid #ccc;
		border-right: 1px solid #ccc;
		font: 1em/1.25em roboto condensed, arial, sans-serif;
	
	}
	.databaseTable_import tr:last-of-type td {
	  border-bottom: none;
	}
	.databaseTable_import td:last-of-type, .databaseTable_import .header:last-of-type {
	    border-right: none;   
	}
	.databaseTable_import td {
		position: relative;	
	}
	.databaseTable_import td:nth-of-type(even):after {
		display: none;
	  content: '';
		background: rgba(186, 180, 139, 0.09);
		position: absolute;
		top: 0;
		right: 0;
		bottom: 0;
		left: 0; 
	}
	.databaseTable_heading input:focus, .databaseTable_heading input:hover {
		background: rgba(0,0,0,0.2);
	  border: none;
	  outline: none;
	}
	.databaseTable_heading input::-webkit-input-placeholder {
		color: #fff;
	}
	.databaseTable_heading input:-moz-input-placeholder {
		color: #fff;
	}
	.databaseTable_heading input::-moz-input-placeholder {
		color: #fff;
	}
	.databaseTable_import_wrap::-webkit-scrollbar { 
	    display: none; 
	}
	.databaseTable_heading input:focus::-webkit-input-placeholder {
		color: transparent !important;
	}
	.databaseTable_heading input:focus:-moz-input-placeholder {
		color: transparent !important;
	}
	.databaseTable_heading input:focus::-moz-input-placeholder {
		color: transparent !important;
	}
	.databaseTable_UI_button {
		background: rgba(0,0,0,0.2);
		width: 5%;
		min-width: 3.75em;
	}
	.databaseTable_UI_scrollRight {
		position: absolute;
		top: 0;
		right: 0;
	  bottom: 0;
		background: -moz-linear-gradient(left,  rgba(0,0,0,0) 0%, rgba(0,0,0,0.0195) 25%, rgba(0,0,0,0.1105) 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(0,0,0,0)), color-stop(25%,rgba(0,0,0,0.0195)), color-stop(100%,rgba(0,0,0,0.1105))); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(left,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.0195) 25%,rgba(0,0,0,0.1105) 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(left,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.0195) 25%,rgba(0,0,0,0.1105) 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(left,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.0195) 25%,rgba(0,0,0,0.1105) 100%); /* IE10+ */
		background: linear-gradient(to right,  rgba(0,0,0,0) 0%,rgba(0,0,0,0.0195) 25%,rgba(0,0,0,0.1105) 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#00000000', endColorstr='#2b000000',GradientType=1 ); /* IE6-9 */
	}
	.databaseTable_UI_scrollRight:before {
	  content: '\f138';
	  position: absolute;
	  background: rgba( 255,255,255, 0.87);
	  box-shadow: 0 0.5em 1.5em rgba(0,0,0,0.2);
	  border-radius: 1.5em 0 0 1.5em;
	  font-family: 'FontAwesome';
	  font-size: 2.5em;
	  line-height: 1.15em;
	  padding: 0 0.1em 0 0.15em;
	  top: 4em;
	  right: 0px;
	  color: #333;
	  border-left: 0.08em solid #7EB535;
	  transition: padding linear 60ms;
	}
	.databaseTable_UI_scrollLeft:before {
	  content: '\f137';
	  position: absolute;
	  background: rgba( 255,255,255, 0.87);
	  padding: 0 0.15em 0 0.1em;
	  font-family: 'FontAwesome';
	  font-size: 2.5em;
	  line-height: 1.15em;
	  border-radius: 0 1.5em 1.5em 0;
	  box-shadow: 0 0.25em 1.5em rgba(0,0,0,0.2);
	  color: #333;
	  top: 4em;
	  left: 0px;
	  border-right: 0.08em solid #7EB535;
	  transition: padding linear 60ms;
	}
	.databaseTable_UI_scrollRight:hover:before  {
		padding-right: 0.33em;
	  border-left-color: #CC570E;
	  transition: padding linear 60ms;
	}
	.databaseTable_UI_scrollLeft:hover:before {
		padding-left: 0.33em;
	  border-right-color: #CC570E;
	}
	.databaseTable_UI_scrollLeft {
		position: absolute;
		top: 0;
		left: 0;
	  bottom: 0;
		background: -moz-linear-gradient(left,  rgba(0,0,0,0.1105) 0%, rgba(0,0,0,0.0195) 75%, rgba(0,0,0,0) 100%); /* FF3.6+ */
		background: -webkit-gradient(linear, left top, right top, color-stop(0%,rgba(0,0,0,0.1105)), color-stop(75%,rgba(0,0,0,0.0195)), color-stop(100%,rgba(0,0,0,0))); /* Chrome,Safari4+ */
		background: -webkit-linear-gradient(left,  rgba(0,0,0,0.1105) 0%,rgba(0,0,0,0.0195) 75%,rgba(0,0,0,0) 100%); /* Chrome10+,Safari5.1+ */
		background: -o-linear-gradient(left,  rgba(0,0,0,0.1105) 0%,rgba(0,0,0,0.0195) 75%,rgba(0,0,0,0) 100%); /* Opera 11.10+ */
		background: -ms-linear-gradient(left,  rgba(0,0,0,0.1105) 0%,rgba(0,0,0,0.0195) 75%,rgba(0,0,0,0) 100%); /* IE10+ */
		background: linear-gradient(to right,  rgba(0,0,0,0.1105) 0%,rgba(0,0,0,0.0195) 75%,rgba(0,0,0,0) 100%); /* W3C */
		filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#2b000000', endColorstr='#00000000',GradientType=1 ); /* IE6-9 */
	}
	/* custom heading colors */
	.green_bg {
	  background-color: #75B634;
	  color: #fff; }
	
	.gray_bg {
	  background-color: #5b5b5b;
	  color: #fff; }
	
	.blue_bg {
	  background-color: #1D4A91;
	  color: #fff; }
	
	// unecessary font size changes with v3
	/*
	@media screen and (max-width: 820px) {
	  .databaseTable_import td {
	    font-size: 1.5em;
	  }
	  .databaseTable_import th {
	    font-size: 1.5em;
	  }
	  .databaseTable_heading input {
	    font-size: 1.5em;
	  }
	  .databaseTable_title {
	    font-size: 2.5em;
	  }
	  .databaseTable_heading {
	    height: 4em;
	  }
	  .databaseTable_UI_button {
	    font-size: 1.5em;
	  }
	}*/
    </style>

    <title>untitled</title>

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script type="text/javascript">
    /********************* Custom controls script: by Josh *******************/
	 // Control Variables
	 var scrollTo_122860;
	 var stepSize_122860 = 240; // scroll distance of UI buttons ( could repleace this static value with function returning column width value )
	 var stepTime_122860 = 500; // milliseconds of time taken to travel the scroll distance
	
	 // Show or hide UI scroll buttons based on position of table within holder
	 function checkButtonNecessity_122860 () {
	 	// Hide the right button if not needed
	 	if ($('.122860 .databaseTable_import_wrap').scrollLeft() + $('.122860 .databaseTable_import_wrap').width() >= $('.122860 .databaseTable_import').width() - 2) {
	 		$('.122860 .databaseTable_UI_scrollRight').hide();
	 	}
	 	else {
	 		$('.122860 .databaseTable_UI_scrollRight').show();
	 	}
	 	// Hide the left button if not needed
	 	if ($('.122860 .databaseTable_import_wrap').scrollLeft() <= 0) {
	 		$('.122860 .databaseTable_UI_scrollLeft').hide();
	 	} else {
	 		$('.122860 .databaseTable_UI_scrollLeft').show();
	 	}
	 	return true;
	 }
	
	 // Link the UI classes to actions
	 function assignButtons_122860 () {
	 	$('.122860 .databaseTable_UI_scrollRight').click(function () {
	 		var scrollTo_122860;
	 		if ($('.122860 .databaseTable_import_wrap').scrollLeft() + stepSize_122860 > $('.122860 .databaseTable_import_wrap').width()) {
	 			scrollTo_122860 = $('.122860 .databaseTable_import_wrap').width() + 'px';
	 		} else {
	 			scrollTo_122860 = $('.122860 .databaseTable_import_wrap').scrollLeft() + stepSize_122860 + 'px';
	 		}
	 		$('.122860 .databaseTable_import_wrap').animate({scrollLeft: scrollTo_122860},
	 		stepTime_122860, function () {
	 			checkButtonNecessity_122860();
	 		});
	 	});
	 	$('.122860 .databaseTable_UI_scrollLeft').click(function () {
	 		var scrollTo_122860;
	 		if ($('.122860 .databaseTable_import_wrap').scrollLeft() - stepSize_122860 < 0) {
	 			scrollTo_122860 = '0px';
	 		} else {
	 			scrollTo_122860 = $('.122860 .databaseTable_import_wrap').scrollLeft() - stepSize_122860 + 'px';
	 		}
	 		$('.122860 .databaseTable_import_wrap').animate({scrollLeft: scrollTo_122860}, stepTime_122860, function () {
	 			checkButtonNecessity_122860();
	 		});
	 	});
	 }	
	
	
	 // Insure that the buttons hide or show when the window loads or is resized
	 $(window).on('load', function () {checkButtonNecessity_122860();});
	 $(window).on('resize', function () {checkButtonNecessity_122860();});
	
	 $('.122860.databaseTable_import_wrap').on('scroll', function () {checkButtonNecessity_122860();});
	 /********************* end custom controls *******************/
	
	
	
	 /********************* Initiate All of the Parts *******************/
	 $(document).ready(function() {
	
	   var csvfile_import_122860 = "https://s3-us-west-2.amazonaws.com/s.cdpn.io/220427/mtcars.csv".replace(/\&amp\;/g, '&');
	   
	   $('.122860 .databaseTable_import_wrap').CSVToTable( csvfile_import_122860 , { loadingText: 'Generating Table', loadingImage: 'https://campus.mst.edu/emctest/t4_template/content_types/search_sort_table/images/loading.gif', startLine: 0, tableClass: "databaseTable_import", theadClass: "heading" }).bind("loadComplete",function() { 
	     $('.122860 .databaseTable_import_wrap').find('TABLE').tablesorter({ widgets: ["zebra"] });			
	     $('.122860 .databaseTable_import').filterTable({inputSelector:".122860 .databaseTable_search"});
	     assignButtons_122860();
	     checkButtonNecessity_122860();
	
	
	   }); 
	
	
	 });
	 /********************* End of Initiating All the Parts *******************/
	
	
	 /*********** Table Sorting Script: tablesorter.min.js ************/
	
	 (function($){$.extend({tablesorter:new
	 function(){var parsers=[],widgets=[];this.defaults={cssHeader:"header",cssAsc:"headerSortUp",cssDesc:"headerSortDown",cssChildRow:"expand-child",sortInitialOrder:"asc",sortMultiSortKey:"shiftKey",sortForce:null,sortAppend:null,sortLocaleCompare:true,textExtraction:"simple",parsers:{},widgets:[],widgetZebra:{css:["even","odd"]},headers:{},widthFixed:false,cancelSelection:true,sortList:[],headerList:[],dateFormat:"us",decimal:'/\.|\,/g',onRenderHeader:null,selectorHeaders:'thead th',debug:false};function benchmark(s,d){log(s+","+(new Date().getTime()-d.getTime())+"ms");}this.benchmark=benchmark;function log(s){if(typeof console!="undefined"&&typeof console.debug!="undefined"){console.log(s);}else{alert(s);}}function buildParserCache(table,$headers){if(table.config.debug){var parsersDebug="";}if(table.tBodies.length==0)return;var rows=table.tBodies[0].rows;if(rows[0]){var list=[],cells=rows[0].cells,l=cells.length;for(var i=0;i<l;i++){var p=false;if($.metadata&&($($headers[i]).metadata()&&$($headers[i]).metadata().sorter)){p=getParserById($($headers[i]).metadata().sorter);}else if((table.config.headers[i]&&table.config.headers[i].sorter)){p=getParserById(table.config.headers[i].sorter);}if(!p){p=detectParserForColumn(table,rows,-1,i);}if(table.config.debug){parsersDebug+="column:"+i+" parser:"+p.id+"\n";}list.push(p);}}if(table.config.debug){log(parsersDebug);}return list;};function detectParserForColumn(table,rows,rowIndex,cellIndex){var l=parsers.length,node=false,nodeValue=false,keepLooking=true;while(nodeValue==''&&keepLooking){rowIndex++;if(rows[rowIndex]){node=getNodeFromRowAndCellIndex(rows,rowIndex,cellIndex);nodeValue=trimAndGetNodeText(table.config,node);if(table.config.debug){log('Checking if value was empty on row:'+rowIndex);}}else{keepLooking=false;}}for(var i=1;i<l;i++){if(parsers[i].is(nodeValue,table,node)){return parsers[i];}}return parsers[0];}function getNodeFromRowAndCellIndex(rows,rowIndex,cellIndex){return rows[rowIndex].cells[cellIndex];}function trimAndGetNodeText(config,node){return $.trim(getElementText(config,node));}function getParserById(name){var l=parsers.length;for(var i=0;i<l;i++){if(parsers[i].id.toLowerCase()==name.toLowerCase()){return parsers[i];}}return false;}function buildCache(table){if(table.config.debug){var cacheTime=new Date();}var totalRows=(table.tBodies[0]&&table.tBodies[0].rows.length)||0,totalCells=(table.tBodies[0].rows[0]&&table.tBodies[0].rows[0].cells.length)||0,parsers=table.config.parsers,cache={row:[],normalized:[]};for(var i=0;i<totalRows;++i){var c=$(table.tBodies[0].rows[i]),cols=[];if(c.hasClass(table.config.cssChildRow)){cache.row[cache.row.length-1]=cache.row[cache.row.length-1].add(c);continue;}cache.row.push(c);for(var j=0;j<totalCells;++j){cols.push(parsers[j].format(getElementText(table.config,c[0].cells[j]),table,c[0].cells[j]));}cols.push(cache.normalized.length);cache.normalized.push(cols);cols=null;};if(table.config.debug){benchmark("Building cache for "+totalRows+" rows:",cacheTime);}return cache;};function getElementText(config,node){var text="";if(!node)return"";if(!config.supportsTextContent)config.supportsTextContent=node.textContent||false;if(config.textExtraction=="simple"){if(config.supportsTextContent){text=node.textContent;}else{if(node.childNodes[0]&&node.childNodes[0].hasChildNodes()){text=node.childNodes[0].innerHTML;}else{text=node.innerHTML;}}}else{if(typeof(config.textExtraction)=="function"){text=config.textExtraction(node);}else{text=$(node).text();}}return text;}function appendToTable(table,cache){if(table.config.debug){var appendTime=new Date()}var c=cache,r=c.row,n=c.normalized,totalRows=n.length,checkCell=(n[0].length-1),tableBody=$(table.tBodies[0]),rows=[];for(var i=0;i<totalRows;i++){var pos=n[i][checkCell];rows.push(r[pos]);if(!table.config.appender){var l=r[pos].length;for(var j=0;j<l;j++){tableBody[0].appendChild(r[pos][j]);}}}if(table.config.appender){table.config.appender(table,rows);}rows=null;if(table.config.debug){benchmark("Rebuilt table:",appendTime);}applyWidget(table);setTimeout(function(){$(table).trigger("sortEnd");},0);};function buildHeaders(table){if(table.config.debug){var time=new Date();}var meta=($.metadata)?true:false;var header_index=computeTableHeaderCellIndexes(table);$tableHeaders=$(table.config.selectorHeaders,table).each(function(index){this.column=header_index[this.parentNode.rowIndex+"-"+this.cellIndex];this.order=formatSortingOrder(table.config.sortInitialOrder);this.count=this.order;if(checkHeaderMetadata(this)||checkHeaderOptions(table,index))this.sortDisabled=true;if(checkHeaderOptionsSortingLocked(table,index))this.order=this.lockedOrder=checkHeaderOptionsSortingLocked(table,index);if(!this.sortDisabled){var $th=$(this).addClass(table.config.cssHeader);if(table.config.onRenderHeader)table.config.onRenderHeader.apply($th);}table.config.headerList[index]=this;});if(table.config.debug){benchmark("Built headers:",time);log($tableHeaders);}return $tableHeaders;};function computeTableHeaderCellIndexes(t){var matrix=[];var lookup={};var thead=t.getElementsByTagName('THEAD')[0];var trs=thead.getElementsByTagName('TR');for(var i=0;i<trs.length;i++){var cells=trs[i].cells;for(var j=0;j<cells.length;j++){var c=cells[j];var rowIndex=c.parentNode.rowIndex;var cellId=rowIndex+"-"+c.cellIndex;var rowSpan=c.rowSpan||1;var colSpan=c.colSpan||1
	 var firstAvailCol;if(typeof(matrix[rowIndex])=="undefined"){matrix[rowIndex]=[];}for(var k=0;k<matrix[rowIndex].length+1;k++){if(typeof(matrix[rowIndex][k])=="undefined"){firstAvailCol=k;break;}}lookup[cellId]=firstAvailCol;for(var k=rowIndex;k<rowIndex+rowSpan;k++){if(typeof(matrix[k])=="undefined"){matrix[k]=[];}var matrixrow=matrix[k];for(var l=firstAvailCol;l<firstAvailCol+colSpan;l++){matrixrow[l]="x";}}}}return lookup;}function checkCellColSpan(table,rows,row){var arr=[],r=table.tHead.rows,c=r[row].cells;for(var i=0;i<c.length;i++){var cell=c[i];if(cell.colSpan>1){arr=arr.concat(checkCellColSpan(table,headerArr,row++));}else{if(table.tHead.length==1||(cell.rowSpan>1||!r[row+1])){arr.push(cell);}}}return arr;};function checkHeaderMetadata(cell){if(($.metadata)&&($(cell).metadata().sorter===false)){return true;};return false;}function checkHeaderOptions(table,i){if((table.config.headers[i])&&(table.config.headers[i].sorter===false)){return true;};return false;}function checkHeaderOptionsSortingLocked(table,i){if((table.config.headers[i])&&(table.config.headers[i].lockedOrder))return table.config.headers[i].lockedOrder;return false;}function applyWidget(table){var c=table.config.widgets;var l=c.length;for(var i=0;i<l;i++){getWidgetById(c[i]).format(table);}}function getWidgetById(name){var l=widgets.length;for(var i=0;i<l;i++){if(widgets[i].id.toLowerCase()==name.toLowerCase()){return widgets[i];}}};function formatSortingOrder(v){if(typeof(v)!="Number"){return(v.toLowerCase()=="desc")?1:0;}else{return(v==1)?1:0;}}function isValueInArray(v,a){var l=a.length;for(var i=0;i<l;i++){if(a[i][0]==v){return true;}}return false;}function setHeadersCss(table,$headers,list,css){$headers.removeClass(css[0]).removeClass(css[1]);var h=[];$headers.each(function(offset){if(!this.sortDisabled){h[this.column]=$(this);}});var l=list.length;for(var i=0;i<l;i++){h[list[i][0]].addClass(css[list[i][1]]);}}function fixColumnWidth(table,$headers){var c=table.config;if(c.widthFixed){var colgroup=$('<colgroup>');$("tr:first td",table.tBodies[0]).each(function(){colgroup.append($('<col>').css('width',$(this).width()));});$(table).prepend(colgroup);};}function updateHeaderSortCount(table,sortList){var c=table.config,l=sortList.length;for(var i=0;i<l;i++){var s=sortList[i],o=c.headerList[s[0]];o.count=s[1];o.count++;}}function multisort(table,sortList,cache){if(table.config.debug){var sortTime=new Date();}var dynamicExp="var sortWrapper = function(a,b) {",l=sortList.length;for(var i=0;i<l;i++){var c=sortList[i][0];var order=sortList[i][1];var s=(table.config.parsers[c].type=="text")?((order==0)?makeSortFunction("text","asc",c):makeSortFunction("text","desc",c)):((order==0)?makeSortFunction("numeric","asc",c):makeSortFunction("numeric","desc",c));var e="e"+i;dynamicExp+="var "+e+" = "+s;dynamicExp+="if("+e+") { return "+e+"; } ";dynamicExp+="else { ";}var orgOrderCol=cache.normalized[0].length-1;dynamicExp+="return a["+orgOrderCol+"]-b["+orgOrderCol+"];";for(var i=0;i<l;i++){dynamicExp+="}; ";}dynamicExp+="return 0; ";dynamicExp+="}; ";if(table.config.debug){benchmark("Evaling expression:"+dynamicExp,new Date());}eval(dynamicExp);cache.normalized.sort(sortWrapper);if(table.config.debug){benchmark("Sorting on "+sortList.toString()+" and dir "+order+" time:",sortTime);}return cache;};function makeSortFunction(type,direction,index){var a="a["+index+"]",b="b["+index+"]";if(type=='text'&&direction=='asc'){return"("+a+" == "+b+" ? 0 : ("+a+" === null ? Number.POSITIVE_INFINITY : ("+b+" === null ? Number.NEGATIVE_INFINITY : ("+a+" < "+b+") ? -1 : 1 )));";}else if(type=='text'&&direction=='desc'){return"("+a+" == "+b+" ? 0 : ("+a+" === null ? Number.POSITIVE_INFINITY : ("+b+" === null ? Number.NEGATIVE_INFINITY : ("+b+" < "+a+") ? -1 : 1 )));";}else if(type=='numeric'&&direction=='asc'){return"("+a+" === null && "+b+" === null) ? 0 :("+a+" === null ? Number.POSITIVE_INFINITY : ("+b+" === null ? Number.NEGATIVE_INFINITY : "+a+" - "+b+"));";}else if(type=='numeric'&&direction=='desc'){return"("+a+" === null && "+b+" === null) ? 0 :("+a+" === null ? Number.POSITIVE_INFINITY : ("+b+" === null ? Number.NEGATIVE_INFINITY : "+b+" - "+a+"));";}};function makeSortText(i){return"((a["+i+"] < b["+i+"]) ? -1 : ((a["+i+"] > b["+i+"]) ? 1 : 0));";};function makeSortTextDesc(i){return"((b["+i+"] < a["+i+"]) ? -1 : ((b["+i+"] > a["+i+"]) ? 1 : 0));";};function makeSortNumeric(i){return"a["+i+"]-b["+i+"];";};function makeSortNumericDesc(i){return"b["+i+"]-a["+i+"];";};function sortText(a,b){if(table.config.sortLocaleCompare)return a.localeCompare(b);return((a<b)?-1:((a>b)?1:0));};function sortTextDesc(a,b){if(table.config.sortLocaleCompare)return b.localeCompare(a);return((b<a)?-1:((b>a)?1:0));};function sortNumeric(a,b){return a-b;};function sortNumericDesc(a,b){return b-a;};function getCachedSortType(parsers,i){return parsers[i].type;};this.construct=function(settings){return this.each(function(){if(!this.tHead||!this.tBodies)return;var $this,$document,$headers,cache,config,shiftDown=0,sortOrder;this.config={};config=$.extend(this.config,$.tablesorter.defaults,settings);$this=$(this);$.data(this,"tablesorter",config);$headers=buildHeaders(this);this.config.parsers=buildParserCache(this,$headers);cache=buildCache(this);var sortCSS=[config.cssDesc,config.cssAsc];fixColumnWidth(this);$headers.click(function(e){var totalRows=($this[0].tBodies[0]&&$this[0].tBodies[0].rows.length)||0;if(!this.sortDisabled&&totalRows>0){$this.trigger("sortStart");var $cell=$(this);var i=this.column;this.order=this.count++%2;if(this.lockedOrder)this.order=this.lockedOrder;if(!e[config.sortMultiSortKey]){config.sortList=[];if(config.sortForce!=null){var a=config.sortForce;for(var j=0;j<a.length;j++){if(a[j][0]!=i){config.sortList.push(a[j]);}}}config.sortList.push([i,this.order]);}else{if(isValueInArray(i,config.sortList)){for(var j=0;j<config.sortList.length;j++){var s=config.sortList[j],o=config.headerList[s[0]];if(s[0]==i){o.count=s[1];o.count++;s[1]=o.count%2;}}}else{config.sortList.push([i,this.order]);}};setTimeout(function(){setHeadersCss($this[0],$headers,config.sortList,sortCSS);appendToTable($this[0],multisort($this[0],config.sortList,cache));},1);return false;}}).mousedown(function(){if(config.cancelSelection){this.onselectstart=function(){return false};return false;}});$this.bind("update",function(){var me=this;setTimeout(function(){me.config.parsers=buildParserCache(me,$headers);cache=buildCache(me);},1);}).bind("updateCell",function(e,cell){var config=this.config;var pos=[(cell.parentNode.rowIndex-1),cell.cellIndex];cache.normalized[pos[0]][pos[1]]=config.parsers[pos[1]].format(getElementText(config,cell),cell);}).bind("sorton",function(e,list){$(this).trigger("sortStart");config.sortList=list;var sortList=config.sortList;updateHeaderSortCount(this,sortList);setHeadersCss(this,$headers,sortList,sortCSS);appendToTable(this,multisort(this,sortList,cache));}).bind("appendCache",function(){appendToTable(this,cache);}).bind("applyWidgetId",function(e,id){getWidgetById(id).format(this);}).bind("applyWidgets",function(){applyWidget(this);});if($.metadata&&($(this).metadata()&&$(this).metadata().sortlist)){config.sortList=$(this).metadata().sortlist;}if(config.sortList.length>0){$this.trigger("sorton",[config.sortList]);}applyWidget(this);});};this.addParser=function(parser){var l=parsers.length,a=true;for(var i=0;i<l;i++){if(parsers[i].id.toLowerCase()==parser.id.toLowerCase()){a=false;}}if(a){parsers.push(parser);};};this.addWidget=function(widget){widgets.push(widget);};this.formatFloat=function(s){var i=parseFloat(s);return(isNaN(i))?0:i;};this.formatInt=function(s){var i=parseInt(s);return(isNaN(i))?0:i;};this.isDigit=function(s,config){return/^[-+]?\d*$/.test($.trim(s.replace(/[,.']/g,'')));};this.clearTableBody=function(table){if($.browser.msie){function empty(){while(this.firstChild)this.removeChild(this.firstChild);}empty.apply(table.tBodies[0]);}else{table.tBodies[0].innerHTML="";}};}});$.fn.extend({tablesorter:$.tablesorter.construct});var ts=$.tablesorter;ts.addParser({id:"text",is:function(s){return true;},format:function(s){return $.trim(s.toLocaleLowerCase());},type:"text"});ts.addParser({id:"digit",is:function(s,table){var c=table.config;return $.tablesorter.isDigit(s,c);},format:function(s){return $.tablesorter.formatFloat(s);},type:"numeric"});ts.addParser({id:"currency",is:function(s){return/^[Â£$â‚¬?.]/.test(s);},format:function(s){return $.tablesorter.formatFloat(s.replace(new RegExp(/[Â£$â‚¬]/g),""));},type:"numeric"});ts.addParser({id:"ipAddress",is:function(s){return/^\d{2,3}[\.]\d{2,3}[\.]\d{2,3}[\.]\d{2,3}$/.test(s);},format:function(s){var a=s.split("."),r="",l=a.length;for(var i=0;i<l;i++){var item=a[i];if(item.length==2){r+="0"+item;}else{r+=item;}}return $.tablesorter.formatFloat(r);},type:"numeric"});ts.addParser({id:"url",is:function(s){return/^(https?|ftp|file):\/\/$/.test(s);},format:function(s){return jQuery.trim(s.replace(new RegExp(/(https?|ftp|file):\/\//),''));},type:"text"});ts.addParser({id:"isoDate",is:function(s){return/^\d{4}[\/-]\d{1,2}[\/-]\d{1,2}$/.test(s);},format:function(s){return $.tablesorter.formatFloat((s!="")?new Date(s.replace(new RegExp(/-/g),"/")).getTime():"0");},type:"numeric"});ts.addParser({id:"percent",is:function(s){return/\%$/.test($.trim(s));},format:function(s){return $.tablesorter.formatFloat(s.replace(new RegExp(/%/g),""));},type:"numeric"});ts.addParser({id:"usLongDate",is:function(s){return s.match(new RegExp(/^[A-Za-z]{3,10}\.? [0-9]{1,2}, ([0-9]{4}|'?[0-9]{2}) (([0-2]?[0-9]:[0-5][0-9])|([0-1]?[0-9]:[0-5][0-9]\s(AM|PM)))$/));},format:function(s){return $.tablesorter.formatFloat(new Date(s).getTime());},type:"numeric"});ts.addParser({id:"shortDate",is:function(s){return/\d{1,2}[\/\-]\d{1,2}[\/\-]\d{2,4}/.test(s);},format:function(s,table){var c=table.config;s=s.replace(/\-/g,"/");if(c.dateFormat=="us"){s=s.replace(/(\d{1,2})[\/\-](\d{1,2})[\/\-](\d{4})/,"$3/$1/$2");}else if(c.dateFormat=="uk"){s=s.replace(/(\d{1,2})[\/\-](\d{1,2})[\/\-](\d{4})/,"$3/$2/$1");}else if(c.dateFormat=="dd/mm/yy"||c.dateFormat=="dd-mm-yy"){s=s.replace(/(\d{1,2})[\/\-](\d{1,2})[\/\-](\d{2})/,"$1/$2/$3");}return $.tablesorter.formatFloat(new Date(s).getTime());},type:"numeric"});ts.addParser({id:"time",is:function(s){return/^(([0-2]?[0-9]:[0-5][0-9])|([0-1]?[0-9]:[0-5][0-9]\s(am|pm)))$/.test(s);},format:function(s){return $.tablesorter.formatFloat(new Date("2000/01/01 "+s).getTime());},type:"numeric"});ts.addParser({id:"metadata",is:function(s){return false;},format:function(s,table,cell){var c=table.config,p=(!c.parserMetadataName)?'sortValue':c.parserMetadataName;return $(cell).metadata()[p];},type:"numeric"});ts.addWidget({id:"zebra",format:function(table){if(table.config.debug){var time=new Date();}var $tr,row=-1,odd;$("tr:visible",table.tBodies[0]).each(function(i){$tr=$(this);if(!$tr.hasClass(table.config.cssChildRow))row++;odd=(row%2==0);$tr.removeClass(table.config.widgetZebra.css[odd?0:1]).addClass(table.config.widgetZebra.css[odd?1:0])});if(table.config.debug){$.tablesorter.benchmark("Applying Zebra widget",time);}}});})(jQuery);
	   
	   
	 /*********** Load csv to html table script: csvToTable.js **************/
	
	  /**
	  * CSV to Table plugin
	  * https://code.google.com/p/jquerycsvtotable/
	  *
	  * Copyright (c) 2010 Steve Sobel
	  * http://honestbleeps.com/
	  *
	  * v0.9 - 2010-06-22 - First release.
	  */
	  
	  (function($){
	
	 	/**
	 	*
	 	* CSV Parser credit goes to Brian Huisman, from his blog entry entitled "CSV String to Array in JavaScript":
	 	* http://www.greywyvern.com/?post=258
	 	*
	 	*/
	 	String.prototype.splitCSV = function(sep) {
	 		for (var thisCSV = this.split(sep = sep || ","), x = thisCSV.length - 1, tl; x >= 0; x--) {
	 			if (thisCSV[x].replace(/"\s+$/, '"').charAt(thisCSV[x].length - 1) == '"') {
	 				if ((tl = thisCSV[x].replace(/^\s+"/, '"')).length > 1 && tl.charAt(0) == '"') {
	 					thisCSV[x] = thisCSV[x].replace(/^\s*"|"\s*$/g, '').replace(/""/g, '"');
	 				} else if (x) {
	 					thisCSV.splice(x - 1, 2, [thisCSV[x - 1], thisCSV[x]].join(sep));
	 				} else thisCSV = thisCSV.shift().split(sep).concat(thisCSV);
	 			} else thisCSV[x].replace(/""/g, '"');
	 		} return thisCSV;
	 	};
	
	 	$.fn.CSVToTable = function(csvFile, options) {
	 		var defaults = {
	 			tableClass: "CSVTable",
	 			theadClass: "",
	 			thClass: "",
	 			tbodyClass: "",
	 			trClass: "",
	 			tdClass: "",
	 			loadingImage: "",
	 			loadingText: "Loading CSV data...",
	 			separator: ",",
	 			startLine: 0
	 		};	
	 		var options = $.extend(defaults, options);
	 		return this.each(function() {
	 			var obj = $(this);
	 			var error = '';
	 			(options.loadingImage) ? loading = '<div style="text-align: center"><img alt="' + options.loadingText + '" src="' + options.loadingImage + '" /><br>' + options.loadingText + '</div>' : loading = options.loadingText;
	 			obj.html(loading);
	 			$.get(csvFile, function(data) {
	 				var tableHTML = '<table class="' + options.tableClass + '">';
	 				var lines = data.replace('\r','').split('\n');
	 				var printedLines = 0;
	 				var headerCount = 0;
	 				var headers = new Array();
	 				$.each(lines, function(lineCount, line) {
	 					if ((lineCount == 0) && (typeof(options.headers) != 'undefined')) {
	 						headers = options.headers;
	 						headerCount = headers.length;
	 						tableHTML += '<thead class="' + options.theadClass + '"><tr class="' + options.trClass + '">';
	 						$.each(headers, function(headerCount, header) {
	 							tableHTML += '<th class="' + options.thClass + '">' + header + '</th>';
	 						});
	 						tableHTML += '</tr></thead><tbody class="' + options.tbodyClass + '">';
	 					}
	 					if ((lineCount == options.startLine) && (typeof(options.headers) == 'undefined')) {
	 						headers = line.splitCSV(options.separator);
	 						headerCount = headers.length;
	 						tableHTML += '<thead class="' + options.theadClass + '"><tr class="' + options.trClass + '">';
	 						$.each(headers, function(headerCount, header) {
	 							tableHTML += '<th class="' + options.thClass + '">' + header + '</th>';
	 						});
	 						tableHTML += '</tr></thead><tbody class="' + options.tbodyClass + '">';
	 					} else if (lineCount >= options.startLine) {
	 						var items = line.splitCSV(options.separator);
	 						if (items.length > 1) {
	 							printedLines++;
	 							if (items.length != headerCount) {
	 								error += 'error on line ' + lineCount + ': Item count (' + items.length + ') does not match header count (' + headerCount + ') \n';
	 							}
	 							(printedLines % 2) ? oddOrEven = 'odd' : oddOrEven = 'even';
	 							tableHTML += '<tr class="' + options.trClass + ' ' + oddOrEven + '">';
	 							$.each(items, function(itemCount, item) {
	 								tableHTML += '<td class="' + options.tdClass + '">' + item + '</td>';
	 							});
	 							tableHTML += '</tr>';
	 						}
	 					}
	 				});
	 				tableHTML += '</tbody></table>';
	 				if (error) {
	 					obj.html(error);
	 				} else {
	 					obj.fadeOut(500, function() {
	 						obj.html(tableHTML)
	 					}).fadeIn(function() {
	 						// trigger loadComplete
	 						setTimeout(function() {
	 							obj.trigger("loadComplete");	
	 						},0);
	 					});
	 				}
	 			});
	 		});
	 	};
	
	 })(jQuery);
	
	   
	 /*********** Table search script: filtertable.min.js ***********/
	
	 /**
	  * jquery.filterTable
	  *
	  * This plugin will add a search filter to tables. When typing in the filter,
	  * any rows that do not contain the filter will be hidden.
	  *
	  * Utilizes bindWithDelay() if available. https://github.com/bgrins/bindWithDelay
	  *
	  * @version v1.5.4
	  * @author Sunny Walker, swalker@hawaii.edu
	  * @license MIT
	  */
	 !function($){var e=$.fn.jquery.split("."),t=parseFloat(e[0]),i=parseFloat(e[1]);$.expr[":"].filterTableFind=2>t&&8>i?function(e,t,i){return $(e).text().toUpperCase().indexOf(i[3].toUpperCase())>=0}:jQuery.expr.createPseudo(function(e){return function(t){return $(t).text().toUpperCase().indexOf(e.toUpperCase())>=0}}),$.fn.filterTable=function(e){var t={autofocus:!1,callback:null,containerClass:"filter-table",containerTag:"p",hideTFootOnFilter:!1,highlightClass:"alt",inputSelector:null,inputName:"",inputType:"search",label:"Filter:",minRows:8,placeholder:"search this table",preventReturnKey:!0,quickList:[],quickListClass:"quick",quickListGroupTag:"",quickListTag:"a",visibleClass:"visible"},i=function(e){return e.replace(/&/g,"&amp;").replace(/"/g,"&quot;").replace(/</g,"&lt;").replace(/>/g,"&gt;")},n=$.extend({},t,e),a=function(e,t){var i=e.find("tbody");""===t?(i.find("tr").show().addClass(n.visibleClass),i.find("td").removeClass(n.highlightClass),n.hideTFootOnFilter&&e.find("tfoot").show()):(i.find("tr").hide().removeClass(n.visibleClass),n.hideTFootOnFilter&&e.find("tfoot").hide(),i.find("td").removeClass(n.highlightClass).filter(':filterTableFind("'+t.replace(/(['"])/g,"\\$1")+'")').addClass(n.highlightClass).closest("tr").show().addClass(n.visibleClass)),n.callback&&n.callback(t,e)};return this.each(function(){var e=$(this),t=e.find("tbody"),l=null,s=null,r=null,o=!0;"TABLE"===e[0].nodeName&&t.length>0&&(0===n.minRows||n.minRows>0&&t.find("tr").length>n.minRows)&&!e.prev().hasClass(n.containerClass)&&(n.inputSelector&&1===$(n.inputSelector).length?(r=$(n.inputSelector),l=r.parent(),o=!1):(l=$("<"+n.containerTag+" />"),""!==n.containerClass&&l.addClass(n.containerClass),l.prepend(n.label+" "),r=$('<input type="'+n.inputType+'" placeholder="'+n.placeholder+'" name="'+n.inputName+'" />'),n.preventReturnKey&&r.on("keydown",function(e){return 13===(e.keyCode||e.which)?(e.preventDefault(),!1):void 0})),n.autofocus&&r.attr("autofocus",!0),$.fn.bindWithDelay?r.bindWithDelay("keyup",function(){a(e,$(this).val())},200):r.bind("keyup",function(){a(e,$(this).val())}),r.bind("click search",function(){a(e,$(this).val())}),o&&l.append(r),n.quickList.length>0&&(s=n.quickListGroupTag?$("<"+n.quickListGroupTag+" />"):l,$.each(n.quickList,function(e,t){var a=$("<"+n.quickListTag+' class="'+n.quickListClass+'" />');a.text(i(t)),"A"===a[0].nodeName&&a.attr("href","#"),a.bind("click",function(e){e.preventDefault(),r.val(t).focus().trigger("click")}),s.append(a)}),s!==l&&l.append(s)),o&&e.before(l))})}}(jQuery);

    </script>
  </head>

 <body>
	<div id="DirectEditPreserve" class="wow fadeInUp databaseTable_holder 122860">
	  <div id="DirectEditPreserve" class="databaseTable_heading">
	    <div id="DirectEditPreserve" class="databaseTable_title">Test Table</div>
	    <input id="DirectEditPreserve" class="databaseTable_search" type="text" width="200" placeholder="Search this table">
	  </div>
	  <div id="DirectEditPreserve" class="databaseTable">
	    <div id="DirectEditPreserve" class="databaseTable_import_wrap" style="display: block;">
		</div>
	    <div id="DirectEditPreserve" class="databaseTable_UI_scrollLeft databaseTable_UI_button" style="display: none;"><!-- JS shows/hides by appending the .hidden class --></div>
	    <div id="DirectEditPreserve" class="databaseTable_UI_scrollRight databaseTable_UI_button" style="display: none;"><!-- JS shows/hides by appending the .hidden class --></div>
	  </div>
	</div>
	
	<!-- /////////////////////////////////////////////////// -->
	<div>
		<p>test</p>
	</div>
	<!-- /////////////////////////////////////////////////// -->

  </body>
</html>
