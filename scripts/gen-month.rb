#!/usr/bin/env ruby
require 'date'
raise "Pass year as first param" unless year = ARGV[0].to_i
raise "Pass month num as second param" unless month = ARGV[1].to_i
date = Time::new(year, month, 1)
month_name = date.strftime('%B %Y')
if month == 2 && Date::gregorian_leap?(year)
  days_in_month = 29
else
  days_in_month = [nil, 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31][month]
end
`ruby ../v8-post-fetcher/get-period.rb #{date.strftime('%Y-%m')}-01 #{date.strftime('%Y-%m')}-#{days_in_month} "#{month_name}" > _posts/#{date.strftime('%Y-%m')}-#{days_in_month}-#{date.strftime('%B').downcase}.markdown`
#`emacs _posts/#{date.strftime('%Y-%m')}-#{days_in_month}-#{date.strftime('%B').downcase}.markdown`
#`jekyll build`
