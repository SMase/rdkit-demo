# project name

## 1. Environment
### 1.1. create conda env.
```
$ cp .env.sample .env 
# edit .env
$ bash script/build_conda.sh
```

### 1.2. install python modules using poetry
```
$ conda activate .venv/
$ poetry install --no-root
```

### 1.3. add python modules using poetry
```
$ poetry add <package name> --dev # for development
$ poetry add <package name>
```

## 2. Task runner
### 2.1. add task
```
# if you add task runner, edit pyproject.toml.
:
[tool.taskipy.tasks]
hello = "echo 'Hi, hello world'"

:
```

### 2.2. run task
```
# Ex.
$ task hello
Hi, hello world
```