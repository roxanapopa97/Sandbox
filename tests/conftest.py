import os
import pytest


@pytest.fixture(scope='session')
def fixtures_dir():
  return '/__w/Sandbox/Sandbox/fixtures/plan_output.json'
  #return os.path.join(os.path.dirname(os.path.abspath(__file__)), 'fixtures')