## Usage
Setup your applications on a local folder as described [here](https://github.com/TheRealKerni/HockeyKit/wiki/Server)

Expose the local folder as `/hockey_data`

	docker run -t -i -v /vagrant/hockey_data:/hockey_data -p 8088:8088 lxfontes/hockeykit
