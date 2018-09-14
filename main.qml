import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.0
import QtQuick.Controls 2.1

import AppManager 1.0
import "./Utils.js" as Utils

Window {
    id: home
    visible: true
    width: 640
    height: 480
    color: "skyblue"
    title: qsTr("Launcher")

    AppManager{
        id: appManager
    }



    Column {
            spacing: 40
            width: parent.width

            Label {
                id: title
                width: parent.width
                wrapMode: Label.Wrap
                horizontalAlignment: Qt.AlignHCenter
                text: qsTr("主界面")
            }

            ColumnLayout {
                spacing: 30
                anchors.horizontalCenter: parent.horizontalCenter
                focus: true
                Keys.onPressed: {
//                        console.log("key pressed", event.key)
//                    name.text = "key val: " + event.key
                    if(event.key === Utils.KEY_1){   //1 Flaw Detection
                        appManager.startApp("/opt/FlawDetection/bin/FlawDetection")
                    }
                    else if(event.key === Utils.KEY_2){  //2 File Manage

                    }
                    else if(event.key === Utils.KEY_3){  //3 Screen Share

                    }
                    else if(event.key === Utils.KEY_4){  //4 System Settings
                        appManager.startApp("/opt/SystemSettings/bin/SystemSettings")
                    }
                    else if(event.key === Utils.KEY_5){  //5 TOFD

                    }
                }

                Button {
                    text: "1. 探伤扫查"
                    Layout.fillWidth: true
                    onClicked: {                        
                        appManager.startApp("/opt/FlawDetection/bin/FlawDetection")
                    }
                }
                Button {
                    id: button
                    text: "2. 文件管理"
//                    highlighted: true
                    Layout.fillWidth: true
                    onClicked: {

                    }
                }
                Button {
                    text: "3. 无线投屏"
//                    enabled: false
                    Layout.fillWidth: true
                    onClicked: {

                    }
                }
                Button {
                    text: "4. 系统设置"
                    Layout.fillWidth: true
                    onClicked: {

                        appManager.startApp("/opt/SystemSettings/bin/SystemSettings")
                    }
                }
                Button {
                    text: "5. TOFD应用"
                    enabled: false
                    Layout.fillWidth: true
                    onClicked: {

                    }
                }

//                Rectangle{
//                    id: custom
//                    Layout.fillWidth: true
//                    height: 40
//                    color: "red"
//                    property int cnt: 0

//                    MouseArea{
//                        anchors.fill: parent
//                        onClicked: {
//                            custom.cnt++
//                            name.text = custom.cnt
//                        }
//                    }

//                    Text {
//                        id: name
//                        text: "键值"
//                    }



//                }
            }
        }

}
