# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"Test the plan output wrapper classes."

import pytest
import tftest


@pytest.fixture(scope="module")
def plan_out(fixtures_dir):
  import json
  with open('%s/plan_output.json' % fixtures_dir) as fp:
    return tftest.TerraformPlanOutput(json.load(fp))


def test_output_attributes(plan_out):
  assert plan_out.format_version == "0.1"


def test_variables(plan_out):
  assert plan_out.variables['bucket_name'] == 'my_custom_bucket_random_string_21jeiasakd912ddas'