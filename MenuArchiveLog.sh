#!/bin/bash
x="script"
menu ()
{
while true $x != "script"
do
clear
echo "*************************************************************"
echo "Menu Monitoramento Archives Log"
# Autor : Sergio Tavares
echo ""
echo "1)Listar os Archives Logs"
echo""
echo "2)Verificar Espaço em Disco"
echo ""
echo "3)Verifica o Tamanhos dos Archives Logs em MegaByte"
echo ""
echo "4)Backup dos Archives Log"
echo""
echo "5)Deletar Archives Log"
echo""
echo "6)Sair do Menu"
echo ""
echo "*************************************************************"

echo "Digite a opção desejada:"
read x
echo "Opção informada ($x)"
echo "*************************************************************"

case "$x" in 


    1)
      cd /u01/app/oracle/product/19.0.0/dbhome_1/dbs
      ls -la arch*
      sleep 10
      
echo "*************************************************************"
;;
    2)
      df -h
      sleep 10
echo "*************************************************************"
;;
   3)
    cd /u01/app/oracle/product/19.0.0/dbhome_1/dbs 
    du -hsm *.dbf
      sleep 10
echo "*************************************************************"
;;
    4)
     cd /u01/app/oracle/product/19.0.0/dbhome_1/dbs
     cp *.dbf /u02/oradata/bcklog
      sleep 20
echo "*************************************************************"
;;      
     5)  
     cd /u01/app/oracle/product/19.0.0/dbhome_1/dbs 
     rm *.dbf
     sleep 20
echo "*************************************************************"
;;
    6) 
    echo "Finalizando"
    sleep 2
    clear;
    exit;

echo "*************************************************************"
;;
*)
  echo "Atenção!!! Opção inválida!"
esac
done

}
menu
