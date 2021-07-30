var Founded = 0;
var imgDefault = "Bootstrap4-HTML-v1.2.3/assets/images/placeholder.png";
var Inventario = [
    {
        id: 'L85-0540',
        Tatto: "",
        SN: "C10-75673",
        BM: "TORREY",
        LDC: "",
        NDC: "",
        CI: "365",
        DR: "",
        RES: "jose santos",
        UP: "",
        WZ: "CR POTING",
        DES: "Calib. Báscula > 2 - 300 kg.",
        COMM: "20 kg",
        IMG: "Bootstrap4-HTML-v1.2.3/assets/images/logos/Bombardier Imagen1.jpeg"
    },
{
    id: 'L85-2438',
    Tatto: "L85-INT-1071",
    SN: "",
    BM: "OMEGA",
    LDC: "10-jul-17",
    NDC: "08/10/2017",
    CI: "365",
    DR: "90",
    RES: "Hector miguel Garcia",
    UP: "",
    WZ: "TRIMMING",
    DES: "HEATGUN",
    COMM: "",
    IMG: "Bootstrap4-HTML-v1.2.3/assets/images/logos/Bombardier Imagen2.jpeg"
}
];



$(document).on('click', '#SearchInventory', function () {
    Founded = 0;
    var filter = $("#searchinventario").val();
    jQuery.each(Inventario, function (i, val) {
        if (val.id == $.trim(filter)) {
            $("#ID").val(val.id);
            $("#Tatoo").val(val.Tatto);
            $("#SN").val(val.SN);
            $("#BM").val(val.BM);
            $("#LC").val(val.LDC);
            $("#NC").val(val.NDC);
            $("#CI").val(val.CI);
            $("#DR").val(val.DR);
            $("#RE").val(val.RES);
            $("#UP").val(val.UP);
            $("#WZ").val(val.WZ);
            $("#Description").val(val.DES);
            $("#Comments").val(val.COMM);
            document.getElementById("ImageTest").src = val.IMG;
            $("#ImageTest").removeClass("ImgFullSpace");
            $("#ImageTest").addClass("ImgMiddleSpace");
            Founded = 1;
            return false;
        }
       
    });
    switch (Founded) {
        case 0:
            $("#Request").modal();
            $("#ID").val("");
            $("#Tatoo").val("");
            $("#SN").val("");
            $("#BM").val("");
            $("#LC").val("");
            $("#NC").val("");
            $("#CI").val("");
            $("#DR").val("");
            $("#RE").val("");
            $("#UP").val("");
            $("#WZ").val("");
            $("#Description").val("");
            $("#Comments").val("");
            document.getElementById("ImageTest").src = imgDefault;
            $("#ImageTest").removeClass("ImgMiddleSpace");
            $("#ImageTest").addClass("ImgFullSpace");

            break;
    }
});

