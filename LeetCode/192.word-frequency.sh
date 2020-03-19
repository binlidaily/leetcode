#
# @lc app=leetcode id=192 lang=bash
#
# [192] Word Frequency
#
# https://leetcode.com/problems/word-frequency/description/
#
# shell
# Medium (26.36%)
# Likes:    186
# Dislikes: 121
# Total Accepted:    24.3K
# Total Submissions: 92.4K
# Testcase Example:  'a'
#
# Write a bash script to calculate the frequency of each word in a text file
# words.txt.
# 
# For simplicity sake, you may assume:
# 
# 
# words.txt contains only lowercase characters and space ' ' characters.
# Each word must consist of lowercase characters only.
# Words are separated by one or more whitespace characters.
# 
# 
# Example:
# 
# Assume that words.txt has the following content:
# 
# 
# the day is sunny the the
# the sunny is is
# 
# 
# Your script should output the following, sorted by descending frequency:
# 
# 
# the 4
# is 3
# sunny 2
# day 1
# 
# 
# Note:
# 
# 
# Don't worry about handling ties, it is guaranteed that each word's frequency
# count is unique.
# Could you write it in one-line using Unix pipes?
# 
# 
#

# @lc code=start
# Read from the file words.txt and output the word frequency list to stdout.
# awk '{for(w=1;w<=NF;w++) print$w}' ./words.txt | sort | uniq -c | sort -nr | awk '{print $2,$1}'
# 14/14 cases passed (4 ms)
# Your runtime beats 59.89 % of bash submissions
# Your memory usage beats 34.48 % of bash submissions (3.3 MB)


cat words.txt | tr -s ' ' '\n' | sort | uniq -c | sort -r | awk '{print $2, $1}'
# 14/14 cases passed (0 ms)
# Your runtime beats 100 % of bash submissions
# Your memory usage beats 93.1 % of bash submissions (3.2 MB)
# @lc code=end

