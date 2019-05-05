# Copyright (C) 2017 ColtOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ifneq ($(filter colt_oneplus3 colt_santoni colt_dumpling colt_cheeseburger colt_taimen colt_potter colt_X00TD,$(TARGET_PRODUCT)),)

PRODUCT_PACKAGES += \
    Updates

endif
