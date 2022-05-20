# vitoOS

> vitoOS is an operating system based on Arch Linux.


# Building the vitoOS Development Environment

> Building the vitoOS Development Environment is easy as 123. 
> Just follow the steps here. 


1. Please clone the repository by typing in this command: 

```shell
git clone https://github.com/vitoOS
```



2. After you clone the repository from the previous step, 
   please run this command to build the development 
   environment. The development environment will be 
   generated in your Home Directory 


   `home/<user>/vitoOS-Development-Environment`


```shell
sh create-development-environment
```



3. After you run the command shown in the previous step, 
   please type this command to go to your Home Directory


```shell
cd 
```


4. After you type the command shown in the previous step,
   please type this command to go to the vitoOS-Development-Environment. 


```shell
cd vitoOS-Development-Environment

```




# Procedures to create, generate, and test vitoOS ISO Images 

> Now, you followed the previous steps how to generate the vitoOS Development Environment, 
> Please follow these steps here in order to properly build, create, and test vitoOS ISO 
> Images. Before doing that though, please note the differences between `DEVELOPMENT`, and 
> `TESTING`


# DEVELOPMENT

> Inside this folder, this is where you are able to develop and play around with vitoOS 
> Components as well as the ability to make changes via git. 



# TESTING

> Inside this folder, this is where you are able to generate and build the image. 
> However, in order to get this working, please follow the steps given here. 


1. Once you are ready to generate and build the image from DEVELOPMENT, please 
   make sure you are on this directory: `vitoOS-Development-Environment`
   and run this command: `sh transfer-to-testing`. 


2. After completing the first step, please change the directory to TESTING, and 
   run this command to build and generate the image: `sudo sh build.sh`. 



3. After completing the second step, the building process may take minutes or 
   hours depending on the system that you have. 


4. After completing the third step, please run this command to run the live ISO 
   image: `run_archiso -i out/vitoOS<DATE>.iso`


# if you want to update your changes in DEVELOPMENT, please follow the steps here: 

1. Make sure you on this directory: `vitoOS-Development-Environment`

2. Type this command to remove the TESTING folder: `sudo rm -rf TESTING`

3. After completing the second step, please type this command to make a 
   new directory: `mkdir TESTING`.

4. After completing the third step, go back to the previous steps above. 