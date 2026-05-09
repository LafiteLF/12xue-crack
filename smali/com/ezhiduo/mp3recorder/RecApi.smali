.class public Lcom/ezhiduo/mp3recorder/RecApi;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "RecApi.java"


# instance fields
.field fsUrl:Ljava/lang/String;

.field private handleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field mRecMicToMp3:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

.field mp3Url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/ezhiduo/mp3recorder/RecApi;->handleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method

.method private initUrl()V
    .locals 3

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fs://mp3recorder/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ezhiduo/mp3recorder/RecApi;->fsUrl:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/io/File;

    const-string v1, "fs://mp3recorder"

    invoke-virtual {p0, v1}, Lcom/ezhiduo/mp3recorder/RecApi;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/ezhiduo/mp3recorder/RecApi;->fsUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/ezhiduo/mp3recorder/RecApi;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ezhiduo/mp3recorder/RecApi;->mp3Url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public jsmethod_start(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    const-string v0, "dbSpace"

    .line 48
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 50
    iput-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->handleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 51
    invoke-direct {p0}, Lcom/ezhiduo/mp3recorder/RecApi;->initUrl()V

    .line 52
    new-instance p1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->mp3Url:Ljava/lang/String;

    const v2, 0xac44

    invoke-direct {p1, v1, v2}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->mRecMicToMp3:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    .line 53
    invoke-virtual {p1, v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->setSPACE(I)V

    .line 54
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->mRecMicToMp3:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    new-instance v0, Lcom/ezhiduo/mp3recorder/RecApi$1;

    invoke-direct {v0, p0}, Lcom/ezhiduo/mp3recorder/RecApi$1;-><init>(Lcom/ezhiduo/mp3recorder/RecApi;)V

    invoke-virtual {p1, v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->setHandle(Landroid/os/Handler;)V

    .line 139
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->mRecMicToMp3:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-virtual {p1}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->start()V

    return-void
.end method

.method public jsmethod_stop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->handleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 144
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi;->mRecMicToMp3:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-virtual {p1}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->stop()V

    return-void
.end method
