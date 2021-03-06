//
// Bot.swift
//
// Copyright © 2017 Peter Zignego. All rights reserved.
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

public struct Bot {
    public let id: String?
    public var botToken: String?
    public var name: String?
    public var image24: String?
    public var image36: String?
    public var image48: String?
    public var image72: String?
    public var icons: [String: Any]?
    
    public init(bot: [String: Any]?) {
        id = bot?["id"] as? String
        name = bot?["name"] as? String
        icons = bot?["icons"] as? [String: Any]
        image36 = icons?["image_36"] as? String
        image48 = icons?["image_48"] as? String
        image72 = icons?["image_72"] as? String
    }
    
    public init(botUser: [String: Any]?) {
        id = botUser?["bot_user_id"] as? String
        botToken = botUser?["bot_access_token"] as? String
    }
}
