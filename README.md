# Valheim-Server-Sharing
Bash scripts used to share Valheim servers over GitHub

## Purpose
The point of this collection of scripts is to allow for sharing of the main server files between people without having to use a dedicated server for the game.

### Why would you and your friends want this?
- None of you want to keep a machine running 24/7 to keep the server up and running
- Don't want to pay for possibly expensive server hosting
- Don't want to bother with updating and maintaining server versions as the game developers continue to release updates

### Okay but why do my friends and I need these scripts?
These scripts will let you share the important files that are needed to run the server. Let's say there's 4 of you in your party. Without these scripts, one of you would have to be in charge of the server. This means none of your friends can play on the server if you're not available.
With these scripts, any of your friends will be able to start the server with everything on the server being up to date and intact. A bonus benefit is that your server is always backed up online on GitHub. No need to worry about losing hundreds of hours of progress because your or your freind's machine died.

## How To
It helps to have some sort of experience or background with Git and GitHub but it's not necessary. You and your friends will need GitHub accounts and would need Git on your machines. Once you have that set up, follow these steps.

1. Create a repository on GitHub.
2. Copy the HTTPS link of the repo. You can find this by clicking the green "Code" button.
3. Download these scripts and the gitignore.txt file and save them to your Valheim worlds folder. The default should be C:\Users\[INSERTUSERNAMEHERE]\AppData\LocalLow\IronGate\Valheim\worlds.
4. Open the gitignore.txt file and add any server names you don't want to upload for anyone else to have. For example, lets say you had a personal server called MyServer. Add the text MyServer.* as the last item in the file. You can add as many server names in the same way as you want other than the one you want to share.
5. Save and close the file.
6. Rename the file from "gitignore.txt" to ".gitignore". This might result in a warning regarding changing extensions but go ahead and click "Yes". We need the extension to change for it to work.
7. Run the gitsetup.sh script. This should create a local git repository in the folder. Paste the link you copied into the terminal (try right clicking where the cursor is) and press enter.
8. You can choose to pull the server files now if you manually uploaded them already but you probably haven't so you probably won't.
9. This will kill the script.
10. You then want to run the gitpush.sh script. It should tell you what repo you're connected to and then ask for your name. This will help you and your party keep track of who uploaded the files and when.
11. You should then see the status of the files with any files that were changed. Right now it should show just the 3 files that are related to the server. Enter 'Y'. This should push the server files to the GitHub repository.
12. Your friends at this point should run gitsetup.sh and they'll be able to pull the server files. At this point, you or any of your friends can launch the game and will have the server available on the list.
13. Once you guys are done playing, the person who hosted the server should run gitpush.sh.

It will now be a cycle of running gitpull.sh before running the server if you were not the last person who ran it and running gitPush.sh after you exit the game if you were the last one to run it.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change. Feel free to make changes that you think would make this a more seamless, smooth process.
