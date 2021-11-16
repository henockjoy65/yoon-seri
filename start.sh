if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/henockjoy65/yoon-seri.git /yoon-seri
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /yoon-seri
fi
cd /yoon-seri
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
