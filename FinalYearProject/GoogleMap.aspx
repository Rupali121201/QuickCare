<%--<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GoogleMap.aspx.cs" Inherits="FinalYearProject.GoogleMap" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Set Location On Map</title>
</head>

<script src="https://maps.google.com/maps?file=api&amp;v=2&amp;sensor=true&amp;key=AIzaSyCOlsTEWTUG7nI4eVj6V8MSilNzRZnI8Uo" type="text/javascript"></script>

    <script async
    src="https://maps.googleapis.com/maps/api/js?key=key=AIzaSyCOlsTEWTUG7nI4eVj6V8MSilNzRZnI8Uo&callback=initMap">
</script>

    <script src="Typescript.ts"></script>
<script type="text/javascript">

    function load() {
        if (GBrowserIsCompatible()) {
            var map = new GMap2(document.getElementById("map"));
            map.addControl(new GSmallMapControl());
            map.addControl(new GMapTypeControl());
            var center = new GLatLng(30.0764008, 31.2454738);
            map.setCenter(center, 14);
            map.setMapType(G_SATELLITE_MAP);
            geocoder = new GClientGeocoder();

            var marker = new GMarker(center, { draggable: true });
            map.addOverlay(marker);

            document.getElementById("lat").value = center.lat();
            document.getElementById("lng").value = center.lng();

            geocoder = new GClientGeocoder();

            GEvent.addListener(marker, "dragend", function () {
                var point = marker.getPoint();
                map.panTo(point);
                alert(point);
                document.getElementById("lat").value = point.lat();
                document.getElementById("lng").value = point.lng();
            });

            GEvent.addListener(map, "moveend", function () {
                map.clearOverlays();
                var center = map.getCenter();
                var marker = new GMarker(center, { draggable: true });
                map.addOverlay(marker);
                document.getElementById("lat").value = center.lat();
                document.getElementById("lng").value = center.lng();

                GEvent.addListener(marker, "dragend", function () {
                    var point = marker.getPoint();

                    map.panTo(point);
                    document.getElementById("lat").value = point.lat();
                    document.getElementById("lng").value = point.lng();
                });
            });
        }
    }
    let map;

    function initMap() {
        map = new google.maps.Map(document.getElementById("map"), {
            center: { lat: -34.397, lng: 150.644 },
            zoom: 8,
        });
    }

    window.initMap = initMap;




    function showAddress(address) {

        var map = new GMap2(document.getElementById("map"));
        map.addControl(new GSmallMapControl());
        map.addControl(new GMapTypeControl());
        if (geocoder) {
            geocoder.getLatLng(
                address,
                function (point) {
                    if (!point) {
                        alert(address + " city not found !");
                    }
                    else {
                        document.getElementById("lat").value = point.lat();
                        document.getElementById("lng").value = point.lng();
                        map.clearOverlays()
                        map.setCenter(point, 14);
                        var marker = new GMarker(point, { draggable: true });
                        map.addOverlay(marker);

                        GEvent.addListener(marker, "dragend", function () {
                            var pt = marker.getPoint();
                            map.panTo(pt);
                            document.getElementById("lat").value = pt.lat();
                            document.getElementById("lng").value = pt.lng();
                        });

                        GEvent.addListener(map, "moveend", function () {
                            map.clearOverlays();
                            var center = map.getCenter();
                            var marker = new GMarker(center, { draggable: true });
                            map.addOverlay(marker);
                            document.getElementById("lat").value = center.lat();
                            document.getElementById("lng").value = center.lng();

                            GEvent.addListener(marker, "dragend", function () {
                                var pt = marker.getPoint();
                                map.panTo(pt);
                                document.getElementById("lat").value = pt.lat();
                                document.getElementById("lng").value = pt.lng();
                            });
                        });
                    }
                }
            );
        }
    }
</script>

<body onload="load()" onunload="GUnload()">
    <form id="form1" runat="server">
        <div>
            <asp:TextBox runat="server" ID="lat" name="latitude"></asp:TextBox>
            <asp:TextBox runat="server" ID="lng" name="longitude"></asp:TextBox>
            <div align="center" id="map" style="width: 600px; height: 400px"></div>
        </div>
    </form>
</body>
</html>--%>
