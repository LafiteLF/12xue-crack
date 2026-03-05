.class public final Lcom/uzmap/pkg/uzcore/l;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "d2lkZ2V0L3Jlcy9rZXkueG1s"

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->a:Ljava/lang/String;

    const-string v0, "dXptYXAvbW9kdWxlLmpzb24="

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->b:Ljava/lang/String;

    const-string v0, "ZGlzdC9hcGkubWluLmpzLnNlYw=="

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->c:Ljava/lang/String;

    const-string v0, "ZGlzdC9hY2NlLm1pbi5qcw=="

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->d:Ljava/lang/String;

    const-string v0, "ZGlzdC9iYXNlL2FwaWJhc2UuanM="

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->e:Ljava/lang/String;

    const-string v0, "ZGlzdC93Yi5odG1s"

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->f:Ljava/lang/String;

    const-string v0, "ZmlsZTovLy9hbmRyb2lkX2Fzc2V0L3Jlc19taXBtL3Jlcy92aXRhbHNkby5taW4uanM="

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->g:Ljava/lang/String;

    const-string v0, "ZmlsZTovLy9hbmRyb2lkX2Fzc2V0L3Jlc19taXBtL3Jlcy92aXRhbHMubWluLmpz"

    invoke-static {v0}, Lcom/deepe/c/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/uzmap/pkg/uzcore/l;->h:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e/c;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/e/c;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/e/c;-><init>()V

    :try_start_0
    sget-object v1, Lcom/uzmap/pkg/uzcore/l;->a:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/uzmap/pkg/uzcore/l;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/e/c;->a([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CodesHelper.loadSecKeystore: key.xml exception!"

    invoke-static {p0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/uzmap/pkg/uzcore/l;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/l;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/g/e;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/l;->b(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public static b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/uzmodule/e;
    .locals 2

    invoke-static {}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->a()Lcom/uzmap/pkg/uzcore/uzmodule/e;

    move-result-object v0

    :try_start_0
    sget-object v1, Lcom/uzmap/pkg/uzcore/l;->b:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/uzmap/pkg/uzcore/l;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzcore/uzmodule/e;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CodesHelper.loadModuleJSON: init modules exception!"

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/uzmap/pkg/uzcore/l;->g:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/k;->a(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/l;->c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {p0}, Lcom/deepe/c/i/h;->b(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, p0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    move-object p0, v0

    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    invoke-static {p0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 p0, 0x0

    new-array v0, p0, [B

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    throw p1
.end method

.method private static c(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "CodesHelper.openAssets: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/d/a;->h(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static c()[B
    .locals 3

    sget-object v0, Lcom/uzmap/pkg/uzcore/l;->h:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/i/k;->b(Ljava/lang/String;ZZ)[B

    move-result-object v0

    return-object v0
.end method
