.class public Lcom/deepe/f/b/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/f/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field final synthetic c:Lcom/deepe/f/b/a;


# direct methods
.method public constructor <init>(Lcom/deepe/f/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/f/b/a$b;->c:Lcom/deepe/f/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
