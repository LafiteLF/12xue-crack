.class public Lcom/apicloud/a/g/b/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/g/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/g/b/a$b;->a:Ljava/lang/String;

    iput p2, p0, Lcom/apicloud/a/g/b/a$b;->b:I

    iput p3, p0, Lcom/apicloud/a/g/b/a$b;->c:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcom/apicloud/a/g/b/a$b;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/g/b/a$b;-><init>(Ljava/lang/String;II)V

    return-void
.end method
