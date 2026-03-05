.class public Lcom/deepe/c/c/r$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/r;

.field private b:Lcom/deepe/c/c/m;

.field private final c:Lcom/deepe/c/c/r$d;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/deepe/c/c/r;Lcom/deepe/c/c/m;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/c/r$d;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r$b;->a:Lcom/deepe/c/c/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepe/c/c/r$b;->b:Lcom/deepe/c/c/m;

    iput-object p3, p0, Lcom/deepe/c/c/r$b;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepe/c/c/r$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepe/c/c/r$b;->c:Lcom/deepe/c/c/r$d;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/r$b;)Lcom/deepe/c/c/r$d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/r$b;->c:Lcom/deepe/c/c/r$d;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/r$b;Lcom/deepe/c/c/m;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/r$b;->b:Lcom/deepe/c/c/m;

    return-void
.end method


# virtual methods
.method public a()Lcom/deepe/c/c/m;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/r$b;->b:Lcom/deepe/c/c/m;

    return-object v0
.end method
