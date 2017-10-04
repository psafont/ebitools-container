# How to use

1. Clone this repository
2. Build the image with `docker build -t image_name .`
3. Run the container with `docker run image_name ncbiblast_lwp.pl --email docker@ebi.ac.uk --stype protein --database uniprotkb_swissprot --program blastp sp:wap_rat`
4. Alternatively, to save results it can be run as `docker run --rm -w /results -v /path/local/destination:/results image_name ncbiblast_lwp.pl --email docker@ebi.ac.uk --stype protein --database uniprotkb_swissprot --program blastp sp:wap_rat`

# How to update clients

1. Add the jdispatcher clients' repo as a remote: `git remote add -f -t master --no-tags clients git@github.com:ebi-wp/webservice-clients.git`
2. Load the remote repo's master branch: `git checkout clients/master`
3. Remove everything from the branch except the folder with perl clients: `git subtree split -P perl/lwp -b perl_clients`
4. Go back to master branch: `git checkout master`
5. Insert the modified branch into master: `git subtree add --squash -P clients perl_clients`
6. Clean up the branch: `git branch -D perl_clients`
