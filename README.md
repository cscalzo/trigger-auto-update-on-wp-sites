# Trigger Wordpress Auto Update

#### Audience
The audience for this script is Mac users. But if you find that there are parts of this script that you can use or modify, you are welcome to do so.

#### Why was this built
There are many Wordpress sites that I manage for my company, twenty-five plus, these are low traffic pages. Since the auto update only triggers on page visits, some of these websites can get far behind on their updates. Wanting to make sure that every site stays current one would have to visit the twenty-five plus pages to trigger the auto update. It can be a bit of a waste of time to visit each site manually, so why not write a script that I could trigger to do it for me? And thus this quick little thing was written.

#### What this Script Does
When called this Shell script is called it will look for a wordpress-websites.txt document. It will then loop through each line of that .txt document and open the URL in a browser. *The default browser is Safari but you can change to any that you would like to use*. The script then waits for 1 min to ensure that the pages have loaded enough to trigger the update. After that minute the script then calls a Mac OS AppleScript which gracefully quits the Safari application.

#### How To Execute
Enter the URLs of the WordPress sites that you would like to trigger, one URL per line, in the wordpress-website.txt document. *Be sure to have one extra empty line space at the end of your .txt document containing the WordPress websites*.

Go to your Terminal and execute the triggerWPAutoUpdate.sh *The triggerWPAutoUpdate.sh script and wordpress-websites.txt documents must be in the same directory unless you modify the path to the .txt document in the shell script*.
```sh
sh triggerWPAutoUpdate.sh
```

#### Word of Warning
Obviously, since this is opening a web browser and visiting each page, it could be taxing on your system, if you have a very long list of word press sites to visit.

Will not trigger the auto update on sites that have the Security Plugin enabled that prevents wp_crons from firing on page visit.