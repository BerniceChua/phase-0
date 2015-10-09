Using your command line, create a new file called tracking-changes-reflection.md in the week-1 directory.

1. Open the file in sublime. Copy the following questions in it and answer them.
  - How does tracking and adding changes make developers' lives easier?

      Adding and tracking changes makes developers' lives easier because everyone else who is also working on the project will be able to see what else has been done and at what time and why it was done.  Also, later if something goes wrong, it is easy to revert to a known good saved state, and it's easy to find where things went wrong.
  - What is a commit?

     A commit is a saved state, where you can go back and look at the state of the files at that point.
  - What are the best practices for commit messages?
     1. The first line of the commit message should be a short description (50 characters is the soft limit), and should skip the full stop
     2. The body should provide a meaningful commit message, which:
        - uses the imperative, present tense, example: “edit” instead of “edited” or “edits”.
        - includes motivation for the change, and contrasts its implementation with previous behaviour.
  - What does the HEAD^ argument mean?

      `HEAD` by itself means the commit that you are currently on.  With the "^", when written as `HEAD^` it means the most recent commit.
  - What are the 3 stages of a git change and how do you move a file from one stage to the other?

     1. Adding or editing files in your working directory.  To check the status of these changes, type `git status`, and it should say "changes not staged for commit"
     2. To record the changes to the commit, type `git add [can be . or can be the filename(s)]`. This time, when typing `git status`, it should say "changes to be committed"
     3. Committing to this saved state, done by typing `git commit -m "imperative message here"`. Now when typing `git status`, it should say "On branch [branch-name-here]: nothing to commit, working directory clean".
  - Write a handy cheatsheet of the commands you need to commit your changes?
    > `git pull origin master` (to make sure that you have the latest and greatest version of the project)

    > `git checkout -b [name_of_branch]` (to make sure that when you make a change gone awry, you can always revert to the original)

    > `git add [can be . or can be the filename(s)]` (prepares the changes to be committed)

    > `git commit -m "imperative message here"` (saved state, prepares the changes to be pushed to the remote repository)

    > `git push origin [your-branch-name-here]` (pushes the changes to the remote repository)

    > `git checkout master` (moves your view into the master branch)

    > either `git pull origin master`, or `git fetch origin master` then `git merge origin/master` (merges all the changes)
  - What is a pull request and how do you create and merge one?

     A pull request is a way to tell others working on the same project about the changes that you have pushed to a repository like GitHub.  It makes collaborating on the project easier because others who are working on the project and can see the pull request too, will be able to review the changes and discuss it and make necessary modifications or give feedback before the changes are merged to the master version of the project.
  - Why are pull requests preferred when working with teams?

      Pull requests are preferred when working with teams because it makes collaborating on a team project easier.  This works because others who are working on the project with you, and can see the pull request also, can help you by reviewing the changes, discussing them, giving feedback, etc. to the changes before they get merged to the master version of the project.  
2. Go through the git workflow you just established and add your reflection to the file. (If you are creating a video reflection, add the video link to your reflection file.)
3. Add your changes, commit them, and make a pull request to your repository.
4. Merge the pull request into your master branch

   Done! ^_^

Submit the link to your reflection file. It should be located at:

- https://github.com/BerniceChua/phase-0/blob/master/week-1/reflections.md
- https://github.com/BerniceChua/phase-0/blob/master/week-1/tracking-changes-reflection.md