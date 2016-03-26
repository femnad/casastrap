Why?
====

Because installing and setting everyting by hand is insufferable. I mean, I can't remember the time the compilation of some packages failed with the same errors and I had to lookup which package contained the necessary header files.


How?
====

Edit `paths.yaml` to your heart's content and run the desired playbooks. For installing the fish-shell from git:

    ansible-playbook install-fish.yaml

