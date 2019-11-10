<script type="text/javascript">
  $(document).ready(function(){
$("#bookonex").click(function(){
    console.log("invoke");
    $.ajax({url: "http://localhost:3000/book1x",
    type: "POST",
    contentType: "application/json",
    data : { "name": "Manu Thomas",
    "phone": "8281689112",
    "id": "f425d655-1f20-4646-b707-f2ff40f1d141"
},
    success: function(result){
      $("#div1").html(result);
    }
  });
  })};
});
</script>