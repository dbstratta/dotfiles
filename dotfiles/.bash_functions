# Get current branch in Git repo
function parse_git_branch() {
	BRANCH=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/')
	if [ "${BRANCH}" == "" ]; then
		echo ""
	else
		echo " ${BRANCH}"
	fi
}

# Do ls after every cd
function c {
  builtin cd "$@" && ls
}
