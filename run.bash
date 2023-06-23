#!/bin/bash
cd /home/user/ExaBGP_test
#git clone https://gitlab.dei.unipd.it/Fattokh/exabgp_test.git
#Fattokh
#Fict4ia

curl -L "https://drive.google.com/file/d/1uBTLPXLNLcZrMhgudTlUkfBMXi1FtZ0l/view?usp=sharing" > exa.tar.gz
curl -L "https://doc-04-08-docs.googleusercontent.com/docs/securesc/j41u2dgvig0ecv29tl718tvvnc8sla88/0i058qke0sbdks6hdi18e3ij49pmbe87/1687524150000/03295539200169295157/03295539200169295157/1EV8lSoZ8Hz91ytNhw5b_THxMrFXawYBk?e=download&ax=ADWCPKCcvUaaeEiioi_oaNj4sWWfEhM6cIxobFsP_AxtGsNho9IVp4V3tquWqWLt2G4f6VbV0A_m173IuOB1vXMZ3HtT_tlMEVgundZ92_xz1-Bd02nkOQT5GfDnBk4Vl65VZZX-1dKBw9xEhQEyK-kCs-A8neyzIeSnEYRcMMV5H6DqMPOu8p8Zpm0pxrMh6i_8jwal1uS-rYQ04d9BpXKvE1yE3Oh5-3Tj95O_AUmMpSs7Z7WclunuA_xuVKKivpGsMhOwmkzUmiDoSMxgxBeXrk_11_fXughm7tq8zujBoXOlssnJenvE3aCopgeMyD7mdvH6r7WvXJWUFC1sv0lSulwL0RuOfHffLwx7bbB6CpPdJxKG3tLYx8_Ad_ClVu5Hn2YXHZZbSWp7OuWHmxiDhJxxpHDJBW3y91ypj50BDa_c4tFfGspYhodzB8xF0o3ufGh8IfS8C1thbsxz-ITagRFf8skLMvk6BteTyNIQIEVOrbLZlDbhNXjiI_LlhpP_4tl6wdRPlyhhwj-cJ1hv0BJJtD29lngaiOFLvIW3em78TYZdcjaqAngF1rDg44Yqnc-dXJLRWeSFz25vkzPNRY3NJR7aPlA4kB7ePE12RspOVjfJm9OnGe0dUsJ6wuHzn15eACzZmIncDvfVjwERuOxtgJXEF2LZfXX6EQi_T_TDLwLaTZisyVxAgZz4izMjCgB3gVdUrqlBDMBOE8fFQlvdxkkIoKsMkQxxsm1-a_3vloG9omb-GW84w5ZlyV4jk-dMsfij4SDz9aEn8UT-HJx6EWCZLgyJRLe-qjT8w12278URueUYHPpQFBX5ZH3jYnh6QKe9DC5UMufXAJN5ZEA74zwkJ8qn-SQnBg83jNH_xaRG8KajJ7Xg3tUQk1xHyobRGDEutQNRYcZ-oOpRl4FzYEFLb0XWGABOuc6Uyv8e7dpFsXjk2nRD0TrVwF9XhuUawQ&uuid=d2442b23-2a2c-4ba7-96fa-c8c150e4ea59&authuser=0&nonce=q6jlktabp8llg&user=03295539200169295157&hash=4tln3smadfp7t2qbn4vnpknmh632tgas" > frr.tar.gz

cd /home/user/ 


git clone https://github.com/falberti/scaling-eureka.git
sudo apt install net-tools
pip install exabgp
sudo apt-get install debootstrap
cd /home/user/scaling-eureka/

cd /home/user/ExaBGP_test
#rm exa.py
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/exa
cp exa.tar.gz           /home/user/scaling-eureka/tb/exa
cp frr.tar.gz           /home/user/scaling-eureka/tb/exa
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp
cp exa.tar.gz           /home/user/scaling-eureka/tb/bgp
cp frr.tar.gz           /home/user/scaling-eureka/tb/bgp
cp exa_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp frr_metadata.tar.gz  /home/user/scaling-eureka/tb/bgp4
cp exa.tar.gz           /home/user/scaling-eureka/tb/bgp4
cp frr.tar.gz           /home/user/scaling-eureka/tb/bgp4
cd /home/user/scaling-eureka/tb/exa


cd /home/user/scaling-eureka/tb/bgp4/

lxc list
python3 bgp4.py TB


#git clone https://github.com/fattokh/ExaBGP_test.git
#cd /home/user/scaling-eureka/tb/exa/ExaBGP_test
#tar -czvf exa_metadata.tar.gz metadata.yaml 
#cp exa_metadata.tar.gz ../
#cp frr_metadata.tar.gz ../
#cp exa.py ../
#cd ../
lxc list
#python3 exa.py EXA 
#lxc list