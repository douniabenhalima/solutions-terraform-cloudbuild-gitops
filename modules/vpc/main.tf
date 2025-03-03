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


module "vpc" {
  source  = "terraform-google-modules/network/google"
  version = "3.3.0"

  project_id   = "${var.project}"

  #network_name = "${var.env}"
  network_name = "terraform"

  subnets = [
    {
      subnet_name   = "terraform-sub"
      #subnet_ip     = "10.241.132.1/22"
      subnet_ip     = "172.16.0.0/28"
      subnet_region = "northamerica-northeast1"
    },
  ]


 # subnets = [
 #   {
 #    subnet_name   = "${var.env}-subnet-01"
 #    subnet_ip     = "10.${var.env == "dev" ? 10 : 20}.10.0/24"
 #     subnet_region = "us-west1"
 #   },
 # ]

# secondary_ranges = {
#    "gke-spinnaker-tutorial-services-954319a1" = [10.241.144.0/20]
#  }

  #secondary_ranges = {
  #  "${var.env}-subnet-01" = []
  #}
}
