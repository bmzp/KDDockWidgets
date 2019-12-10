/*
  This file is part of KDDockWidgets.

  Copyright (C) 2019 Klarälvdalens Datakonsult AB, a KDAB Group company, info@kdab.com
  Author: Sérgio Martins <sergio.martins@kdab.com>

  This program is free software; you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 2 of the License, or
  (at your option) any later version.

  This program is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

import QtQuick 2.9

TitleBarBase {
    id: root

    Text {
        id: title
        text: root.title
        anchors {
            left: parent.left
            leftMargin: 5
        }
    }

    Rectangle {
        id: floatButton
        color: "red"
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: closeButton.left
            topMargin: 5
            bottomMargin: 5
            rightMargin: 5
        }
        width: height

        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Float clicked")
            }
        }
    }

    Rectangle {
        id: closeButton
        color: "red"
        anchors {
            top: parent.top
            bottom: parent.bottom
            right: parent.right
            topMargin: 5
            bottomMargin: 5
            leftMargin: 5
        }
        width: height
        MouseArea {
            anchors.fill: parent
            onClicked: {
                console.log("Close clicked")
            }
        }
    }
}
