import QtQuick
import 'qrc:/MyAccordion'

Column{
    MyAccordionItem{
        Rectangle{
            width: 100
            height: 50
            color    : "grey"
        }
    }

    MyAccordionItem{
        Rectangle{
            width: 20
            height: 500
            color    : "blue"
        }
    }
}
