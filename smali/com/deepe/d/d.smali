.class final Lcom/deepe/d/d;
.super Lcom/deepe/d/c;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/d/c;-><init>()V

    return-void
.end method


# virtual methods
.method a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2, p3}, Lcom/yonyou/mipm/sdk/LogCat;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p1}, Lcom/yonyou/mipm/sdk/MIPM;->init(Landroid/content/Context;)V

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p1, p2}, Lcom/yonyou/mipm/sdk/MIPM;->openUI(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    new-instance p2, Lcom/deepe/d/d$1;

    invoke-direct {p2, p0, p1}, Lcom/deepe/d/d$1;-><init>(Lcom/deepe/d/d;Landroid/content/Context;)V

    invoke-static {p2}, Lcom/yonyou/mipm/sdk/MIPM;->setCloseListener(Lcom/yonyou/mipm/sdk/CloseListener;)V

    :cond_0
    return-void
.end method

.method a(Lcom/deepe/sdk/PerformanceContext;)V
    .locals 0

    invoke-static {p1}, Lcom/yonyou/mipm/sdk/LogCat;->onPerformanceInfo(Lcom/deepe/sdk/PerformanceContext;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/yonyou/mipm/sdk/entitys/WebErrInfo;

    invoke-direct {v0, p2}, Lcom/yonyou/mipm/sdk/entitys/WebErrInfo;-><init>(Ljava/lang/String;)V

    iput p3, v0, Lcom/yonyou/mipm/sdk/entitys/WebErrInfo;->statusCode:I

    iput-object p4, v0, Lcom/yonyou/mipm/sdk/entitys/WebErrInfo;->reason:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yonyou/mipm/sdk/entitys/WebErrInfo;->setSourceId(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yonyou/mipm/sdk/LogCat;->printWebInfo(Lcom/yonyou/mipm/sdk/entitys/WebInfo;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/yonyou/mipm/sdk/entitys/JSInfo;

    invoke-direct {v0, p3}, Lcom/yonyou/mipm/sdk/entitys/JSInfo;-><init>(I)V

    iput-object p4, v0, Lcom/yonyou/mipm/sdk/entitys/JSInfo;->content:Ljava/lang/String;

    iput p5, v0, Lcom/yonyou/mipm/sdk/entitys/JSInfo;->lineNumber:I

    iput-object p1, v0, Lcom/yonyou/mipm/sdk/entitys/JSInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yonyou/mipm/sdk/entitys/JSInfo;->setSourceId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/yonyou/mipm/sdk/entitys/JSInfo;->setTag(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yonyou/mipm/sdk/LogCat;->printJSInfo(Lcom/yonyou/mipm/sdk/entitys/JSInfo;)V

    return-void
.end method

.method a(Ljava/lang/String;Ljava/lang/String;ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/yonyou/mipm/sdk/entitys/HttpInfo;

    invoke-direct {v0, p4}, Lcom/yonyou/mipm/sdk/entitys/HttpInfo;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, p3}, Lcom/yonyou/mipm/sdk/entitys/HttpInfo;->setLevel(I)V

    invoke-virtual {v0, p2}, Lcom/yonyou/mipm/sdk/entitys/HttpInfo;->setTag(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/yonyou/mipm/sdk/entitys/HttpInfo;->setSourceId(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yonyou/mipm/sdk/LogCat;->printHttpInfo(Lcom/yonyou/mipm/sdk/entitys/HttpInfo;)V

    return-void
.end method

.method a()Z
    .locals 1

    invoke-static {}, Lcom/yonyou/mipm/sdk/MIPM;->isPerformanceEnable()Z

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1

    new-instance v0, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;

    invoke-direct {v0, p3}, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;-><init>(I)V

    iput-object p4, v0, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;->content:Ljava/lang/String;

    iput p5, v0, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;->lineNumber:I

    iput-object p1, v0, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;->url:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;->setSourceId(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/yonyou/mipm/sdk/entitys/JSBInfo;->setTag(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yonyou/mipm/sdk/LogCat;->printJSBInfo(Lcom/yonyou/mipm/sdk/entitys/JSBInfo;)V

    return-void
.end method
