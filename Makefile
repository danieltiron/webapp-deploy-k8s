help:
	@echo "Please use  'make <target>' where target is:"
	@echo " > deploy			: deploy web application"
	@echo " > delete_without_volumes	: delete web app but keep datav"
	@echo " > delete_with_volumes		: delete web app with data"	

deploy:
	kubectl apply -f secrets.yaml
	kubectl apply -f mysql.yaml
	kubectl apply -f php.yaml
	kubectl apply -f ingress.yaml

delete_without_data:
	kubectl delete all,secrets,deployment,service,ingress --all

delete_with_data:
	kubectl delete all,secrets,deployment,service,persistentvolumeclaims,persistentvolume,ingress --all