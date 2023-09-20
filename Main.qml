import QtQuick 6.2
import QtQuick.Controls 2.16

ApplicationWindow {
visible: true
width: 400
height: 400

Rectangle {
width: 400
height: 400
color: "lightgray"

// Clock face
Canvas {
id: clockFace
width: 200
height: 200
anchors.centerIn: parent

onPaint: {
var ctx = clockFace.getContext("2d");
ctx.strokeStyle = "black";
ctx.lineWidth = 2;
ctx.translate(clockFace.width / 2, clockFace.height / 2);

// Draw hour markers
for (var i = 0; i < 12; ++i) {
ctx.beginPath();
ctx.moveTo(0, -80);
ctx.lineTo(0, -90);
ctx.stroke();
ctx.rotate(Math.PI / 6);
}

// Draw minute markers
for (var i = 0; i < 60; ++i) {
ctx.beginPath();
ctx.moveTo(0, -85);
ctx.lineTo(0, -90);
ctx.stroke();
ctx.rotate(Math.PI / 30);
}
}
}
}}
