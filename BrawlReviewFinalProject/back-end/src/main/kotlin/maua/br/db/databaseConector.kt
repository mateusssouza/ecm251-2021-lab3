package br.maua.db

import org.ktorm.database.Database


object DatabaseConector {
    val database = Database.connect(
        url = "jdbc:mariadb://192.168.56.101:3306/aplicacao",
        driver = "org.mariadb.jdbc.Driver",
        user = "admin",
        password = "admin"
    )
}
