//
// RouteHandler.swift
//
// Copyright (C) 2016 Subito.it S.r.l (www.subito.it)
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.


import Foundation
import PerfectHTTP

class RouteHandler {
    var baseFolderURL: URL?
    var runs = [TestRun]()
    var groupedPlists = Set<URL>()
    var parsingProgress: Double = 1.0
    var parsingStart: TimeInterval = 0.0
    
    private(set) var runSyncQueue = DispatchQueue(label: "synch_queue")
    
    convenience init(baseFolderURL: URL) {
        self.init()
        self.baseFolderURL = baseFolderURL
    }
}
