.class public Lcom/deepe/e/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/deepe/e/e;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/l;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/deepe/e/e;->a:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/deepe/e/e;->a:Ljava/lang/String;

    return-object v0
.end method
