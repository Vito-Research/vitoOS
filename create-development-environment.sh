##############################################################
##	create-development-environment.sh
##
##
##	Simple Script to generate and build a development
##	environment for many usages, such as developing
##	generating, and testing ISO Images
##
##############################################################

## Make a function that will create empty folders 
## before proceeding to the next following steps. 

function createFolders() {
	cd 						## Making sure it is located in the Home Directory
	mkdir vitoOS-Development-Environment		## Create the first empty folder 
	cd vitoOS-Development-Environment		## Go to the first empty folder 
	mkdir DEVELOPMENT				## Create another folder that contains the development files
	mkdir TESTING					## Create another folder that contains the Testing Files 
							## (Merged from DEVELOPMENT)
}


## Make a function that will create scripts for the 
## vitoOS-Development-Environment. 

function createFiles() {
	## Go to the DEVELOPMENT directory
	cd DEVELOPMENT
	
	## Clone the vitoOS Repository
	git clone https://github.com/Vito-Research/vitoOS

	## Go back to the vitoOS-Development-Environment directory
	cd ..

	## Create a new file called transfer-to-testing.sh
	echo """
	cd DEVELOPMENT
	cd vitoOS
	cp README.md ../../TESTING
	cp build.sh ../../TESTING
	cp -R archiso ../../TESTING
	""" >> transfer-to-testing.sh



		
}

	## Copy archiso to TESTING to prevent conflicts when generating
	## iso image 
	
	cp -R archiso ../TESTING

	## Copy build.sh file to TESTING to prevent conflicts when generating
	## iso image 
	
	cp build.sh ../TESTING


	
createFolders
createFiles
