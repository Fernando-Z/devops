from app import *

def test_hello_world():
    response = app.test_client().get('/')
    assert b"Olá, mundo!" in response.data
    assert response.status_code == 200