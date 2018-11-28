/*
 * *************************************************************
 *
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 *
 * *************************************************************
 */

package net.codebuilders.mybusiness

/**
 * Enum class to distinguish types of import sheet status conditions.
 *
 * READY - an import sheet that hasn't been imported
 * PROCESSING - an import sheet that is in the import process
 * SUCCESS - an import sheet that has been successfully imported
 * FAILED - an import sheet that failed import for some reason
 *
 * @author Carl Marcum
 */
public enum ImportSheetStatusType {

    READY('Ready'),
    PROCESSING('Processing'),
    COMPLETED('Completed'),
    FAILED('Failed')

    static constraints = {
        name(maxSize: 60)
    }

    // Ready, Processing, Completed, Failed, etc.
    String name

    ImportSheetStatusType(String name) {
        this.name = name
    }

    static list() {
        [READY, PROCESSING, COMPLETED, FAILED]
    }

}
