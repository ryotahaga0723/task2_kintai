document.addEventListener('DOMContentLoaded', () => { 
 var end_work = document.getElementById("end_work");
 
 if (!end_work){ return false;}
 end_work.addEventListener('click', function() {
   var nowTime = new Date();
   var nowYear = nowTime.getFullYear();
   var nowMon = nowTime.getMonth() + 1;
   var nowDate = nowTime.getDate();
   var nowHour = nowTime.getHours();
   var nowMin  = nowTime.getMinutes();
   var nowSec  = nowTime.getSeconds();
   var end_time = document.getElementById("main_business_time_end_time_main");
 
   end_time.value = nowYear + "-" + nowMon + "-" + nowDate + "T" + nowHour + ":" + nowMin;
 })
 
})