document.addEventListener('DOMContentLoaded', () => { 
  var start_work = document.getElementById("start_work");

  start_work.addEventListener('click', function() {
    var nowTime = new Date();
    var nowYear = nowTime.getFullYear();
    var nowMon = nowTime.getMonth() + 1;
    var nowDate = nowTime.getDate();
    var nowHour = nowTime.getHours();
    var nowMin  = nowTime.getMinutes();
    var nowSec  = nowTime.getSeconds();
    var start_time = document.getElementById("sub_business_time_start_time_sub");
    var start_work_time = document.getElementById("start_time_work");
  
    start_time.value = nowYear + "-" + nowMon + "-" + nowDate + "T" + nowHour + ":" + nowMin;
    start_time_work.value = nowHour + ":" + nowMin;
  })   
})