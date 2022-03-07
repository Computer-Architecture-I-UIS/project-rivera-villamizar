 # <p align= "center"> :books: RVfpga SoC THE IMAGINATION UNIVERSITY PROGRAMME :books: </p>
 
 Para desarrollar el curso de RVfpga SoC, se desarrollan un conjuto de laboratorios para lograr un mejor entendimiento. Este informe, se realizan los laboratorios 1 y 2 correspondientes a este curso.

Para la realización de estos incialmente nos registramos en la pagina web de imagination university program y solicitamos el envio del mataerial correspondiente, posteriormente se incio la lectura de la guia para iniciar la instalación y desarrollo de los laboratorios.

El software necesario para el desarrollo de los laboratorios es el siguiente:

 * :black_nib: Vivado 
 * :black_nib: Cable Drivers
 * :black_nib: Digilent Board Files
 * :black_nib: VS code
 * :black_nib: PlatformIO on top of VSCode
 * :black_nib: GTKVWave
 * :black_nib: Verilator
  

### :large_orange_diamond: LABORATORIO 1 - INTRODUCCIÓN A RVfpga-Soc
* Para inciar el desarrollo de este laboratorio iniciamos con la lectura incial en la guia de forma que se fuera entendiendo como funciona RVfpga-SoC, además de ir conociendo sus caracteristicas principales, posteriormente se fueron conociendo los requerimientos necesarios para el correcto desarrollo del laboratorio.
 
 Primero se iniciara con el desarrollo de la guia por lo tanto se creara un proyecto en vivado: 

<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/073427536581c14a7dcc519191a407ddf5a3ae89/Im%C3%A1genes/Screenshot%20from%202022-03-06%2015-27-54.png" alt="modulo" width="500"/>
</p>

En este paso se deben incluir los directorios y los archivos y así dejar creado el proyecto.

* Luego se definen algunos archivos de manera global, como se puede observar en la figura. También se debe asignar el archivo rvfpga.sv como "top".
<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/10ceab68894be5e6ab13573844f50aaf18fbfe8e/Im%C3%A1genes/Screenshot%20from%202022-03-06%2018-22-41.png" alt="modulo" width="400"/>
</p>
<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/10ceab68894be5e6ab13573844f50aaf18fbfe8e/Im%C3%A1genes/Screenshot%20from%202022-03-06%2018-32-28.png" alt="modulo" width="400"/>
</p>

* Se deben definir de esta manera, es decir, globales los siguientes archivos:

 * common_defines.vh
 * assign.svh
 * registers.svh
 * typedef.svh
 
* Mediante la herramiento de Diseño de Bloques llamado BD, se crea un espacio de trabajo en blanco de diseño de bloques donde se añadiran b
<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/18b41a04b81fd2621903e8d3899d51664c39f2ea/Im%C3%A1genes/Screenshot%20from%202022-03-06%2018-36-53.png"/>
</p>
Esto se debe realizar para los siguientes bloques:

 * swerv_wrapper_verilog
 * intcon_wrapper_bd
 * bootrom_wrapper
 * syscon_wrapper
 * bidirec (En 32 ocaciones) 

* Se procede a realizar las respectivas conexiones tanto internas (corresponde a conexiones entre los bloques), como externas(señales que provienen de manera externa). Luego de realizar cada una de las conexiones requeridas se plenatea un diseño de esquemático como el que se puede observar en la siguiente imagen: 

<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/ff9088e116703afc03ac4f4b44b5fb3902b39b47/Im%C3%A1genes/Screenshot%20from%202022-03-06%2020-32-55.png"/>
</p>

* Ya finalizado este paso, a partir del archibo BD.bd, se crea el archivo verilog el cual contiene las conexiones de todos los bloques.

Ya con los resultados anteriores, se va a generar el bitstream, para ellos incialmente se tienen que realizar las siguientes modificaciones sobres las configuraciones en vivado, como se puede observar en la figura.

<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/c7ee3ebc16cc1986ad42da0d897b7c13d6281938/Im%C3%A1genes/Screenshot%20from%202022-03-06%2021-26-42.png"/>
</p>

* Finalmente, después de haber realizado el bitstream, se puede observar que este y la sintezis se realizaron de manera correcta, como lo muestra la figura.
<p align="center"> 
 <img src="https://github.com/Vlasevi/riscvlabs/blob/c7ee3ebc16cc1986ad42da0d897b7c13d6281938/Im%C3%A1genes/Screenshot%20from%202022-03-06%2022-44-06.png"/>
</p>

### :large_orange_diamond: LABORATORIO 2 - CORRIENDO UN PROGRAMA DE PRUEBA EN RVfpga-Soc
Para inciar el desarrollo del segundo laboratorio se realizo la respectiva lectura de la guia correspondiente al laboratorio 2 de manera de entender los coceptos y el paso a paso para realizar este laboratorio.

