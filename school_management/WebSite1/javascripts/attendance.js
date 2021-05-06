// TODO move to separate file
/*
 * Natural Sort algorithm for Javascript - Version 0.6 - Released under MIT license
 * Author: Jim Palmer (based on chunking idea from Dave Koelle)
 * Contributors: Mike Grier (mgrier.com), Clint Priest, Kyle Adams, guillermo
 */
function naturalSort (a, b) {
	var re = /(^-?[0-9]+(\.?[0-9]*)[df]?e?[0-9]?$|^0x[0-9a-f]+$|[0-9]+)/gi,
		sre = /(^[ ]*|[ ]*$)/g,
		dre = /(^([\w ]+,?[\w ]+)?[\w ]+,?[\w ]+\d+:\d+(:\d+)?[\w ]?|^\d{1,4}[\/\-]\d{1,4}[\/\-]\d{1,4}|^\w+, \w+ \d+, \d{4})/,
		hre = /^0x[0-9a-f]+$/i,
		ore = /^0/,
		// convert all to strings and trim()
		x = a.toString().replace(sre, '') || '',
		y = b.toString().replace(sre, '') || '',
		// chunk/tokenize
		xN = x.replace(re, '\0$1\0').replace(/\0$/,'').replace(/^\0/,'').split('\0'),
		yN = y.replace(re, '\0$1\0').replace(/\0$/,'').replace(/^\0/,'').split('\0'),
		// numeric, hex or date detection
		xD = parseInt(x.match(hre)) || (xN.length != 1 && x.match(dre) && Date.parse(x)),
		yD = parseInt(y.match(hre)) || xD && y.match(dre) && Date.parse(y) || null;
	// first try and sort Hex codes or Dates
	if (yD)
		if ( xD < yD ) return -1;
		else if ( xD > yD )	return 1;
	// natural sorting through split numeric strings and default strings
	for(var cLoc=0, numS=Math.max(xN.length, yN.length); cLoc < numS; cLoc++) {
		// find floats not starting with '0', string or 0 if not defined (Clint Priest)
		oFxNcL = !(xN[cLoc] || '').match(ore) && parseFloat(xN[cLoc]) || xN[cLoc] || 0;
		oFyNcL = !(yN[cLoc] || '').match(ore) && parseFloat(yN[cLoc]) || yN[cLoc] || 0;
		// handle numeric vs string comparison - number < string - (Kyle Adams)
		if (isNaN(oFxNcL) !== isNaN(oFyNcL)) return (isNaN(oFxNcL)) ? 1 : -1;
		// rely on string comparison if different types - i.e. '02' < 2 != '02' < '2'
		else if (typeof oFxNcL !== typeof oFyNcL) {
			oFxNcL += '';
			oFyNcL += '';
		}
		if (oFxNcL < oFyNcL) return -1;
		if (oFxNcL > oFyNcL) return 1;
	}
	return 0;
}

//
var students, dates, leaves, holidays, batch, today, req, translated;
var nameTdElem=new Element('td',{
    'class':'td-name'
}).addClassName('td-name');
var rowElem = new Element('tr',{
    'class':'tr-odd'
}).addClassName('td-odd');
var absentElem = new Element('a',{
    'class':'absent',
    'id':''
}).addClassName('themed_text');
var presentElem = new Element('a',{
    'class':'present',
    'id':'',
    'date':''
}).addClassName('present');
var cellElem = new Element('td',{
    'class':'td-mark themed_text'
}).addClassName('td-mark themed_text');


