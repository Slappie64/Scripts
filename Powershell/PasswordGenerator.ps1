param(
    [string]$length = 2
)

$TextInfo = (Get-Culture).TextInfo
$words = @(
    "friendly","surface","special","pencil","mass","bark","oil","stand","question","heart"
    "bite","hope","rate","tonight","question","congress","take","person","improve","give"
    "gulf","count","quite","birds","each","person","quarter","understanding","collect","felt"
    "strip","aboard","problem","metal","highest","jump","see","silk","eleven","slide"
    "mission","practice","other","blew","yard","next","will","or","eventually","impossible"
    "took","find","strip","line","negative","happily","point","stone","space","face"
    "ill","weak","directly","curve","mysterious","electricity","blind","ruler","stepped","waste"
    "hurt","curve","function","torn","doing","limited","distance","won","temperature","declared"
    "steady","harbor","remain","price","completely","plain","fox","lower","suddenly","exact"
    "unless","fifth","torn","day","rabbit","track","alone","select","coast","accept"
    "met","choose","shaking","way","center","doctor","longer","quickly","vast","yes",
    "shall","in","map","record","label","nervous","ability","type","shade","similar"
    "energy","became","greatly","fastened","forty","mostly","rapidly","hole","fear","nature"
    "instrument","terrible","somebody","bee","construction","rather","thin","correct","adjective","stared"
    "tip","bridge","beat","put","image","move","grandmother","sand","wrote","castle"
    "beside","problem","rear","managed","canal","duty","happy","nearest","feature","low"
    "doing","excellent","pencil","kids","show","pain","not","friendly","throat","accept"
    "sold","spin","properly","point","proud","coast","detail","equally","factor","home"
    "leave","turn","being","mark","aware","push","customs","arm","knowledge","ocean"
    "vast","pour","interest","got","sort","brown","power","equipment","badly","milk"
    "night","bean","very","writer","difference","old","seat","browserling","grown","respect"
    "rabbit","steam","funny","put","broad","greater","shorter","direct","lay","deer"
)

$specialChars = @("!","@","#","$","%","^","&","*","(",")","+","=","{","}","[","]","<",">","?","/")
$numbers = @("0","1","2","3","4","5","6","7","8","9")


$Password = -Join $TextInfo.ToTitleCase(((1..$length) | ForEach-Object {$words | Get-Random} | Join-String -Separator ($specialChars | Get-Random)))
$Password += (($specialChars | Get-Random) + ($numbers | Get-Random) + ($numbers | Get-Random))

Write-Host "New Password: $Password"