# Trigger the autoupdate on Wordpress sites
# Requires Safari app to run, or you can modify to the browser of your choice
# Cycle through websites and open them in new tab to trigger the auto update
while read line; do
    open -a Safari "$line"
done < wordpress-websites.txt

# wait for 1 min, time is in seconds
sleep 60

# Close Safari
osascript -e 'quit app "Safari"'
