wget https://bootstrap.pypa.io/get-pip.py
chmod +x get-pip.py

pip2 install --user numpy scipy matplotlib ipython 
# pip2 install --user sympy ptipython opencv-python
pip3 install --user numpy scipy matplotlib ipython
# pip3 install --user sympy ptipython opencv-python

rm get-pip.py*
