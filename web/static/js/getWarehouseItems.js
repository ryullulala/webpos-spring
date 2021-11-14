function getWarehouseItems() {
    var store_id = $("span[name=warehouseBtn]").attr('id');
    console.log(store_id);
    $.ajax({
        type:"GET",
        url:"/api/getWarehouseItems",
        data: {"id" : store_id},
        dataType: "json",
        // success: function (data) {
        //     var items = data;
        //     console.log(data);
        //}

    })


}