* Se debe obtener el archivo verilog BD.v del laboratorio anterior y llevarlo a la ubicación siguiente:
##### <p align= "center"> [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/src/SweRVolfSoC/.</p>

Ya en esta ubicación se debe corroborrar que los modulos dentro del archivo verilog, terminen en 0_0, como se observa en las siguientes figuras:

<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/5fb83562aa8dccc5db3205ccfa065064efe62e14/Im%C3%A1genes/Screenshot%20from%202022-03-07%2010-40-13.png"/>
</p>

<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/5fb83562aa8dccc5db3205ccfa065064efe62e14/Im%C3%A1genes/Screenshot%20from%202022-03-07%2010-40-23.png"/>
</p>

<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/5fb83562aa8dccc5db3205ccfa065064efe62e14/Im%C3%A1genes/Screenshot%20from%202022-03-07%2010-40-30.png"/>
</p>

<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/5fb83562aa8dccc5db3205ccfa065064efe62e14/Im%C3%A1genes/Screenshot%20from%202022-03-07%2010-40-41.png"/>
</p>

Ya con esta comprobación realizada, se realiza la creación del archivo Vrvfpgasim, mediante los siguientes códigos:

* cdcd [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/verilatorSIM
* make clean
* make

Con esto se obtiene el resultado en la terminal que se observa en la figura y ya el archivo está creado.

<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/1b90377250b4951d5dbc3e386ae80e207a531ac5/Im%C3%A1genes/Screenshot%20from%202022-03-07%2011-11-52.png"/>
</p>

Posteriormente se abre el visual basic code en la carpeta que cuenta con la siguiente direccion:
##### <p align= "center"> [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/examples/.</p>

Luego se abre el archico PlatformIO.ini y se modifica la linea 21 colocando la siguiente redireccion:
##### <p align= "center"> home/user/RVfpgaSoC/Labs/LabResources/Lab2/verilatorSIM/Vrvfpgasim.</p>

<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/33cf76c7bf143a5d02991884acae2fee7b115d26/Im%C3%A1genes/Screenshot%20from%202022-03-07%2015-46-54.png"/>
</p>

Ahora se procede a generar la traza mediante la opción que se puede observar en la siguiente figura:
<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/663ca311afc08816fec828e9540afcf0510e5643/Im%C3%A1genes/p1.png"/>
</p>

Para comprobar que la traza fue realizada correctamente se debe obtener el mensaje de la siguiente figura:
<p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/c4fcc95b23ce9c2ae524cdfa038bc7c76c4d8aa8/Im%C3%A1genes/Screenshot%20from%202022-03-07%2012-23-53.png"/>
</p>
En la ubicación siguiente:

##### <p align= "center"> [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/examples/AL_Operations/.pio/build/swervolf_nexys/trace.vcd.</p>

 Debe estar el archivo trace.bcd, el cual es la traza y se va a abrir mediante GTKWave usando el siguiente comando:
 
 ##### <p align= "center"> gtkwave [RVfpgaSoCPath]/RVfpgaSoC/Labs/LabResources/Lab2/examples/AL_Operations/.pio/build/swervolf_nexys/trace.vcd.</p>
 
 Con el GTKWave abierto se deben buscar las siguientes rutas: 
 
 * TOP rvfpgasim swervolf swerv_wrapper_verilog_0 swerv_eh1_2 swerv ifu(clk,ifu_i0_instr[31:0],ifu_i1_instr[31:0])
 * TOP rvfpgasim swervolf swerv_wrapper_verilog_0 swerv_eh1_2 swerv dec arf gpr_banks(0) gpr(28) gprff (dout[31:0])
 
 en las rutas anteriores lo que se encuentra en parentesis son las variables a mostar.
 
 Finalmente en la imagen se pueden observar los resultados en GTKWave dados por las instrucciones:
 <p align="center"> 
 <img src="https://github.com/Computer-Architecture-I-UIS/project-rivera-villamizar/blob/ae6527cdcd20c718a311eb6335800785c5f10202/Im%C3%A1genes/12.png"/>
</p>
 
 
 

### CONCLUSIONES :heavy_check_mark:
* 
* 
* 

### REFERENCIAS :paperclip:
* The imagination university program (2021), RVfpga-SoC INSTALLATION GUIDE
* The imagination university program (2021), RVfpga-SoC LAB 1 INTRODUCTION TO RVfpga-SoC
* The imagination university program (2021), RVfpga-SoC LAB 2 RUNNING SOFTWARE ON RVfpga-SoC

#### UNIVERSIDAD INDUSTRIAL DE SANTANDER :mortar_board:
* :woman: Angela Yulieth Rivera Gómez - 2162467
* :man: Vladimir Sebastian Villamizar Anaya - 2171522
