echo "BUILD START"
which python
python3.12 -m ensurepip
python3.12 -m pip install -r requirements.txt
python3.12 manage.py makemigrations
python3.12 manage.py migrate
python3.12 manage.py collectstatic --noinput --clear
echo "BUILD END"
