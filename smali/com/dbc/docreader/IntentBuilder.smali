.class public Lcom/dbc/docreader/IntentBuilder;
.super Ljava/lang/Object;
.source "IntentBuilder.java"


# static fields
.field private static final extensionToMimeTypeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dbc/docreader/IntentBuilder;->extensionToMimeTypeMap:Ljava/util/Map;

    const-string v0, "application/msword"

    const-string v1, "doc"

    .line 39
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "dot"

    .line 40
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-excel"

    const-string v1, "xls"

    .line 41
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "xlt"

    .line 42
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"

    const-string v1, "xlsx"

    .line 43
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.spreadsheetml.template"

    const-string v1, "xltx"

    .line 44
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.document"

    const-string v1, "docx"

    .line 45
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.openxmlformats-officedocument.wordprocessingml.template"

    const-string v1, "dotx"

    .line 46
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/pdf"

    const-string v1, "pdf"

    .line 47
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "application/vnd.ms-powerpoint"

    const-string v1, "ppt"

    .line 48
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pptx"

    .line 49
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "pps"

    .line 50
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "text/*"

    const-string v1, "txt"

    .line 53
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/jpeg"

    const-string v1, "jpg"

    .line 54
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "image/png"

    const-string v1, "png"

    .line 55
    invoke-static {v0, v1}, Lcom/dbc/docreader/IntentBuilder;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 86
    sget-object v0, Lcom/dbc/docreader/IntentBuilder;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/16 v0, 0x2e

    .line 90
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const-string v1, "*/*"

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 93
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 95
    sget-object v0, Lcom/dbc/docreader/IntentBuilder;->extensionToMimeTypeMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "mtz"

    .line 96
    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string v0, "application/miui-mtz"

    :cond_1
    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_2
    return-object v1
.end method

.method public static viewFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    invoke-static {p1}, Lcom/dbc/docreader/IntentBuilder;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "*/*"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    .line 65
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    .line 66
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 70
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/uzmap/pkg/uzkit/UZUtility;->getUriForFile(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 72
    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    .line 77
    :goto_0
    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 81
    :cond_1
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    throw p0
.end method
