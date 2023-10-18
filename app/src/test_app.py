from app import *

def test_hello_world():
    response = app.test_client().get('/')
    assert "Olá, mundo!".encode("UTF-8") in response.data
    assert response.status_code == 200