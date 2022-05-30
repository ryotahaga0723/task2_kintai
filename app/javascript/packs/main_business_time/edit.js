document.addEventListener('DOMContentLoaded', () => {
  var start_time_hour = document.getElementById("start_time_hour");
  var start_time_minute = document.getElementById("start_time_minute");
  var start_time = document.getElementById("main_business_time_start_time_main");
  
  var end_time_hour = document.getElementById("end_time_hour");
  var end_time_minute = document.getElementById("end_time_minute");
  var end_time = document.getElementById("main_business_time_end_time_main");
  
  var date = document.getElementById("date").value;
  
  //開始時刻の時間を入力した場合の処理
  start_time_hour.addEventListener('change', function() {
    var start_hour = start_time_hour.value;
    var start_minute = start_time_minute.value;
    var end_hour = end_time_hour.value;
    var end_minute = end_time_minute.value;
  
    var start_hour_num = start_time_hour.valueAsNumber;
    var start_minute_num = start_time_minute.valueAsNumber;
    var end_hour_num = end_time_hour.valueAsNumber;
    var end_minute_num = end_time_minute.valueAsNumber;
  
    if(start_minute == ""){
      start_minute = "00"
      start_minute_num = 0
    }
  
    if(end_hour == ""){
      end_hour = "00"
      end_hour_num = 0
    }
  
    if(end_minute == ""){
      end_minute = "00"
      end_minute_num = 0
    }
  
    if(start_time_hour.valueAsNumber < 10){
      start_hour = "0" + start_hour
    }
  
    if(start_time_minute.valueAsNumber < 10){
      start_minute = "0" + start_minute
    }
  
    if(end_time_hour.valueAsNumber < 10){
      end_hour = "0" + end_hour
    }
  
    if(end_time_minute.valueAsNumber < 10){
      end_minute = "0" + end_minute
    }
  
    start_time.value = date + "T" + start_hour + ":" + start_minute;
    end_time.value = date + "T" + end_hour + ":" + end_minute;
  
    if(start_time.value <= end_time.value){
      if(start_hour_num > 23 || start_minute_num > 59 || end_hour_num > 23 || end_minute_num > 59){
        document.getElementById('message').textContent = '時刻が不正な値です。';
        document.getElementById("submit_btn").style.display = "none";
      }else{
        document.getElementById('message').textContent = '';
        document.getElementById("submit_btn").style.display = "";
      }
    }else{
      document.getElementById('message').textContent = '終了時刻を開始時刻の後に設定してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  
    if(start_hour == "" && start_minute == ""){
      document.getElementById('message').textContent = '開始時刻を入力してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  
    if(end_time.value == date + "T" + "00:00" ){
      end_time.value = "";
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })
  
  //開始時刻の分を入力した場合の処理
  start_time_minute.addEventListener('change', function() {
    var start_hour = start_time_hour.value;
    var start_minute = start_time_minute.value;
    var end_hour = end_time_hour.value;
    var end_minute = end_time_minute.value;
  
    var start_hour_num = start_time_hour.valueAsNumber;
    var start_minute_num = start_time_minute.valueAsNumber;
    var end_hour_num = end_time_hour.valueAsNumber;
    var end_minute_num = end_time_minute.valueAsNumber;
  
    if(start_hour == ""){
      start_hour = "00"
      start_hour_num = 0
    }
  
    if(end_hour == ""){
      end_hour = "00"
      end_hour_num = 0
    }
  
    if(end_minute == ""){
      end_minute = "00"
      end_minute_num = 0
    }
  
    if(start_time_hour.valueAsNumber < 10){
      start_hour = "0" + start_hour
    }
  
    if(start_time_minute.valueAsNumber < 10){
      start_minute = "0" + start_minute
    }
  
    if(end_time_hour.valueAsNumber < 10){
      end_hour = "0" + end_hour
    }
  
    if(end_time_minute.valueAsNumber < 10){
      end_minute = "0" + end_minute
    }
  
    start_time.value = date + "T" + start_hour + ":" + start_minute;
    end_time.value = date + "T" + end_hour + ":" + end_minute;
  
    if(start_time.value <= end_time.value){
      if(start_hour_num > 23 || start_minute_num > 59 || end_hour_num > 23 || end_minute_num > 59){
        document.getElementById('message').textContent = '時刻が不正な値です。';
        document.getElementById("submit_btn").style.display = "none";
      }else{
        document.getElementById('message').textContent = '';
        document.getElementById("submit_btn").style.display = "";
      }
    }else{
      document.getElementById('message').textContent = '終了時刻を開始時刻の後に設定してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  
    if(start_hour == "" && start_minute == ""){
      document.getElementById('message').textContent = '開始時刻を入力してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  
    if(end_time.value == date + "T" + "00:00" ){
      end_time.value = "";
      document.getElementById('message').textContent = '';
      document.getElementById("submit_btn").style.display = "";
    }
  })
  
  //終了時刻の時間を入力した場合の処理
  end_time_hour.addEventListener('change', function() {
    var start_hour = start_time_hour.value;
    var start_minute = start_time_minute.value;
    var end_hour = end_time_hour.value;
    var end_minute = end_time_minute.value;
  
    var start_hour_num = start_time_hour.valueAsNumber;
    var start_minute_num = start_time_minute.valueAsNumber;
    var end_hour_num = end_time_hour.valueAsNumber;
    var end_minute_num = end_time_minute.valueAsNumber;
  
    if(start_hour == ""){
      start_hour = "00"
      start_hour_num = 0
    }
  
    if(start_minute == ""){
      start_minute = "00"
      start_minute_num = 0
    }
  
    if(end_minute == ""){
      end_minute = "00"
      end_minute_num = 0
    }  
  
    if(start_time_hour.valueAsNumber < 10){
      start_hour = "0" + start_hour
    }
  
    if(start_time_minute.valueAsNumber < 10){
      start_minute = "0" + start_minute
    }
  
    if(end_time_hour.valueAsNumber < 10){
      end_hour = "0" + end_hour
    }
  
    if(end_time_minute.valueAsNumber < 10){
      end_minute = "0" + end_minute
    }
  
    start_time.value = date + "T" + start_hour + ":" + start_minute;
    end_time.value = date + "T" + end_hour + ":" + end_minute;
  
    if(start_time.value <= end_time.value){
      if(start_hour_num > 23 || start_minute_num > 59 || end_hour_num > 23 || end_minute_num > 59){
        document.getElementById('message').textContent = '時刻が不正な値です。';
        document.getElementById("submit_btn").style.display = "none";
      }else{
        document.getElementById('message').textContent = '';
        document.getElementById("submit_btn").style.display = "";
      }
    }else{
      document.getElementById('message').textContent = '終了時刻を開始時刻の後に設定してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  
    if(start_hour == "" && start_minute == ""){
      document.getElementById('message').textContent = '開始時刻を入力してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  })
  
  //終了時刻の分を入力した場合の処理
  end_time_minute.addEventListener('change', function() {
    var start_hour = start_time_hour.value;
    var start_minute = start_time_minute.value;
    var end_hour = end_time_hour.value;
    var end_minute = end_time_minute.value;
  
    var start_hour_num = start_time_hour.valueAsNumber;
    var start_minute_num = start_time_minute.valueAsNumber;
    var end_hour_num = end_time_hour.valueAsNumber;
    var end_minute_num = end_time_minute.valueAsNumber;
  
    if(start_hour == ""){
      start_hour = "00"
      start_hour_num = 0
    }
  
    if(start_minute == ""){
      start_minute = "00"
      start_minute_num = 0
    }
  
    if(end_hour == ""){
      end_hour = "00"
      end_hour_num = 0
    }  
  
    if(start_time_hour.valueAsNumber < 10){
      start_hour = "0" + start_hour
    }
  
    if(start_time_minute.valueAsNumber < 10){
      start_minute = "0" + start_minute
    }
  
    if(end_time_hour.valueAsNumber < 10){
      end_hour = "0" + end_hour
    }
  
    if(end_time_minute.valueAsNumber < 10){
      end_minute = "0" + end_minute
    }
  
    start_time.value = date + "T" + start_hour + ":" + start_minute;
    end_time.value = date + "T" + end_hour + ":" + end_minute;
  
    if(start_time.value <= end_time.value){
      if(start_hour_num > 23 || start_minute_num > 59 || end_hour_num > 23 || end_minute_num > 59){
        document.getElementById('message').textContent = '時刻が不正な値です。';
        document.getElementById("submit_btn").style.display = "none";
      }else{
        document.getElementById('message').textContent = '';
        document.getElementById("submit_btn").style.display = "";
      }
    }else{
      document.getElementById('message').textContent = '終了時刻を開始時刻の後に設定してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  
    if(start_hour == "" && start_minute == ""){
      document.getElementById('message').textContent = '開始時刻を入力してください。';
      document.getElementById("submit_btn").style.display = "none";
    }
  })
  })