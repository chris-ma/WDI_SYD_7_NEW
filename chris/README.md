###WDI-HW Submission Steps

---

####Instructions in words:
- Open up a terminal window
- Move to your local WDI_SYD_7_Work folder
- Checkout your development branch
- Pull from the upstream master
- Do your work
- Stage all your changed
- Commit your changes
- Push your development branch to origin
- Checkout your master branch
- Pull from origin into your development branch
  - In this step, you are merging your development branch into your master branch
- Push your master to your origin
- Make a pull request with a title starting with `hw_w01_d01_submission`

---

####Instructions in code:
```bash
cd ~/ga_wdi/WDI_NYC_7_Work
git checkout development
git pull upstream master
```

#####You may need to `save` and `close` a merge/commit message
#####At this point, you do the work in your OWN folder

#####Once you have compeleted your work:
```bash
git add .
git commit -m "Completed HW"
git push origin development
git checkout master
git pull origin development
git push origin master
```

######Make a pull request
- Go to your own github account and make your pull request
- You MUST title your pull request starting with `hw_w01_d01_submission`
  - For example: "hw_w01_d01_submission Complete Calculator HW"
- You MUST inlucude comments on your successes and challenges

## Setup

1. Make your local GA folder: `mkdir ga_wdi`
2. Create your projects folder: `cd ga_wdi` then `mkdir projects`
3. Clone the class repo: `git clone git@github.com:ga-students/WDI_SYD_7.git`
4. Fork this repo on GitHub: [https://github.com/ga-students/WDI_SYD_7_Work](https://github.com/ga-students/WDI_SYD_7_Work)
5. Clone your fork of the repo into the `ga_wdi` folder you made
