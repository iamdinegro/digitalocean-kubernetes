<img src="/imgs/do-logo.png" alt="MarineGEO circle logo" style="height: 250px; width:250px;"/>
<img src="/imgs/tf-logo.png" alt="MarineGEO circle logo" style="height: 200px; width:450px;"/>

## DOKS com Terraform
Nesse projeto, quero apresentar para vocês o Deploy de um Cluster DOKS (ou Digital Ocean Kubernetes Service), que é o serviço gerenciado de Kubernetes da DigitalOcean. 


Estrutura dos arquivos do Terraform:

```tree
└── terraform
  |── main.tf
  |-─ network_vpc.tf
  |── provider.tf
```

## Requisitos:
1 - Digital Ocean Api Token (PAT);
2 - Space Criado para Armazenar o BackEnd do Terraform;
3 - Spaces access key e Secret.

#####Na hora de iniciar o projeto, utilize o seguinte comando: 

```bash
terraform init -var   \
"do_token=xxxxxxxxxx" \ 
-backend-config="access_key=xxxxx" \
-backend-config="secret_key=xxxxxxxxxx" \
-backend-config="bucket=<nomedospace>"
```

Retorno esperado:
```bash
Initializing the backend...

Initializing provider plugins...
- Reusing previous version of digitalocean/digitalocean from the dependency lock file
- Using previously-installed digitalocean/digitalocean v2.19.0

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
```

