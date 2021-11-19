package maua.br.Entidades


import org.ktorm.schema.Table
import org.ktorm.schema.int
import org.ktorm.schema.varchar

object AvaliacaoEntidade : Table<Nothing>("Avaliacao"){
    val id =  int("id").primaryKey()
    val texto_de_opiniao = varchar("Texto de opiniao")
    val idUsuario = int("idUsuario")
    val idModo = int("idModo")
    val idPersonagem = int("idPersonagem")
}