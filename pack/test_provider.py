# test_provider.py
import os
import pytest
import subprocess
import time
from pathlib import Path
from pact import Verifier

PACT_DIR = "./pacts"
PACT_FILE = "pythoncomplexconsumer-pythoncomplexprovider.json"

@pytest.fixture(scope="module", autouse=True)
def provider_app():
    """
    Start the FastAPI provider in a subprocess for the duration of these tests.
    """
    proc = subprocess.Popen([
        "uvicorn",
        "provider:app",   # "filename:FastAPI_app_instance"
        "--host", "127.0.0.1",
        "--port", "8000"
    ])

    # Give it a moment to ensure the server is up
    time.sleep(1)
    yield
    # Terminate the subprocess after tests run
    proc.terminate()

def test_provider_against_pact():
    """
    Use the Pact Verifier to check the real provider
    against the generated contract.
    """
    verifier = Verifier(provider="PythonProvider", provider_base_url="http://127.0.0.1:8000")

    pact_path = os.path.join(PACT_DIR, PACT_FILE)
    file = Path(pact_path)
    assert file.exists()

    # Verify the pacts
    output, _ = verifier.verify_pacts(
        pact_path,
        # publish=False,  # we are not publishing results to a broker
        # provider_version="1.0.0"
    )
    # If verification passes, 0 is returned
    assert 0 == output