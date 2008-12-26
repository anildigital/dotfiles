export PATH=/sw/bin:/sw/sbin:/opt/local/bin:/usr/local/bin:/opt/local/sbin:/usr/local/mysql/bin:/Users/anilwadghule/installs/airsdk/bin:/Users/anilwadghule/code/jruby-1.1/bin:/Applications/Shoes.app/Contents/MacOS:${PATH}
export PERL5LIB="/usr/local/svn/perl/darwin-thread-multi-2level"
export APXS2=/usr/local/apache2
export PATH=/usr/local/apache2/bin:$PATH
export EC2_HOME=/Users/anilwadghule/ec2-api-tools-1.3-19403
export PATH=$PATH:$EC2_HOME/bin
export EC2_PRIVATE_KEY=~/.ssh/ec2/pk-PMN35B5MXIUTGJ6IWACCPS2B5Q4NKBCC.pem
export EC2_CERT=~/.ssh/ec2/cert-PMN35B5MXIUTGJ6IWACCPS2B5Q4NKBCC.pub
export JAVA_HOME=/System/Library/Frameworks/JavaVM.framework/Home

export AWS_ACCESS_KEY_ID=0TPVQTGBR8ATZXNQGCR2
export AWS_SECRET_ACCESS_KEY=flOrJM/Mbd8UCYZgfF4LhHQjN1oOzMAFGa4x+1S0

source ~/.git-completion.sh

if [ -f ~/.aliases ]; then
. ~/.aliases
fi

function pless {
  pygmentize $1 | less -r
}

# assuming ~/.git-completion is where your complete script lives
source ~/.git-completion.sh
complete -o default -o nospace -F _git gh

