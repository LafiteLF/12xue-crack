.class public Lcom/apicloud/a/g/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/g/b/a$a;,
        Lcom/apicloud/a/g/b/a$b;,
        Lcom/apicloud/a/g/b/a$c;
    }
.end annotation


# static fields
.field private static final a:[Lcom/apicloud/a/g/b/a$b;

.field private static final b:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Lcom/apicloud/a/g/b/a$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/apicloud/a/g/b/a$b;

    new-instance v1, Lcom/apicloud/a/g/b/a$b;

    const/4 v2, 0x0

    const-string v3, "active"

    const v4, 0x10100a7

    const v5, 0x7f040017

    invoke-direct {v1, v3, v4, v5, v2}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V

    const/4 v3, 0x0

    aput-object v1, v0, v3

    new-instance v1, Lcom/apicloud/a/g/b/a$b;

    const-string v4, "focus"

    const v5, 0x101009c

    const v6, 0x7f040018

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V

    const/4 v4, 0x1

    aput-object v1, v0, v4

    new-instance v1, Lcom/apicloud/a/g/b/a$b;

    const-string v4, "checked"

    const v5, 0x10100a0

    const v6, 0x7f040019

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V

    const/4 v4, 0x2

    aput-object v1, v0, v4

    new-instance v1, Lcom/apicloud/a/g/b/a$b;

    const-string v4, "disabled"

    const v5, -0x101009e

    const v6, 0x7f040020

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V

    const/4 v4, 0x3

    aput-object v1, v0, v4

    new-instance v1, Lcom/apicloud/a/g/b/a$b;

    const-string v4, "enabled"

    const v5, 0x101009e

    const v6, 0x7f040021

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V

    const/4 v4, 0x4

    aput-object v1, v0, v4

    new-instance v1, Lcom/apicloud/a/g/b/a$b;

    const-string v4, "before"

    const v5, 0x10100a4

    const v6, 0x7f040022

    invoke-direct {v1, v4, v5, v6, v2}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/apicloud/a/g/b/a;->a:[Lcom/apicloud/a/g/b/a$b;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/b/a;->b:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/apicloud/a/g/b/a;->c:Ljava/util/Hashtable;

    sget-object v0, Lcom/apicloud/a/g/b/a;->a:[Lcom/apicloud/a/g/b/a$b;

    array-length v1, v0

    :goto_0
    if-lt v3, v1, :cond_0

    return-void

    :cond_0
    aget-object v2, v0, v3

    sget-object v4, Lcom/apicloud/a/g/b/a;->b:Ljava/util/Hashtable;

    iget-object v5, v2, Lcom/apicloud/a/g/b/a$b;->a:Ljava/lang/String;

    iget v6, v2, Lcom/apicloud/a/g/b/a$b;->b:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/apicloud/a/g/b/a;->c:Ljava/util/Hashtable;

    iget v5, v2, Lcom/apicloud/a/g/b/a$b;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/apicloud/a/g/b/a$a;)V
    .locals 4

    sget-object v0, Lcom/apicloud/a/g/b/a;->a:[Lcom/apicloud/a/g/b/a$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    iget v3, v3, Lcom/apicloud/a/g/b/a$b;->b:I

    invoke-interface {p0, v3}, Lcom/apicloud/a/g/b/a$a;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a(Lcom/apicloud/a/g/b/a$c;)V
    .locals 4

    sget-object v0, Lcom/apicloud/a/g/b/a;->a:[Lcom/apicloud/a/g/b/a$b;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    return-void

    :cond_0
    aget-object v3, v0, v2

    invoke-interface {p0, v3}, Lcom/apicloud/a/g/b/a$c;->a(Lcom/apicloud/a/g/b/a$b;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
