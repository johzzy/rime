# brew install --cask squirrel

Root=$(cd $(dirname $0); pwd)
Source=${Root}/配置文件
Clover=${Root}/clover
Target=$(cd ~/Library/Rime; pwd)

function print {
    echo ${Root} ${Target}
    ls ${Target}
}

function deploy {
    cp -r ${Clover}/* ${Target}
    cp -r ${Source}/* ${Target}
    /Library/Input\ Methods/Squirrel.app/Contents/MacOS/Squirrel --reload
}

deploy
print
