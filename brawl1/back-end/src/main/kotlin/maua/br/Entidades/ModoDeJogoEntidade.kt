package maua.br.Entidades

import maua.br.Entidades.ModoDeJogoEntidade.primaryKey
import org.ktorm.schema.Table
import org.ktorm.schema.int
import org.ktorm.schema.varchar


object ModoDeJogoEntidade : Table<Nothing>("Modo de jogo") {
    val id =  int("id").primaryKey()
    val nomeDoModo = varchar("Nome do modo")
}