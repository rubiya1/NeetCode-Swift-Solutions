//
//  6. Design Twitter.swift
//  Neetcode-Swift
//
//  Created by Rubiya Faniband on 11/01/25.
//

import Foundation

class Twitter {
    private var tweets: [Int: [(Int, Int)]] // userID -> [(tweetID, timestamp)]
    private var follows: [Int: Set<Int>] // userID -> Set(followeeIDs)
    private var timestamp: Int // Global timestamp to maintain order
    
    init() {
        self.tweets = [:]
        self.follows = [:]
        self.timestamp = 0
    }    
    func postTweet(_ userId: Int, _ tweetId: Int) {
        timestamp += 1
        tweets[userId, default: []].append((tweetId, timestamp))
    }
    
    func getNewsFeed(_ userId: Int) -> [Int] {
        var minHeap = [(Int, Int)]() // Min-heap for (timestamp, tweetID)
        var heapLimit = 10
        if let userTweets = tweets[userId] {
            for tweet in userTweets {
                minHeap.append(tweet)
            }
        }
        
        if let followees = follows[userId] {
            for followee in followees {
                if let followeeTweets = tweets[followee] {
                    for tweet in followeeTweets {
                        minHeap.append(tweet)
                    }
                }
            }
        }
        let sortedHeap = minHeap.sorted { $0.1 > $1.1 }
        let recentTweets = Array(sortedHeap.prefix(heapLimit)).map { $0.0 }
        return recentTweets
    }
    
    func follow(_ followerId: Int, _ followeeId: Int) {
        if followerId != followeeId {
            follows[followerId, default: []].insert(followeeId)
        }
    }
    
    func unfollow(_ followerId: Int, _ followeeId: Int) {
        follows[followerId]?.remove(followeeId)
    }
    
}
