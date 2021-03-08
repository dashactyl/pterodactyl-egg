apt update
apt install -y git make gcc g++ python python-devev wget
git clone https://github.com/real2two/dashactyl.git
cd dashactyl-main
npm install
echo "Setting webserver port to: $1"
echo "Setting panel domain to: $2"
echo "Setting panel apikey to: $3"
echo "Setting bot token to: $4"
echo "Setting oauth id to: $5"
echo "Setting oauth secret to: $6"
echo "Setting oauth callback to: $7"
echo "Setting ArcIO widget to: $8"
rm settings.json
wget https://github.com/real2two/dashactyl/raw/main/settings.json
sed -i 's/"port":.*/"port": '$1,'/' settings.json
sed -i 's/"domain":.*/"domain": '"$2h",'/' settings.json
sed -i 's/"key":.*/"key": '"$3",'/' settings.json
sed -i 's/"token":.*/"token": '"$4",'/' settings.json
sed -i 's/"id":.*/"id": '"$5",'/' settings.json
sed -i 's/"link":.*/"link": '"$7",'/' settings.json
sed -i 's/"widget":.*/"widget": '"$8",'/' settings.json
echo "Dashactyl has been installed!"
exit
