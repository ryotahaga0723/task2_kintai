document.addEventListener('DOMContentLoaded', () => {
  var schedule_holiday = document.getElementById("schedule_holiday");

  schedule_holiday.addEventListener('change', function() {
    element1 = document.getElementById("schedule_holiday").value;
    if (element1 == "平日") {
      document.getElementById("weekly_format").style.display = "";
      document.getElementById('message').textContent = 'スケジュールを登録してください';
      document.getElementById("submit_btn").style.display = "none";
    }else{
      document.getElementById("weekly_format").style.display = "none";
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })

  var start_4i = document.getElementById("schedule_start_time_sch_4i");
  var start_5i = document.getElementById("schedule_start_time_sch_5i");
  var end_4i = document.getElementById("schedule_end_time_sch_4i");
  var end_5i = document.getElementById("schedule_end_time_sch_5i");


  start_4i.addEventListener('change', function() {
    var start_time = start_4i.selectedIndex * 60 + start_5i.selectedIndex
    var end_time = end_4i.selectedIndex * 60 + end_5i.selectedIndex

    if (start_time > end_time){
      document.getElementById('message').textContent = '終了時刻を開始時刻の後を指定してください';
      document.getElementById("submit_btn").style.display = "none";
    }else{
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })

  start_5i.addEventListener('change', function() {
    var start_time = start_4i.selectedIndex + start_5i.selectedIndex
    var end_time = end_4i.selectedIndex + end_5i.selectedIndex

    if (start_time > end_time){
      document.getElementById('message').textContent = '終了時刻を開始時刻の後を指定してください';
      document.getElementById("submit_btn").style.display = "none";
    }else{
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })

  end_4i.addEventListener('change', function() {
    var start_time = start_4i.selectedIndex * 60 + start_5i.selectedIndex
    var end_time = end_4i.selectedIndex * 60 + end_5i.selectedIndex

    if (start_time > end_time){
      document.getElementById('message').textContent = '終了時刻を開始時刻の後を指定してください';
      document.getElementById("submit_btn").style.display = "none";
    }else{
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })

  end_5i.addEventListener('change', function() {
    var start_time = start_4i.selectedIndex * 60 + start_5i.selectedIndex
    var end_time = end_4i.selectedIndex * 60 + end_5i.selectedIndex
    
    if (start_time > end_time){
      document.getElementById('message').textContent = '終了時刻を開始時刻の後を指定してください';
      document.getElementById("submit_btn").style.display = "none";
    }else{
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })
})