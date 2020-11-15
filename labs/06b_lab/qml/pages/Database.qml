import QtQuick 2.0
import QtQuick.LocalStorage 2.0

Item {
    property var db;

    Component.onCompleted: {
        db = LocalStorage.openDatabaseSync("tasks", "1.0");
        createTable();
    }

    function createTable() {
        db.transaction(function(tx) {
            tx.executeSql("CREATE TABLE IF NOT EXISTS tasks (
                id INTEGER PRIMARY KEY AUTOINCREMENT,"
                + "name TEXT NOT NULL);");
        });
    } // createTable()

    function insertTask(name) {
        db.transaction(function(tx) {
            tx.executeSql("INSERT INTO tasks (name) VALUES(?);", [name]);
        });
        console.log("Insert task with 'name': ", name)
    } // insertTask()

    function deleteTask(id) {
        db.transaction(function(tx) {
            tx.executeSql("DELETE FROM tasks WHERE id = ?;", [id]);
        });
        console.log("Deleted task with 'id': ", id)
    } // deleteTask()

    function retrieveTasks(callback) {
        db.transaction(function(tx) {
            var result = tx.executeSql("SELECT * FROM tasks;");
            callback(result.rows);
        });
    } // retrieveTasks()

    function select() {
        tasksListModel.clear();
        retrieveTasks(function(tasks) {
            console.log("Selected from database...")
             for (var i = 0; i < tasks.length; i++) {
                var tsk = tasks.item(i);
                console.log(tsk.id + " " + tsk.name)
                tasksListModel.append({id: tsk.id, name: tsk.name});
             }
         });
     } // select()
} // Item
