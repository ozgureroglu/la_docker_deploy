#### LA docker deployment.

Bu proje, docker tabanli bir LA kurulumunun, demo amacli olarak, tek fiziksel makina uzerinde gerceklestirilebilmesi amaci ile yapilmistir. 
Her bilesen icin, eger var ise, ayri bir dizin icinde gereken konfigurasyonlar ve docker dosyalari bulunmaktadir.

##### Kurulum

1. Konteynarlarin kurulabilmesi icin kurulum yapilacak olan makinada docker ve docker-compose kurulu yapilmis olmalidir. Linux isletim sistemi uzerinde docker ve docker-compose kurulumlari icin asagidaki linklerde belirtilen adimlar tamamlanmalidir. 
    ###### docker 
    [Debian 9 uzerinde docker kurulumu](https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-debian-9)

    ###### docker-compose
    [Debian 9 uzerinde docker-compose kurulumu](https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-debian-9)
2. Kurulumun yapilacagi makinanin internet baglantisi olmasi gerekmektedir.
3. docker ve docker-compose kurulumlari yapildiktan sonra docker-compose.yml dosyasinin bulundugu dizinde 
    ```bash
    docker-compose up -d
    ``` 
    komutu calistirilir. Bu komut gerekli imajlarin indirilmesini/olusturulmasini sagladiktan sonra, dosya icinde tanimlanan konteynarilarin olusturulmasini saglar.
4. Son olarak 
    ```bash
    docker ps
    ``` 
    komutu ile olusturulmus ve calismakta olan konteynarlar gorulebilir.
    ```bash
    CONTAINER ID        IMAGE                          COMMAND                  CREATED             STATUS                    PORTS                                                                                        NAMES
    9132a15de4db        la_docker_deploy_la_openldap   "/container/tool/run"    10 seconds ago      Up 5 seconds              0.0.0.0:389->389/tcp, 0.0.0.0:636->636/tcp                                                   la_openldap
    2fc09016ef3f        ibasaran/ejabberd              "run start"              2 minutes ago       Up 2 minutes              0.0.0.0:5222->5222/tcp, 0.0.0.0:5269->5269/tcp, 4560/tcp, 5443/tcp, 0.0.0.0:5280->5280/tcp   liderxmpp
    6e7dd9e9f7f0        la_lider                       "/srv/lider-distro-1…"   25 minutes ago      Up 25 minutes             1099/tcp, 8101/tcp, 44444/tcp                                                                la_lider
    681a5f4c9013        la_db                          "/entrypoint.sh mysq…"   25 minutes ago      Up 25 minutes (healthy)   3306/tcp, 33060/tcp                                                                          la_db
    ``` 