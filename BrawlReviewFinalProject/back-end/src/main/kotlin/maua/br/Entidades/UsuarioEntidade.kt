package maua.br.Entidades

import maua.br.Entidades.UsuarioEntidade.primaryKey
import org.ktorm.schema.Table
import org.ktorm.schema.int
import org.ktorm.schema.varchar


object UsuarioEntidade : Table<Nothing>("Usuario"){
    val idUsuario =  int("id").primaryKey()
    val nomeUsuario = varchar("Nome")
    val senhaUsuario = varchar("Senha")
}