.class Lcom/deepe/c/c/j$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/j;

.field private b:Lcom/deepe/c/c/g;

.field private final c:Lcom/deepe/c/c/j$c;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/j;Lcom/deepe/c/c/g;Ljava/lang/String;Ljava/lang/String;Lcom/deepe/c/c/j$c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$b;->a:Lcom/deepe/c/c/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/deepe/c/c/j$b;->b:Lcom/deepe/c/c/g;

    iput-object p3, p0, Lcom/deepe/c/c/j$b;->e:Ljava/lang/String;

    iput-object p4, p0, Lcom/deepe/c/c/j$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepe/c/c/j$b;->c:Lcom/deepe/c/c/j$c;

    return-void
.end method

.method static synthetic a(Lcom/deepe/c/c/j$b;)Lcom/deepe/c/c/j$c;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/c/j$b;->c:Lcom/deepe/c/c/j$c;

    return-object p0
.end method

.method static synthetic a(Lcom/deepe/c/c/j$b;Lcom/deepe/c/c/g;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/j$b;->b:Lcom/deepe/c/c/g;

    return-void
.end method


# virtual methods
.method public a()Lcom/deepe/c/c/g;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/j$b;->b:Lcom/deepe/c/c/g;

    return-object v0
.end method
