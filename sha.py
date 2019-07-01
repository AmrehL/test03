import base64
import hashlib
import os
from Crypto.Cipher import AES
from Crypto.Hash import SHA256
from Crypto import Random
from pkcs7 import PKCS7Encoder
from Crypto.Util.Padding import pad, unpad
import random
encoder = PKCS7Encoder()
IV = bytearray([0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00])

def encrypt(key, source, encode=True):   
    key = getHashSha256(key)      
    padding = AES.block_size - len(source) % AES.block_size  # calculate needed padding   
    encryptor = AES.new(key, AES.MODE_CBC,IV)
    source += chr(padding) * padding 
    data = encryptor.encrypt(source.encode('ascii', 'ignore'))
    return base64.b64encode(data) if encode else data


def decrypt(key, source, decode=True):
    if decode:
        source = base64.b64decode(source.encode("UTF-8"))    
    key = getHashSha256(key)   
    decryptor = AES.new(key, AES.MODE_CBC, IV)
    data = unpad(decryptor.decrypt(source),16)  # decrypt 
    return data.decode('utf8')  # remove the padding

def getHashSha256(key):    
    oHash = hashlib.sha256(key.encode()).hexdigest()
    oRet = oHash[0:32]    
    return oRet 

def to_bytes(bytes_or_str):
    if isinstance(bytes_or_str, str):
        value = bytes_or_str.encode('utf-8') # uses 'utf-8' for encoding
    else:
        value = bytes_or_str
    return value # I


key = 'lumpsum3805325'
# IV =  b'0000000000000000'
# # print  hashlib.sha256(key.encode()).hexdigest()[0:32]
# print encrypt("lumpsum3805325","Hello")

# source = "umUT8KJbeBRsZpYtrremfA=="
# decryptor = AES.new(key, AES.MODE_CBC, IV)
# print   decryptor.decrypt(source[AES.block_size:])

# key = getHashSha256(key)
# IV =  b'0000000000000000'#Random.new().read(AES.block_size)  # generate IV
# encryptor = AES.new(key, AES.MODE_CBC, IV)
# padding = AES.block_size - len(source) % AES.block_size  # calculate needed padding
# source += chr(padding) * padding  # Python 2.x: source += chr(padding) * padding | Python3 : source += bytes([padding]) * padding 
# data = IV + encryptor.encrypt(source)  # store the IV at the beginning and encrypt
# print encryptor.encrypt(source)
# print data
# print base64.b64encode(data).decode("UTF-8") 
encry = encrypt(key,'Hello world')
decry = decrypt(key,encry)
print(encry)
# s = "ABCD"
# b = bytearray()
# b.extend(s)
# print(b[0])
# print decrypt(key,source