function getjson(val){
    date_today = $('time_zone').value;
    Element.show('loader');
    if(val){
        new Ajax.Request('/attendances/daily_register.json',{
            parameters:'batch_id='+val,
            asynchronous:true,
            evalScripts:true,
            method:'get',
            onComplete:function(resp){
                registerBuilder(resp.responseJSON);
                rebind();
                Element.hide('loader');
            }
        });
    }
    else
    {
     j('#register').children().hide();
     rebind();
     Element.hide('loader');
    }
}
function update_json(val){
    date_today = $('time_zone').value;
    Element.show('loader');
    if (val){
        new Ajax.Request('/attendances/daily_register.json',{
            parameters:'batch_id='+val+'&next='+Date.parse(today),
            asynchronous:true,
            evalScripts:true,
            method:'get',
            onComplete:function(resp){
                update_json_values(resp.responseJSON);
                sort_students_array(get_sort_order());
                update_students_list();
                rebind();
                Element.hide('loader');
            }
        });
    }else
    {
        j("#register").children().hide();
        rebind();
        Element.hide('loader');
    }
}
function update_json_values(respjson) {
  dates = respjson.dates;
  students = respjson.students;
  leaves = respjson.leaves;
  translated=respjson.translated;
  roll_number_enabled=respjson.roll_number_enabled;
}
function changeMonth(){
    Element.show('loader');
    new Ajax.Request('/attendances/daily_register.json',{
        parameters:'batch_id='+this.getAttribute('batch_id')+'&next='+this.getAttribute('next'),
        asynchronous:true,
        evalScripts:true,
        method:'get',
        onComplete:function(resp){
            registerBuilder(resp.responseJSON);
            rebind();
            Element.hide('loader');
        }
    });

}
function drawHeader(){
    var header = new Element('div',{
        'class':'header'
    }).addClassName('header');
    var next = new Element('div',{
        'class':'next'
    }).addClassName('next');
    var nextln = new Element('a',{
        'class':'goto',
        'batch_id':batch.id,
        'next':Date.parse(today).add({
            month:1
        })
    }).addClassName('goto').update("►");
    var prev = new Element('div',{
        'class':'prev'
    }).addClassName('prev');
    var prevln = new Element('a',{
        'class':'goto',
        'batch_id':batch.id,
        'next':Date.parse(today).add({
            month:-1
        })
    }).addClassName('goto').update("◄");
    var month = new Element('div',{
        'class':'month'
    }).addClassName('month').update(translated[Date.parse(today).toString("MMMM")]+" "+Date.parse(today).toString("yyyy"));
    var extender = new Element('div',{
        'class':'extender'
    }).addClassName('extender');
    prev.update(prevln);
    next.update(nextln);
    if((new Date(batch.start_date)).clearTime() < (Date.parse(today).moveToFirstDayOfMonth()).clearTime()) header.update(prev);
    header.appendChild(month);
    if((new Date(batch.end_date)).clearTime() > (Date.parse(today).moveToLastDayOfMonth()).clearTime()) header.appendChild(next);
    header.appendChild(extender);

    return header;

}
function drawBox(){
    var box = new Element('div',{
        'class':'box-1'
    }).addClassName('box-1');
    var tbl = new Element('table',{
        'id':'register-table'
    });
    var tblbody = new Element('tbody');
    var headrow = new Element('tr',{
        'class':'tr-head'
    }).addClassName('tr-head');
    var nameTd = new Element('td',{
        'class':'head-td-name'
    }).addClassName('head-td-name themed_text').update(translated['student']);

    var dateTd = new Element('td',{
        'class':'head-td-date themed_text'
    }).addClassName('head-td-date themed_text');
    var dtDiv1 = new Element('div',{
        'class':'day'
    }).addClassName('day');
    var dtDiv2 = new Element('div',{
        'class':'date themed_text'
    }).addClassName('date themed_text');
    var dtd, dtdiv1, dtdiv2, ndate, tdate;
    tdate = Date.parse(date_today);
    headrow.update(nameTd);

    dates.each(function(dt){
        ndate = Date.parse(dt);
        dtd = dateTd.cloneNode(true);
        dtdiv1 = dtDiv1.cloneNode(true);
        dtdiv2 = dtDiv2.cloneNode(true);
        if(holidays.include(dt))dtdiv1.addClassName('holiday');
        dtdiv1.update(translated[ndate.toString("ddd")]);
        dtdiv2.update(ndate.toString("dd"));
        if(tdate.equals(ndate))dtd.addClassName('active');
        dtd.update(dtdiv1);
        dtd.appendChild(dtdiv2);
        headrow.appendChild(dtd);
    });
    tblbody.update(headrow);
    tbl.update(tblbody);
    box.update(tbl);
    return box;
}
function drawCheckbox(){
    var newdiv = new Element('div',{
        'class':'quick-attendance-div',
        'id':'quick_attendance'
    }).addClassName('quick-attendance-div');
    var helperdiv = new Element('div',{
        'id':'helper_tooltip',
        'style':'display:none'
    }).addClassName('helper_info');
    helperdiv.update(translated['daily_quick_attendance_explanation']);
    var chkbox=new Element('input',{
        'type':'checkbox',
        'id':'quick-attendance-check',
        'checked':false
    });
    var attendancelabel=new Element('label',{
        'class':'attendance-label'
    }).addClassName('attendance-label');
    attendancelabel.update(translated['rapid_attendance']);
    newdiv.update(attendancelabel);
    newdiv.appendChild(chkbox);
    newdiv.appendChild(helperdiv);
    return newdiv;
}
function registerBuilder(respjson){

    students = respjson.students;
    leaves = respjson.leaves;
    dates = respjson.dates;
    holidays = respjson.holidays;
    today = respjson.today;
    batch = respjson.batch.batch;
    translated = respjson.translated;
    working_dates=respjson.working_dates;
    roll_number_enabled=respjson.roll_number_enabled;

    //sort list
    if (roll_number_enabled == true  && $("sort_selector") != null){
      sort_students_array(get_sort_order());
    }

    var header = drawHeader();
    var box = drawBox();
    var attChk = drawCheckbox();
    $('register').update(attChk);

    $('register').appendChild(header);
    $('register').appendChild(box);
    var tbl = $('register-table').down('tbody');
    students.each(function(student){
        tbl.appendChild(makeRow(student.student));
    });
    $$('.quick-attendance-div').invoke('observe','mouseover',showHelp);
    $$('.quick-attendance-div').invoke('observe','mouseout',hideHelp);
    $$('.attendance-label').invoke('observe','click',toggleMode);
    if (roll_number_enabled == true  && $("sort_selector") == null){
      var sort_selector=drawSortSelector();
      $('register').insert({before: sort_selector});
    }
}
function toggleMode(){
    if($('quick-attendance-check').checked == false){
        $('quick-attendance-check').checked = true;
    }
    else{
        $('quick-attendance-check').checked = false;
    }
}
function showHelp(){
    $('quick_attendance').setStyle({
        height: '70px',
        width: '272px'
    });
    $('helper_tooltip').show();
}
function hideHelp(){
    $('quick_attendance').setStyle({
        height: 'auto',
        width: 'auto'
    });
    $('helper_tooltip').hide();
}
function makeRow(student){
    var nameTd=nameTdElem.cloneNode(true);
    var rowEl =rowElem.cloneNode(true);
    rowEl.update(nameTd.update(student.name));
    dates.each(function(dt){
        rowEl.appendChild(makeCell(student,dt));
    });
    return rowEl;
}
function makeCell(student,dt){
    var cellEl = cellElem.cloneNode(true);
    cellEl.id = 'student-'+student.id+'-date-'+d(dt);
    var ndate, tdate,adm_date;
    tdate = Date.parse(date_today);
    ndate = Date.parse(dt);
    adm_date = student.admission_date;
    if(tdate.equals(ndate))cellEl.addClassName('active');
    if(!holidays.include(dt)){
        if(leaves[student.id][dt] == null){
            if(ndate <= tdate){
                var present = presentElem.cloneNode(true);
                present.setAttribute('date', dt);
                present.setAttribute('admsn_date',adm_date);
                present.id=student.id;
                present.update("O");
            }
            if (working_dates.include(dt)){
                cellEl.update(present);
            }
            else
            {
                cellEl.addClassName('holiday');
            }
        }
        else{
            if(ndate <= tdate){
                var absent = absentElem.cloneNode(true);
                absent.id=leaves[student.id][dt];
                absent.update("X");
            }
            cellEl.update(absent);
        }
    }
    else{
        cellEl.addClassName('holiday');
    }
    return(cellEl);
}
function d(dt){
    var dtar = dt.split("-");
    dt = dtar[2]+'-'+dtar[1]+'-'+dtar[0];
    return dt;
}

