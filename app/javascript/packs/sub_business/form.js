document.addEventListener('DOMContentLoaded', () => {
  var sub_business_status = document.getElementById("sub_business_status");

  sub_business_status.addEventListener('change', function() {
    element1 = document.getElementById("sub_business_status").value;
    if (element1 == "雇用契約（弊社が後の場合）" || element1 == "雇用モデル") {
      document.getElementById("status2_format").style.display = "";
    }else{
      document.getElementById("status2_format").style.display = "none";
    }
  })
})