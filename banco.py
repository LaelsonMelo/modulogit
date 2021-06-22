import mysql.connector
from mysql.connector import cursor 


conexão=mysql.connector.connect(
    host='Localhost',
    user='root',
    password='',
    database='projeto_sco' 
)

#def autenticando_login ():
#    usuario=LOGIN.C_usuario.text()
#    senha=LOGIN.C_senha.text()
#    comandoSQL="  SELECT senha FROM  aluno WHERE  nome= '"+ usuario +"'; "#

#    try:
#        cursor=conexão.cursor()
#        cursor.execute(comandoSQL)
#        senha_bd=cursor.fetchall()#

#        if senha_bd[0][0]==senha:
#            LOGIN.close()
#            PERFIL.show()
                    
#        else: 
#            LOGIN.C_aviso.setText("Dados de login incorretos!!!!")

#    except:  
#        LOGIN.C_aviso.setText("Dados de login invalidos!!")

#PEGANDO ID. 
nome=input("Digite o nome: ")
e_mail=input("Digite o email: ")
senha=input("Digite a senha: ")
id_usuario=int(input("Digite o id: "))

print(nome,e_mail,senha,id_usuario)

comandoSQL = " UPDATE aluno SET nome = %s, e_mail = %s, senha = %s WHERE id = %s;"
valores=(nome,e_mail,senha,id_usuario)
try: 
    cursor=conexão.cursor()  
    cursor.execute(comandoSQL,valores)
    conexão.commit()
    cursor.close()
    print('Atualizado')
except:
    print("houve erro na adição dos dados")