function handleData(request){
    req =request;
}

function cellHover(){
    if (!this.className.split(" ").include('holiday')){
        var cIndex = this.cellIndex;
        var rIndex = this.up().rowIndex;
        var tbl = this.up(1);
        var dt = getDate(rIndex,cIndex,tbl);
        var name = getName(rIndex,cIndex,tbl);
        var descEl = makeHoverEl(dt,name);
        if(this.down('.date') == null) this.appendChild(descEl);
    }
    else
    {
        this.addClassName('nohover');
    }
}
function getDate(row,col,tbl){
    var el = tbl.children[0].children[col];
    return({
        'day':el.down('.day').innerHTML,
        'date':el.down('.date').innerHTML
    });
}
function getName(row,col,tbl){
    var el = tbl.children[row].children[0];
    return(el.innerHTML);
}
function makeHoverEl(dt,name){
    var maindiv = new Element('div',{
        'class':'date themed_text'
    }).addClassName('date');
    var spanel =  new Element('span');
    var secdiv = new Element('div');
    secdiv.update(name);
    spanel.update(dt.day+" "+dt.date);
    spanel.appendChild(secdiv);
    maindiv.update(spanel);
    return(maindiv);
}

function rebind(){
    $$('.absent').invoke('observe','click',edit);
    $$('.present').invoke('observe','click',add);
    $$('.td-mark').invoke('observe','mouseover',cellHover);
    $$('.goto').invoke('observe','click',changeMonth);
}
function edit(){
    new Ajax.Request('/attendances/'+this.id+'/edit',
    {
        asynchronous:true,
        evalScripts:true,
        method:'get'
    }
  );
}
function add(){
    if($('quick-attendance-check').checked == false){
        new Ajax.Request('/attendances/new',
        {
            parameters:'id='+this.id+'&date='+this.getAttribute('date'),
            asynchronous:true,
            evalScripts:true,
            method:'get'
        }
      );
    }
    else{
        if(this.getAttribute('admsn_date') <= this.getAttribute('date'))
        {
            new Ajax.Request('/attendances/quick_attendance',
            {
                parameters:'id='+this.id+'&date='+this.getAttribute('date'),
                asynchronous:true,
                evalScripts:true,
                method:'get'
            }
          );
        }
        else
        {
            alert(translated['attendance_before_the_date_of_admission_is_invalid']);
        }
    }
}
function drawSortSelector(){
  var newdiv = new Element('div',{
      'class':'sort_selector',
      'id':'sort_selector'
  });
  // var label_field_pair= new Element ('div',{'class':'label-field-pair'});
  // var label_for = new Element('label',{'for':'select_theme'}).update("select order");
  // var text_input_bg =new Element('div',{'class':'text-input-bg'});
  // var select=new Element('select',{'id':'sort_order_selector'}).observe('change',sort_students);
  // var sort_by_name=new Element('option',{'value':0}).update("Name");
  // var sort_by_roll_number=new Element('option',{'value':1}).update("Roll number");
  // select.appendChild(sort_by_name);
  // select.appendChild(sort_by_roll_number);
  // text_input_bg.appendChild(select);
  // label_field_pair.appendChild(label_for);
  // label_field_pair.appendChild(text_input_bg);
  // newdiv.appendChild(label_field_pair);
  // var sort_by_name= new Element('span',{'data-content':'name','id':'sort_by_name','class':'sort_by'}).update("Name");
  // var sort_by_roll_number= new Element('span',{'data-content':'roll_number','id':'sort_by_roll_number','class':'sort_by'}).update("Roll number");
  // <input id="349" type="radio" value="1" name="question1"><label for="349">Abe</label>
  var form = new Element('form',{'id':'sort_form'});
  var form_label= new Element('label',{'id':'form_label'}).update(translated.sort_by);
  var sort_by_name_input= new Element('input',{'id':'sort_by_name','value':0,'name':'sort_order_selector','type':'radio','checked':'checked','class':'sort_by_input'});
  var sort_by_roll_number_input= new Element('input',{'id':'sort_by_roll_number','value':1,'name':'sort_order_selector','type':'radio','class':'sort_by_input'});
  var sort_by_name_label= new Element('label',{'for':'sort_by_name','class':'sort_by_label','id':'sort_by_name_label'}).update(translated.name);
  var sort_by_roll_number_label= new Element('label',{'for':'sort_by_roll_number','class':'sort_by_label','id':'sort_by_roll_number_label'}).update(translated.student_roll_number);
  form.appendChild(form_label);
  form.appendChild(sort_by_name_input);
  form.appendChild(sort_by_name_label);
  form.appendChild(sort_by_roll_number_input);
  form.appendChild(sort_by_roll_number_label);
  form.observe('change',sort_students);
  newdiv.appendChild(form);
  return newdiv;
}
function sort_students(event) {
  sort_order=get_sort_order();
  update_json($("batch_id").value);
}
function get_sort_order() {
  value=$$('input:checked[type=radio][name=sort_order_selector]')[0].value;
  return parseInt(value);
}
function sort_students_array (order) {
  // 0 -> by_first_name
  // 1 -> by roll_number
  if (order==0) {

    students=students.sortBy(function(s) {
      return s.student.first_name;
    });
  } else if (order==1)  {
    // students=students.sortBy(function(s) {
    //   // return parseInt(s.student.roll_number);
    //   return s.student.roll_number ;
    // });
    students=students.sort(function(a,b) {
			if (!a.student.roll_number && !b.student.roll_number) {
					return false;
			} else if (!a.student.roll_number) {
				return 1;
			} else if (!b.student.roll_number) {
				return 0;
			} else {
				return naturalSort(a.student.roll_number,b.student.roll_number);
			}
		});

  }
}
function update_students_list () {
  Element.remove($$(".box-1")[0]);
  box=drawBox();
  $('register').appendChild(box);
  var tbl = $('register-table').down('tbody');
  students.each(function(student){
      tbl.appendChild(makeRow(student.student));
  });
  rebind();
}
document.observe("dom:loaded", function() {
    rebind();
});
