
import requests
*** Settings ***
Documentation     Robot Keywords

Library           SeleniumLibrary

*** Variables ***
${headers}      'Authorization': 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJodHRwczovL3N3ZWV0c3BvdGRpYWJldGVzLmNvbSIsInN1YiI6IlN3ZWV0c3BvdCIsImlhdCI6MTU5NjAwMDIyNSwiY29uc2VudFBlcm1pc3Npb24iOiJsaW5rZWRTdWJqZWN0cyIsImRleGNvbUlkIjoiMDliMzY1OGMtYjMwMi00MTZlLTg0NmQtMzlkODg2ZDMzNDc1IiwiZXhwIjoxNTk2MDg2NjI1LCJyb2xlIjoiT3duZXIiLCJzdWJqZWN0SWQiOiIxNTY3NjA0MDAxNDczNDQxNzkyIn0.B0ULSsQLWAf4fOJG4OQNl2Swd-O8R5DngiDQyV5X_UMLw3LavBOCVrHo9oNT_ju-sP2mQbeZS3bcUDpBJ6lCV9ShRVQXLvOnuf1eQHx_fYS4tVw3ZZe-M0YVODrjIRXLbiD9pdAhERIfkiIsSHhn7SGCxPmV7-LrxNo5dxuPDn77keMD6PoS0e0ckIby65pykD_gZZlOEIhyLkdry1uMJbE9k-aID0pzOpUqYoWbsTYVpXre77r4BdxrPyAsbuDB1tCEXfDOrQzDMr-MEVQjt4GZnanZXo0ZKm9pCirq7SiypERD2HFoqxoj7CrFJPcnByQUXded-VicXZ2Qs0Qfqg'
${url}             "https://clarity.dexcom.com/api/subject/1567604001473441792/analysis_session"

*** Test Cases ***



*** Keywords ***
url = ${url}

payload = {}
headers = ${headers}

response = requests.request("POST", url, headers=headers, data = payload)

print(response.text.encode('utf8'))

Check analysisSessionId
    # Assert
	Should not be equal as strings    ${response.analysisSessionId}    None

