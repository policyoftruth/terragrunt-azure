import requests
import zipfile
import os
import stat


BASE_URL = "https://releases.hashicorp.com/terraform/"
TF_CURRENT = "1.3.7"


def fetchfile(tfver, platform):
    """go fetch terraform"""
    dl_url = BASE_URL + tfver + '/terraform_' + tfver + '_' + platform + '_amd64.zip'
    print("this will take a minute or two... downloading")
    r = requests.get(dl_url, allow_redirects=True)
    if r.status_code == 200:
        open('temp.zip', 'wb').write(r.content)
        with zipfile.ZipFile('temp.zip', 'r') as zip_ref:
            zip_ref.extractall('./')
        attrib = os.stat('terraform')
        os.chmod('terraform', attrib.st_mode | stat.S_IEXEC)
        os.remove('temp.zip')
        quit()
    else:
        print(f"check hashicorp links for terraform {tfver} version for {platform}")
