<html>
    <script type="text/javascript" src="">
        function getSubjects(term) {
	if (term != '0') {
		xmlHttp=GetXmlHttpObject()
		if (xmlHttp==null)  	{
 			alert ("Browser does not support HTTP Request")
 			return
 		} 
		var url="/_scripts/get_subjects.php?term="+term
		//alert(url) ;
		xmlHttp.onreadystatechange=stateChangedSubjects
		xmlHttp.open("GET",url,true)
		xmlHttp.send(null)
	} else {
		// if term==0 then no term has been selected - don't do anything
	}
}

    </script>
<h2>Course Search</h2>
          
          <!-- echo message_in, if any-->
          <p class="message" id="message_in"></p>
                    
    			<form style="width:90%;margin: auto ; " action="courses.php" method="post">
            
            <div id="basic">
            	<div style="font-size: 1.5em ; "><label for="semester" style="display: inline-block;"><strong>Select a semester to enable all other search options: &nbsp; &nbsp;</strong></label>
               	<div id="semesterbox" style="display: inline-block;">
                 	<select name="semester" id="semester" onchange="enableInput(this.value);getSubjects(this.value); "><option value="0">-- select semester --</option><option value="201708">Fall Semester 2017</option></select>     
                </div>
              </div>
              <br style="clear: both;" />
              
              <h3 style="text-align: left ;" id="basicHeader">Basic Search:</h3>
              <div style="width: 420px ; display: inline-block;">
              	<p id="subjectSelect">
                  <strong>Subject(s): </strong> &nbsp;
                  <select name="subject" id="subject">
                  	<option value="">-- select semester first --</option>
                    <noscript><option value="ACCT" selected>Accounting - ACCT</option><option value="ANTH">Anthropology - ANTH</option><option value="ARAB">Arabic - ARAB</option><option value="ARTE">Art - Education - ARTE</option><option value="ARTH">Art - History - ARTH</option><option value="ARTS">Art - Studio - ARTS</option><option value="ASTR">Astronomy - ASTR</option><option value="BIOL">Biology - BIOL</option><option value="BUSA">Business Administration - BUSA</option><option value="CIED">Center for International Educ - CIED</option><option value="CHEM">Chemistry - CHEM</option><option value="COMM">Communication - COMM</option><option value="CPSC">Computer Science - CPSC</option><option value="COUN">Counseling - COUN</option><option value="CRJU">Criminal Justice - CRJU</option><option value="ECON">Economics - ECON</option><option value="EDUC">Education - EDUC</option><option value="EDCI">Education - Curr &amp; Instr - EDCI</option><option value="EDEC">Education - Early Childhood - EDEC</option><option value="EDUF">Education - Foundations - EDUF</option><option value="EDUL">Education - Leadership - EDUL</option><option value="EDSC">Education - Math &amp; Sci Collab. - EDSC</option><option value="EDMS">Education - Math &amp; Sciences - EDMS</option><option value="EDMT">Education - Math Collab. - EDMT</option><option value="EDMG">Education - Middle grades - EDMG</option><option value="EDRG">Education - Reading - EDRG</option><option value="EDSE">Education - Secondary - EDSE</option><option value="SPED">Education - Special Ed - SPED</option><option value="EDUT">Education - Technology - EDUT</option><option value="AL">Education- GOML - AL</option><option value="PSYG">Education- GOML - PSYG</option><option value="EDAT">Education-Accomplished Teachng - EDAT</option><option value="EDRD">Education-Accomplished Teachng - EDRD</option><option value="FREC">Education-Accomplished Teachng - FREC</option><option value="FRIT">Education-Accomplished Teachng - FRIT</option><option value="IT">Education-Accomplished Teachng - IT</option><option value="MGMS">Education-Accomplished Teachng - MGMS</option><option value="TSLE">Education-Accomplished Teachng - TSLE</option><option value="ENGR">Engineering - ENGR</option><option value="ENGL">English - ENGL</option><option value="ENVS">Environmental Science - ENVS</option><option value="EURO">European Union - EURO</option><option value="EXSC">Exercise Science - EXSC</option><option value="FINC">Finance - FINC</option><option value="FYRS">First-Year Seminar - FYRS</option><option value="FREN">French - FREN</option><option value="FRLC">Freshman Learning Community - FRLC</option><option value="GEOG">Geography - GEOG</option><option value="GEOL">Geology - GEOL</option><option value="GERM">German - GERM</option><option value="HCMG">Health Management - HCMG</option><option value="HESC">Health Science - HESC</option><option value="HIST">History - HIST</option><option value="HONS">Honors Course - HONS</option><option value="WBIT">Information Technology - WBIT</option><option value="ISCI">Integrated Science - ISCI</option><option value="ITDS">Interdisciplinary Studies - ITDS</option><option value="JAPN">Japanese - JAPN</option><option value="JADM">Justice Administration - JADM</option><option value="LATN">Latin - LATN</option><option value="LIBR">Library - LIBR</option><option value="MPAC">MPA - Core - MPAC</option><option value="MPAG">MPA - General Government - MPAG</option><option value="MPAH">MPA - Health Science - MPAH</option><option value="MPAJ">MPA - Justice Admin - MPAJ</option><option value="MSHR">MS Human Resources - MSHR</option><option value="MSOL">MS Organizational Leadership - MSOL</option><option value="MSSL">MS Servant Leadership - MSSL</option><option value="MGMT">Management - MGMT</option><option value="MISM">Management Information Systems - MISM</option><option value="MKTG">Marketing - MKTG</option><option value="MBA">Master of Bus Admin - MBA</option><option value="MATH">Mathematics - MATH</option><option value="MAED">Mathematics Education - MAED</option><option value="MSAL">Military Sci &amp; Adv Leadership - MSAL</option><option value="MUSA">Music-Applied - MUSA</option><option value="MUSE">Music-Education - MUSE</option><option value="MUSC">Music-General - MUSC</option><option value="MUSP">Music-Performance - MUSP</option><option value="NURS">Nursing - NURS</option><option value="PHIL">Philosophy - PHIL</option><option value="PHED">Physical Education - PHED</option><option value="PEDS">Physical Education-Activity - PEDS</option><option value="PHYS">Physics - PHYS</option><option value="POLS">Political Science - POLS</option><option value="PORT">Portuguese - PORT</option><option value="PSYC">Psychology - PSYC</option><option value="READ">Reading - READ</option><option value="LEAD">Servant Leadership - LEAD</option><option value="SOCI">Sociology - SOCI</option><option value="SPAN">Spanish - SPAN</option><option value="STAT">Statistics - STAT</option><option value="THEA">Theatre - THEA</option><option value="UTCH">UTeach - UTCH</option><option value="WMBA">Web Masters of Business Admin. - WMBA</option></noscript>
                   </select>    
                 </p>                   
</html>