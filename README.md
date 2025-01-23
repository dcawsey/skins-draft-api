# Skins Draft API
## Running locally
Running locally should not be done via the system installed version of python. Instead setup a "virtual environment" as per the below instructions (gathered from this [resource](https://www.freecodecamp.org/news/how-to-setup-virtual-environments-in-python/)). This will allow your system Python install to remain untouched and allow you to keep track of the dependencies installed for just this app.

```sh
pip install virtualenv # add package to machine python installation - this package will be added to your sytem version of Python
python -m venv env # create virtual environment named env - will make directory

source env/bin/activate # adds venv "env" to your terminal PATH
echo $PATH | grep env # another command to verify if venv is being used - will be first path listed

deactivate # exit "env" venv
```

### Useful Python commands
```sh
pip freeze > requirements.txt # dumps all current dependency versions; i.e. package-lock.json equivalent
pip install -r requirements.txt # installs app dependencies according to the version lock file
pip list # list dependencies
```

### Running the app
```sh
fastapi run app/main.py
```
<br>

## Running on Docker
```sh
docker build -t skins-draft-api .

docker run -p 8000:80 --name skins-draft-api skins-draft-api:latest # -d if you want to run in detached mode
```