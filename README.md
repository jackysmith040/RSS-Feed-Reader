# Terminal RSS Feed Reader

This is a simple RSS feed reader that displays feed information in your terminal. It is written in Ruby and uses the Feedjira and HTTParty gems to parse and display RSS feeds.

## Usage

To use the reader, simply run the `rss_feed.rb` file in your terminal. You will be prompted to enter the URL of the RSS feed you want to read. If you press Enter without entering a URL, the reader will use the default URL (<https://techcrunch.com/feed/>).

The reader will then display the title and description of the feed, followed by a list of the entries in the feed. For each entry, the reader will display the published date, title, summary, and URL.

## Installation

To use the reader, you will need to have Ruby installed on your system. You can download Ruby from the official website: <https://www.ruby-lang.org/en/downloads/>

You will also need to install the Feedjira and HTTParty gems. You can do this by running the following commands in your terminal:

```Ruby
gem install feedjira
gem install httparty
```

Once you have Ruby and the required gems installed, you can download the `rss_feed.rb` file from this repository and run it in your terminal.

## Example

Here's an example of the reader in action:

```Ruby
$ ruby rss_feed.rb
Enter the URL of the RSS feed you want to read (or press Enter to use the default URL)
https://www.nasa.gov/rss/dyn/breaking_news.rss
Feed Title:
NASA Breaking News

Feed Description:
A RSS news feed containing the latest NASA news articles and press releases.

--------------------

Published: Fri, 20 Aug 2021 16:00 EDT --- Title: NASA, ULA Launch Mars 2020 Perseverance Rover Mission to Red Planet
---------------------------------------------------------------
Description:
NASA's Mars 2020 Perseverance rover mission is on its way to the Red Planet to search for signs of ancient life and collect samples to send back to Earth.

---------------------------------------------------------------
Link:
https://www.nasa.gov/press-release/nasa-ula-launch-mars-2020-perseverance-rover-mission-to-red-planet

--------------------

Published: Thu, 19 Aug 2021 16:00 EDT --- Title: NASA Administrator Statement on Passing of Mike Freilich
---------------------------------------------------------------
Description:
NASA Administrator Jim Bridenstine released the following statement on the passing of Mike Freilich, passionate explorer and former director of NASA's Earth Science Division.

---------------------------------------------------------------
Link:
https://www.nasa.gov/press-release/nasa-administrator-statement-on-passing-of-mike-freilich

--------------------

Published: Thu, 19 Aug 2021 16:00 EDT --- Title: NASA, SpaceX Launch Ninth Batch of Starlink Satellites
---------------------------------------------------------------
Description:
NASA and SpaceX launched the ninth batch of the company’s Falcon 9 rocket carrying the Dragon spacecraft with 57 Starlink satellites from Launch Complex 39A.

---------------------------------------------------------------
Link:
https://www.nasa.gov/press-release/nasa-spacex-launch-ninth-batch-of-starlink-satellites

--------------------
```

## Credits

This RSS reader was created by Fafali (<jackysmith040@gmail.com>).
