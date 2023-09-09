if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  gh repo clone https://github.com/ RAM108MV/mv
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /mv
fi
cd /mv
pip3 install -U -r requirements.txt
echo "Starting Bot..."
python3 bot.py
