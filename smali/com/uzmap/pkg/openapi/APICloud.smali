.class public Lcom/uzmap/pkg/openapi/APICloud;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/uzmap/pkg/openapi/APICloud;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/uzmap/pkg/uzcore/d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/APICloud;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/APICloud;->a:Landroid/content/Context;

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/openapi/APICloud;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/d;->a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/d;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/APICloud;->b:Lcom/uzmap/pkg/uzcore/d;

    return-void
.end method

.method public static debugEnable()Z
    .locals 1

    invoke-static {}, Lcom/deepe/sdk/DeepSetting;->debugEnable()Z

    move-result v0

    return v0
.end method

.method public static get()Lcom/uzmap/pkg/openapi/APICloud;
    .locals 2

    sget-object v0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "You must call APICloud.initialize at first!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static initialize(Landroid/content/Context;)Lcom/uzmap/pkg/openapi/APICloud;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/openapi/APICloud;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/openapi/APICloud;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    :cond_0
    sget-object v0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/openapi/APICloud;->onCreate(Landroid/content/Context;)V

    sget-object p0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    return-object p0
.end method

.method public static final initializeOnAttachBaseContext(Landroid/content/Context;)Lcom/uzmap/pkg/openapi/APICloud;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/openapi/APICloud;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/openapi/APICloud;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    iget-object v0, v0, Lcom/uzmap/pkg/openapi/APICloud;->b:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/d;->c(Landroid/content/Context;)V

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/openapi/APICloud;->c:Lcom/uzmap/pkg/openapi/APICloud;

    return-object p0
.end method

.method public static setDebug(Z)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/sdk/DeepSetting;->setDebug(Z)V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/APICloud;->a:Landroid/content/Context;

    return-object v0
.end method

.method public final onCreate(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Application;

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/APICloud;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/APICloud;->b:Lcom/uzmap/pkg/uzcore/d;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/d;->b(Landroid/content/Context;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method
