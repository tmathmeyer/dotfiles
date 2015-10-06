#brights
grn='\e[38;5;46m'
red='\e[38;5;196m'
blu='\e[38;5;21m'
wht='\e[38;5;15m'
cyn='\e[38;5;14m'
prp='\e[38;5;200m'
ylw='\e[38;5;11m'

b='\e[1m'
d='\e[2m'

function c {
	RESULT="\[${!1}${!2}${!3}\]"
	echo $RESULT
}

function r {
	echo '\[\e[0m\]'
}

